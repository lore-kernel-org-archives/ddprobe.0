Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73375227BB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789529434; cv=none; b=aHsy9rIMNI8+Y0VdFwH/sUfnQ2UFsvCNTVlJz5V7UaHSFSjn2S7slr2ROh0iYg5rcSUqMA0l+dALFGtn/gaJMCBIouAsfcewWSphL/YEin+DW72M2RHS3a2kELXQL5wUTjDNL+TifSzuwWMQOSTT3YWMfAJPHKfOjy4/Re1s4AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789529434; c=relaxed/simple;
	bh=H1JYBivVwmC5cklQZ9zeRAwTsE6Dsq+HhXYEVcUH4gM=;
	h=To:Subject:From:Message-Id:Date; b=I4lCWQFTpEJNb+dnhIRn3gEE1AtuRNkU/iIehnuG0uuA2AcUGrz/Vs4n+Zxtit46T2W6IqLjOC+hoFSjTRCMHGycL9RCGE4fF99xCa0wu6cpc6jH2LbcqHV4SY7c8WvgtcQISCXC8rarm6BHVwoONcxWSpIYsOzn+wXj8G9cG5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8I0saua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8I0saua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D28C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789529433;
	bh=H1JYBivVwmC5cklQZ9zeRAwTsE6Dsq+HhXYEVcUH4gM=;
	h=To:Subject:From:Date:From;
	b=s8I0saua48ePCJQrPlPMtLL1KfLaeR8Zco/jaPgNfDv5cBvvEhixgyfbnpeHfMbVb
	 a5bd1YczvvCx9i5Uk/5d9U9WOn47x7lo8AScKkOpCE3T8upkbVdNHDn5Rlx8AUUp45
	 JyZpcwetU3UZIwm6QBv6VXYjQc2ETbjTQ1bAGd3WHFOk/y/PJq7dGWdphnFpbzhrPL
	 W5pkB5bDhRycUq2NvVXE4HpTB1c0e6f1Rjp+6E6CF7IvN53z1+1ZYXrj2EDYYyE7xt
	 eoRomwBaF6tNh2Z+d9sVabdoih+IrkF2AzXbwwlv43VM4/2eqoKK2TW/Ya7lc/6H+l
	 f/CuBw/PiAvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96C1C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952943371.11032.2304603506192968695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdb92ce0568600871a51ed036bda8d5b1eb1171bd08049df1a40773b3b15a40
Date: Wed, 16 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789529433
