Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FFC248897
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749739195; cv=none; b=uBNzgvocMX55XvRFMYkDfzAUNxVvn7DFhMSd8IFS72p6nLB/ZTU3kIUR8iqHypo0Q63Qp0mdOiWk4GKhhLnscg5z6425AZ/KuWgAls0vqyDIK0/ia2PVfXDQqGGsvf5Rg1BI8XzpE9OqeDmXO7+ADR1hdBHNLkxyhbXWumAeEXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749739195; c=relaxed/simple;
	bh=kZBsVJMEenBeuniLDSP81CeZHlWwiFv8UsyPUwMIp30=;
	h=To:Subject:From:Message-Id:Date; b=umFechng2hoFMpXe22Dv2z+9NaSSc+eOIniduyNDdqXnfQDxEDnWlglXs4iEsPV1cqK4MY1sE+Jrehh5Rs1wTmz6E1smlrg4LJGUzXmVtX70oZrtg7MKSKWstRv4260jJAvVhL8R1t/fRbStKB1v4ShRus69mx7J6B2+OVFzXRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pim0akaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pim0akaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6EEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749739193;
	bh=kZBsVJMEenBeuniLDSP81CeZHlWwiFv8UsyPUwMIp30=;
	h=To:Subject:From:Date:From;
	b=pim0akaFXgmZYxgJK8qN1/j7OC3I7sNCeDJ/Gx784nMkPlO0Xi9Cjy/UXeiZjbi8I
	 uAs6AWxAvK0OFHCKsPOCiCWN7NL7nuCrTjGp7IWnTYbdDiVHhrtJxOwDRl8o6JTd8n
	 H5WZi4je98YsQsO4GOtA6kT3A2OYQuMael4w2rvpv0G3DjpZIKKkNZzObCvvPgt2tB
	 jK5EKql8CbvnVm7/HVJnReHucl5DkgIAS/lbgbItRlbp0jzEbjOVvlr/AWOvqp/oVG
	 jqXNXSPR+Dop1REGwKEzuitfn41rU8tZfhhK474MbfM3fV1McKFKQiaxbTsPGIde68
	 VRmSuNI72yqXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973919357.16396.17504523335036335360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1647c683170dd99e6152c030cf492f48a4166b22040e767b9bcfc62b40bebe86
Date: Thu, 12 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749739193
