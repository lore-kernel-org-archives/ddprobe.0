Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F863D300A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780501474; cv=none; b=XbUg4V9FmwDE7VrNppSiGc/4Su+rAZRdSZtT3XcLH0TRCE0BDgw9+OCAop87iOq/5FhVbhOWkI80822vMpX6HJXwOM9YnRFhKqeALQzj4GDj0nQwaPaEVFV/996L3ClpZbWUT3iKDSjPkOHZx4UsgwZC65IS+nn3/BhgqHneAbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780501474; c=relaxed/simple;
	bh=FVyLrlxpzF1OpDAVtLJAGHoCBC8it4Wx/ryfl7WY6HA=;
	h=To:Subject:From:Message-Id:Date; b=fqr/ibNo7hdjYbPzd3r/lvR/HgNgRLQCf1lq+BUnqJrlt7DiQt1NlLN2Z2zVrJb9pCdenjLp700Rc9kcFz4H1nwMf5qPrUo31yjKaSf9dvf5KAajPCWO8sIM0xFjOuVPEHqGzTKOs1LiKun/NBl4FJHBXF+y91DidYMbIyxEppM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FM0XPiKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM0XPiKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FBDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780501473;
	bh=FVyLrlxpzF1OpDAVtLJAGHoCBC8it4Wx/ryfl7WY6HA=;
	h=To:Subject:From:Date:From;
	b=FM0XPiKOWxnJONkMTnN/pPud2uX/5KvaPL4A3BxFJpQo74Gs+pIQMqF+wNnXNXM8D
	 8Hy+A2115FvOgD58uFIusf8d08srPC13vstHGZk8p/mkXiIZkZMHFvlLxAYti0otj1
	 3Je/6x1aIW4NIhgvP0uM0yOm/bTxDutY2WqmzXCxJu0WHV41ME9Kp6Pc3XxOofYqer
	 6JwdRFYdgL64LtO5U67X9Y7moLKVCl47XaLtdkpoC0Ma+85YBODvjnmJ6eRwgL5h+6
	 Ca9CH2G86YJVmvM9LhxG7gyggphYbFV63gJbvt9jHPhz/gDFG08ZeC47crbzWxjpsn
	 NGM5WGZ2P9PTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA97CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050147369.10117.10651254560728645659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a5dc22c970767e7b414b286795538a0c7698d939f7d86ffc58a6d918e77ff3
Date: Wed, 03 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780501473
