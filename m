Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D72C23535B
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746809394; cv=none; b=HYpUYoqgIIeZjBuc3ZD52Qv9iNu/XaBVXi4rwyPeW6qeTOVMZNrXNkyc0R9XONKd3TQfAgrNtsLzSvhSFFrKMXBn4wfKLeB3fsESFKLR2zthVAGZckL1xVXk1cHAsrcP42GqRG/2qwMiWLLors4UdCEZQbyHE5j2SHKI4zp3zPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746809394; c=relaxed/simple;
	bh=EL3U12o6ZRPK5T0zaHESDrsh1ManamIKFg+41jY9kgM=;
	h=To:Subject:From:Message-Id:Date; b=W8xFTunCuu+DzxPrWwfljdGKDsd3zE+qmvbvWSesuRf635X3BID/RMyv6CpN8iC2bzgBrKZmSLyuFHVna6O19Njca15H6IdxBk6I8rVUMa5WrJSJfI583WZftSHctPZpJEYCEmBsPTEbLkNx44Skjy9NQpKG1aXLbYzOALyWc6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcBjCsb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcBjCsb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0697C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746809393;
	bh=EL3U12o6ZRPK5T0zaHESDrsh1ManamIKFg+41jY9kgM=;
	h=To:Subject:From:Date:From;
	b=NcBjCsb8rRAnyrh/+o8KXoXeSAEPNS1WHTx2jr0e+MXQAwDd19WUOa9reWdFG5I8n
	 C7E/y574j5Frbpy1d36pFSAVqvZFH6Tg0H6IBGfoyOww/KRRYTQUehhOw8YFECKkhe
	 142V1Eu3zWQ+Zr8kAatfAWGR0OozT/HXEhz9BQyi9swLLxhHYK4+h2PH64nEoL/aiq
	 YZP5CxWezS5zFu0JZp1WCzrJGJjdxRtNjdlSpTP6AOu5lnwIx1k8++YrsMuK/txCSm
	 gma/StI5IbcsTFNzr0hIDq2g+D1lHp1Kp/0eM1NDO8sOk6hpIFdjji8YiTrCpZbek6
	 IFzpBGPBvoJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90316C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680939358.18396.12323827034149618349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f754ba7b02dfc654742e34e935b3ffec8cbf9283236c67804e26d3e24818d2cc
Date: Fri, 09 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746809393
