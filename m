Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D903469F6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783670914; cv=none; b=cWbQuW3zF8eewfHmexB1zsAcRwgZb2P4jFvPfSy+um44itcDOlEz155tdblQ6xzwRnjv8+ocu/2GPW+RfiXug3heO9Mi1KnyLjFuZyvBc57QW9dJ4BXp/99kpcp3kcICCVt/gaJ6ZOQep7L+mzufEPjlpYSiK+QEALwxvywxWyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783670914; c=relaxed/simple;
	bh=mtW04y5FanrD7AjV3ki5mfVbHeMrTkFItludvFPDaMg=;
	h=To:Subject:From:Message-Id:Date; b=IgMDzaVigH6tx4HS8dhkMRSkiztdk3E74GvkFwF+iR9AhpWP3OzQvMjBT72PBNxVEq8/OFyQHOGRqa4xSoHXHL4Rp7TthbjIioKfNMzX6//mlqQA4t/g/BR2q49tYSeSK3fIOvgqmLFquOUIpaNVxy1DCy3AUwYzhgALwrQs30o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkmTxs91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkmTxs91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1DDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783670913;
	bh=mtW04y5FanrD7AjV3ki5mfVbHeMrTkFItludvFPDaMg=;
	h=To:Subject:From:Date:From;
	b=dkmTxs91JXgKkBhq09wdk7yXmmrWvN4eAe8k2Te3v2L98Ulj4zBSr4EyEVbv22qcS
	 Am6o0wODs/gxsnuel/GopT2CipSPZbomCNnRIlgwl8QFe33Lg30LtJaGRsJ8d7iEB8
	 Yh5HwMc4qGRk60iy7gHV0V/+sZW0aW8RQkIWPuKUpHLzPX8+eM81dk38VcEQBvR7xv
	 +xZPJNYrG00zzjn06QjcHH6f2JzS0SHmeWK+GpVhuupYgmruYmChryWlHG2sHPFqnT
	 P9cXh8S6Kb2eznKTFnNrF1P7O4o1xmYFWJj3fINlWLyAZumf0wQdV34siuVgJJ9Rpx
	 j3QiQKLe13EJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7EC44506
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367091368.6263.2135389237307166148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f7894d90047df7f59842e9ba52cd9bf9ffea7090ae88e72240caa254c7276e
Date: Fri, 10 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783670913
