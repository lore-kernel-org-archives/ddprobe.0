Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0E838DD8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743838794; cv=none; b=a747zqEbm0IIDncx2b+Zx2HmFXpK9ZV7h9acZqzcAvWEENjDRZBAF6WbBRLyi6e7eMBTGdPkcpwi0CfNXtr5RfMZ/uhQkJjZeYLd0mPSmD3NA3uHXCsVHO17S0pPb+P2d86y3mfainDnNl1MbjMHHAMRcdrU76DwEzpJMLquh/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743838794; c=relaxed/simple;
	bh=N0mhCEGqpUtBiSgX+/EtYUU00o6dK2BzDNrg5mIBxOE=;
	h=To:Subject:From:Message-Id:Date; b=hvYcEXRWogBFUUaYKOzgrJNmdJsFuPNdWg5hbg44NTlKxd4Qfv9bbW+5FWcpNOSXWuoZv+ZYA1ixAuc4bVbeihmMv5S1FWUljYSRBbAiV0TT45ljsboU3cX45obkJ4eepEVA0FkoAx/d7gvz6ywubmIvNIUQw6GVHpoRI26H6EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcRDvwXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcRDvwXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B779DC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743838793;
	bh=N0mhCEGqpUtBiSgX+/EtYUU00o6dK2BzDNrg5mIBxOE=;
	h=To:Subject:From:Date:From;
	b=tcRDvwXmVsN25QwicYC//2LtDeN3oAkPCv1rSZqc2R7heDBe209VFWWdYldpXd9q2
	 ohETnIR7Q27AELTXqW0DYrc8wiiTKdUM4UPkStU8PKMrYDhE+s04g96wLW5/O9OyYI
	 ok+Uoacu6Fpw7Wta60tYnUk9n60bHeyV8DwLqgH5EnafJ5Pwhn7QoqdwUtvmHCJGN9
	 zzqH8msi7+BfLO8fKWR8cbpi4EqtAnmTnPSxmsf2HQ7VOEGo0ZiZacxxcMwIR4ykct
	 B+YTMoI3GyKLtR4Cir3l2DTB+26EnC7CTPL5tiCrVwpGf93fI9+5kzHuL0r0RNhjwr
	 +RrppAIpKZzbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A111AC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383879360.2060.9629350160573888819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b7a039a2ec842975e495afcfc3972956a44bd7d3b85875abcd61362d0632b9
Date: Sat, 05 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743838793
