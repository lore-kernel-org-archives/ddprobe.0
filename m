Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142BC168A8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721459154; cv=none; b=jC0bPFAe3MKG9vWRZpvUq1bTfhgseNQmajwuM976Q1IxpUy11c40A1VDnEme9RjtS4VS4w91vJFdt8yEOpzFryGDZ9wrt5/fVTFRTt1BbxtZSuaDrmXJmxX3pTGLkSXkLmGMgPC1z7T6kQxkgUp3C+1l2gy+ag+RxIDau3X41WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721459154; c=relaxed/simple;
	bh=q4r/ewLITKTXNq6KGB1dNgwZATOnp0vtcgsdfJw0GpU=;
	h=To:Subject:From:Message-Id:Date; b=c36J/M9ZCJYfvjkeRmFFHWVpRf4w9774mzKmV4ll+CyskeLRjWPaAKlS9ywb7pliPZaBZucej+C+kFD3MCT4ggCtPacQ07wMLKYR3P/0u4PAnZfRRtchR1QxhKiL7xH/d3fIoRis29h6C0ITR+CreqFtx6Cha7LPqLYUqdqGYSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfRF43pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfRF43pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E31C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721459153;
	bh=q4r/ewLITKTXNq6KGB1dNgwZATOnp0vtcgsdfJw0GpU=;
	h=To:Subject:From:Date:From;
	b=NfRF43putFygslMLxvFYrEQGeM0NcWKNzeMV6c1j2YRaW/wXTTDxrFJNYsfz6jpAP
	 5rkgAX/86Zjb1mlnRK8Au8C1aG9r+JevEasnhlhzEOct4aI68lN8p+Jd6Fzqq4pFiM
	 0XUO7pqPLnG0xx8kiTfpIkmHNjGGy8oN6g9xlb/VPfCeMrXtL/i589bVQbHBMssUIM
	 xGF7lpxuwBWiGj8N7di8C/xCIQpfn4Z50Q5U614eWJpKYwtWS+E/JXcrGwm6ipMdNg
	 Kk78luiyFMT9nu5O/PRoot6e2sZxh8uyiGwTI25doKQL5dLNT2P37LyFF7k3D7yxiS
	 busPm9+84ay4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E98C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145915359.2891.11449361358288294993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a2ac05bd0501e5cccd9af2589fd6f4a9a82d0a8f727f8387f6ad9a82728d2d
Date: Sat, 20 Jul 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721459153
