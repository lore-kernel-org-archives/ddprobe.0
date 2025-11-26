Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A9A312809
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764183174; cv=none; b=ex9B+qGKkL08vEn3QL0Mvxxf+rQ36E4X3l6VNCKOcQVn4Y596XxCsLBzrObsr3pfFQaT68tp+m/y2HUliK+poSBziZd8tuOvWTyusGTiIsaiyu5VKDWA9rUV4V2lcx9nYH6TUWYqBPM9C3EaLHLP5VlstG7boab+c9dfnGlke8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764183174; c=relaxed/simple;
	bh=yfzcDMCTSxc93qlmdsj9jehhX6GazRp7+s1F13R7AM4=;
	h=To:Subject:From:Message-Id:Date; b=i26FTpY+wQuQrTnnVYb5S9rh6dJKjHxli9YnPLGB4O9bypXi2lWLED4aJuIY94f0wHmNhn3Zk3LoUdLUiiMWCC0u514GA6G8vVCpwWqQSk+InhufnSRy2Em+n+fnOLBUJR1EI32TpH33WpPecAmqxMXu+rkV4IZ8w6b8O9dXDz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3RVkmoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3RVkmoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C02C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764183173;
	bh=yfzcDMCTSxc93qlmdsj9jehhX6GazRp7+s1F13R7AM4=;
	h=To:Subject:From:Date:From;
	b=D3RVkmoCofrZ38jmK7IjiiJceWtoqHU+LVKXZ7KSq1NkxNFr0o5944ou9CfDn4Egv
	 O3NOb0jAnLOm3h/cwIpENzCiK1rdSEprGCGKKB8TbVX74ra5iIdq1R50PSMppfKa0q
	 eBuj3njxK2R04GRwqIdvlMZ7gP+x8O/R3af5dtBJTbT6AtDU4Zor1/yfGtpqSIYH9I
	 ZiGANJthhjCR1uJXtOOnVH/8S4voxidl8ghr9W+ITqTxT+B8q5Dg/omi3dWck/LyZA
	 ujo/7/xLARj544mZhfXu1PQpG6UNPcM4gGCkGmsr7mwwhRsbRLhZdqt68aO42dR3k+
	 0QDsEPUTXQkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91368D1118E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418317358.20507.1782184483154594580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02fc1103e688d59c65ef3f242d6f742699b6a9584b996c0ce0a3980dfc4c77c
Date: Wed, 26 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764183173
