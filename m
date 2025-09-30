Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422AD28506B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759259394; cv=none; b=k4Wj5ato71h614lQTnJYP6HMd9msJ4sx0ofW6GFF0fTLaiBt0ICN5Bw7eUxurxHFGAFxGZplERfUj4xba+YGrVn6AFL/sAz2LO0+j9hiyFBtZLL6+OuenX7z8U7aJBeZ0fq3JQIG4a9Cv/xrX5+9Jdp3g8s5SCy5s+HKFP/kgD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759259394; c=relaxed/simple;
	bh=e4U6Y3LOCFOrVTHrm7l/x2sjMpnePNebm2C6a91N+fM=;
	h=To:Subject:From:Message-Id:Date; b=X3U0Zr7XkPIzDcPvpSoJUo/zD7DJuwzPDNvsZswgaO19A/eEXl02FUPxcumIcMZDCQRn0qlTV9Eryk1QTtVkoJUrTJVTJK1GBMYSCFizRl1oV67Gp8ir73z1R8cupMKm6YlxGS9I0bs9d0XgRyQpGIb3ujK8QODDyIDkBE/WBR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AedrGpvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AedrGpvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC87FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759259393;
	bh=e4U6Y3LOCFOrVTHrm7l/x2sjMpnePNebm2C6a91N+fM=;
	h=To:Subject:From:Date:From;
	b=AedrGpvhMskLlTcwALF0ZqrvPn+kiixJ9pNGCtJKhAXclJcxhOjlqvWNgyCqxgNVw
	 8UsEa+lj2OUA4G3aLTE22qKNj+utEQuYoWLX9hNBa341drF+iM8H5CWSfBf+1Wnbwi
	 9viGGPAoxG7N+zNAxisHXd2gmn38N8bwZOOR8K9NZgK3gbKHHJM68ELE0fP2jFabR9
	 t6xFYv1WyQHYBQS4KvPDhQcpv2kep1haS8JZzt7J8yKpVHEBmevzhWl3fmgGHslh3p
	 23cBnWOMjMzi9CnxcLtFSRy/F5La+3xKdqFJi7mOOHFdm3zzP7cS1pW2saNmd8tJOv
	 RUk1mwwzPgA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F74CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925939360.12539.355543843538877382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d451e57f0943c25b91de138a10e3df75fef413a8a643a6204e29235c9c2a6bd2
Date: Tue, 30 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759259393
