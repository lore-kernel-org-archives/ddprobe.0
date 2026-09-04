Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC04381EA1
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788489634; cv=none; b=WrsniJEAAL5IyKddyiIrSBIHykjiJuOV/Dvjk+RKYolrYjFQKvHkPUohtke8+odB7VVzCuchILVePwIochsdkQSOIicqFeL3z4H0UibNSyGIi9UumVHPU1HKpn8ZM+Y2ApSI496O+/WmyAD7zclSG4LsGS5QHAwHuY45rCYzbhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788489634; c=relaxed/simple;
	bh=pqOxdxpnx2VVvJybADVUX7iSi61mn+1xsqjdDmMKZOs=;
	h=To:Subject:From:Message-Id:Date; b=JeglLARu1IUpTB6du6M4VgRJuwFdnj2kqjooDJ5JqIcDN/vcUQZ9ZvCd+j0KjhwMjaxrykyxP3KdkXw6bwh8GIIRXpljt89nS/REonNmoJ/Lbg9MnqCuyBWnnksmQI00TNBQej/bLp3rLkE+J6IrBHtyJhSo8LROVT5483fwFvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH6i3gQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH6i3gQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DDBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788489633;
	bh=pqOxdxpnx2VVvJybADVUX7iSi61mn+1xsqjdDmMKZOs=;
	h=To:Subject:From:Date:From;
	b=QH6i3gQq//zPW2wiLbXtvu/8YYPHKpx93WGucZJGHBwZWTICkQextco/WEYrbWLQ5
	 3DeqxPlkvwdNX0MRNzqSzIMMxArJpMECIaW3bbRoDsaF731iCjLRwLQIdT4V32ziG+
	 F2YBEzDnEkUYOzoELxhFh2DmtIl9zXJlaqQsEILjU25/mn+cIjGGQMjRpL6bha8a3x
	 OaI/QJqUcis8sxR75giDgATJdKi+/2pAnpaJhmcbSQ5t5IvHQ3QomHRM5xW1ib+b2p
	 tJ/x/5zLgYIfbRMTNeXybsRKUhU0nBK+rzUmndYFARppYBwdHiqvb5KxkykKWMqubm
	 ySBSKLm5NrEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C34C624DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848963369.3789.7663335425060866999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bae4fd4e7aae531f016d3155dcff2761f55da14e08dba7de0f87e2e132605c
Date: Fri, 04 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788489633
