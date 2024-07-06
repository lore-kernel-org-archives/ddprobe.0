Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5704F282E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720269923; cv=none; b=PCFD9vsrQhfNgn33lRaLkCuGWQ6TMIFzApOBq/xi7iAmBYijlUUxLroUb3ornFeAdLn3pcidxrxVDPZUQ05WpD7ShMK/xRK2WsOmLHUC2slBozyVUCOVHQJUCCCgmX82wb2gSbjg14UxMM8gNS7cj3Uhb2Auo/221FwkwfzrVOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720269923; c=relaxed/simple;
	bh=6V6NmOz2sRAWzDV+hQPgGnWW/47TtAnVHFtEmrpohe8=;
	h=To:Subject:From:Message-Id:Date; b=DEd8fosyn/sCAvpStFx8fcFqC1RvgsPbzEICNT+BhCL76D2LSwB+EVM3S1qvcOuJLYgHw0kHDXM1oMA0SSWc9Q8wc7A7dqTwfFMbj486nE2VwPbS0VBTpmzOS61am+LaPxD/H4d15zTaw5sDOMy7F7uWX5mt0M/kmNyj82c19I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbVhclpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbVhclpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B15C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720269922;
	bh=6V6NmOz2sRAWzDV+hQPgGnWW/47TtAnVHFtEmrpohe8=;
	h=To:Subject:From:Date:From;
	b=XbVhclptZtRXD6xcJqHXurBiZIpNe7DwYVCUMOLlfqNcCfgF7lb9K6L0ALBLqsIt/
	 qUowSQBkyruJBfG7IvNxfK0GLjquQNja5r5VYXS7E0PAw3r3PCKoJ7Prc5reM6429o
	 WJSx9zfhktYk+lZ8O/XjkEJ2j7I8gDNpagFuymeVUEwbvH6M8VbSBvBteutKY/YnYd
	 XO1fIbnzoz9tZDA56Zie9s0LI+h9uVubsAnzuZdXyQ52onniJcmCN+CEk2fWJW1D13
	 FwQWWI4VnboT+9Gb5+Z/fpJNq5z6Ae1ORV5x35zJsEh4Sor4Koj//OMVbXCh/brA8Q
	 VJBQs4bCTNoDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE73DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026992280.13061.2033383931783522675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc255b4d84b21fda71af6711403f636712422f57562b4dfc57eea5660a1caffa
Date: Sat, 06 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720269922
