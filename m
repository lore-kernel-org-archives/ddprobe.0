Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493ED15491
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720104323; cv=none; b=Altr/Pye6w8pCZiCnsWR3cvZr82N4HsRXHksADoVKJRdGPy0nW8+0Bw+hBMSaRIZe0u3progVQp2FNs5JplfchVq+vBVduDR6H+WE225JPJQF3vqDUHtY1czxGcEqIk6LKKmprAZ4YkqMO9vxgs4aALb8JWRDA4+damWJgaEQ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720104323; c=relaxed/simple;
	bh=LieFWFbx2b1sxjoEs5zT603y7Tues8SxuLAED40Hm+M=;
	h=To:Subject:From:Message-Id:Date; b=pO1dj3x5smDq4P6Q5botKL9e29K35/JbHPl+7nd/bNiFGNCX9C17XXyLSj981eihIrCND/ilygHbJExtIIJlP5QT6Mc55tPLntARctFhYEWRl6ymzMC85WH0+DbP6sFIVbbRWMJXY2alMEv85RrOg9CrhzHY0GN5kO/MxmeLDwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4A4tcJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4A4tcJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D29C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720104322;
	bh=LieFWFbx2b1sxjoEs5zT603y7Tues8SxuLAED40Hm+M=;
	h=To:Subject:From:Date:From;
	b=R4A4tcJUPint3LgHI15rMV7BXPcsEkh5DHWo3G4T4GEp+bjqJIlf8pJGRC0inbjKs
	 R4GagylJYrVpoA0yQgcZLFLhH5cBde8XQfrKl2PttScktEQnsxe7T73IU8OCKBM4pV
	 eIynQ4p61fx4ExA0W73LQsH3lAAPhAnKoarxivsM+QYYMQJcOHEPNldv62z+HGN3Tw
	 AU3NjGccMDkDvdYKnrGjP85IZCxSfQ0iMmwK+PomncCCnVHHOl0H1JPLSX3rFi8KpX
	 vbLPED+hlgYoC4xkGysiszxWqt7IHTXBZ7tHpc7z3WFHIVMZPZFkwLwo3fL7VV9t89
	 AL1BUK2m6k7zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC5CC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010432276.15604.15346476945326681555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8340ff289c408ca0028fae2c04bb64cbd1c2aa0f6775c8ce9c442d0a9d3733
Date: Thu, 04 Jul 2024 14:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720104322
