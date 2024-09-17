Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227575672
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726532754; cv=none; b=XDniciKNSHiYICi6ngoayTDF2DYrC+yWq4xALba2ZwGsWagaz34Cw9OnXFoGQLEesScX5/YUu/HCmuFCIDKO6lWkJ/gCUp9LVXNcl1oYjVI98k+t/vkNC9XVcluDfcKiepEXkXDg1Ks4R+0wddrCXWwjKv7RqLhabOH8hYOzc8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726532754; c=relaxed/simple;
	bh=0qkGT7E0Mur84TI9t6yZoUFwwCM5JdAX7nIIpipYZGc=;
	h=To:Subject:From:Message-Id:Date; b=icthz2ovXOlkw+JG/+3J6W16ZJxOL3642uAf9P7GGHpABR29hW7biEpwHyM4AAQtDsGBAQrPpbB59FWFQL6qBLv51P6Mgf7gCig3fGBCpEBtPezfbJXjhYHGDJGzZk5W47jRz613dV//gvK4Cch4oDphjYLQeWmAkOaQgI5k7p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmFWw2bC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmFWw2bC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF67C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726532753;
	bh=0qkGT7E0Mur84TI9t6yZoUFwwCM5JdAX7nIIpipYZGc=;
	h=To:Subject:From:Date:From;
	b=lmFWw2bCNIsp3RLKdtjEM64cSaT3zIUE7E411rXFAF4UriLtia5/c2Ex14YfoBIlm
	 m7wI4PLLaXCtZww2sRoxi3mmIhRUtj4RZzWbyyFdefMwEWNve1Oof+kPrHsknsbXpm
	 DHqF/SdYw+2b9e2TQnzgwfR4t0wZ3wqAK8Revrtdt7iDRYf/8leK6Lp1vuiJEk7Ec8
	 bNaAxpx6YHWjH69TPbeS1vvsDo3TubPP8qge1K8RP3CKu6hk5bEGCdXntELz+FHiAZ
	 3/wWaF/ye6PPv57sVu1a544Dc2L+E+DuLoY/BNWYdNIOzQ+qeS5vO6gXCPDCbFayw+
	 hh32i6ZqfhZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7FFC3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653275362.23838.6696095859250597277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7ffec1bbe93d1e9c08fd275d19e8215b495c0a71d29fad2ab25c8833bcad41
Date: Tue, 17 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726532753
