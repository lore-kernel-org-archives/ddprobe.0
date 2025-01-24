Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F81C1EA84
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737684954; cv=none; b=E6Ukp8GoqNnbvwoh5Xb1YQdNyLHYDJbqB6Y/La5Oxy/ATTSxcgvRJgvHCfIO1FpbxYHOx41hz3vNW+m9acEEYWiyB63REc7YmqhSoNzve3kEhdv3UdBEB6+2pSKpNnto4EzekdT9fJ6isqeXaCIe4UaS+BTmHwWngA51KDTImTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737684954; c=relaxed/simple;
	bh=jaZjAfJvoY29mz6Owtz3Ad0pAc/RS2JodDJL6yJlB6Q=;
	h=To:Subject:From:Message-Id:Date; b=NiANhJuFl9F2d4R3j5WfWJylWDUmeP0yzPA+MwkEqJ2i2z5SN7cDNvEoHXHZEWsZsmkicEfKP6pEeCeE4n4+HonX/DPBZp11X4ymr0SLkMwVRTA73D2ZsYnCeA9cpezMY7m5m2lhLzWuex4Feh/PHITDjVw9/dz5dBIy3JuiROs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB9VrzSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB9VrzSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4031C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737684953;
	bh=jaZjAfJvoY29mz6Owtz3Ad0pAc/RS2JodDJL6yJlB6Q=;
	h=To:Subject:From:Date:From;
	b=uB9VrzSRGIq89kygWkRo+EZqa04PemL87UpMsUE+877NXkXicFBf/h33602A1K57s
	 I2z5WPSfl33qELI8jdWd4ei+35KBh3EcM+stmPry6t+LS0q/hhIWSscujob5mX9uqq
	 Dj4UCmHHvrnYn7+02dbZDkEGNGR7cvIOYRlpIckiU8LS9s1x2U701P+BH1qBicCGlG
	 Ig4VQIRLEMSahmgnMW8Lkd6QFlRxKquv74cC7TcnZIwYEgguMzGFiyyInDkyHZNg7k
	 IWoMPTyrQkLgFnzUC/2atzrtrhq0/0Bz4fBy+3OdaI/5SD10vvQ8tZgpkKQUku7AVk
	 e49sMLdUr+X3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB3DC02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768495360.13325.12842748999814204491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4259ef3da67100f989822e96275a58deda8663e4b65525f5605f5af47ca910bf
Date: Fri, 24 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737684953
