Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB4936D4EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764410574; cv=none; b=LzxfYlMnZ8mX7adrhyTfo+M0aBfgIEtvllR/t2adLAxpShhx+/k7YFiIO+OKt7gaW/rQ+p+zH5pEpQ7MJ0t2UGXYMLDqLWBjsJ2A0Fw3EHOZMZGlTUQwub85N1e4Wb4or3JkkGHOpcHCNER/5hULYHW0EPifu4szA+wOEOSTeis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764410574; c=relaxed/simple;
	bh=5ATOHv9/asu3MlpC1NcWSn2Hc2l6NqnCqDiSAeEHuuA=;
	h=To:Subject:From:Message-Id:Date; b=gP1bpIbTitgf92JKIz4dMHOKsM9uMYnNXIIp/VGP5HLvw+F5vx02Pwg0SlVCGuGRWDspl3ZCgfkNVhgvqecqUfg5ab0kVWHeFcGyb7y0O0zpWkz/bq35cLPa+j61ByYmzzGC4drzurKRDNtyWlyyiBh35V0OpaKTgUNOBvt9ko8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUoq+ZD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUoq+ZD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC50EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764410573;
	bh=5ATOHv9/asu3MlpC1NcWSn2Hc2l6NqnCqDiSAeEHuuA=;
	h=To:Subject:From:Date:From;
	b=JUoq+ZD35GdvNlbgctES5hY8Uix871wXG48lVDuYmyiinK+BO+TN112pFOrhecdCD
	 G4wFv7lbfuNSed5ZPrFl3fDx501z0kQAlHVif1JXXUqKnNqba79eLjvCXUltSLcMQO
	 egAZl9EC88rTrlzzc8wHkG5OvEFLDZ11BnzxbeCSixT7Il8JI12gfE2ne5mnth+hB2
	 BSH/Zq0gCFrzNhceAiEBDFYItNgD7o3zH+P4szLfhoywVrNng594jOIhUS6JIeesGR
	 dBQ/MSltfvBFVumxl0gVfy+5YYhnWqXG/PLDEGpV0HyQPe73VpSsQVPHrN/swhCZd+
	 XhfR1yYdMmUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A62CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441057359.23174.17435927588583784085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1de626de1f6a4598f341a56fe6faa18eb440f6222fd102a4febab6a96a43739
Date: Sat, 29 Nov 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764410573
