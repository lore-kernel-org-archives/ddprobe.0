Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E254C2E0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747891194; cv=none; b=XejzMUNpBgV4W2wK3qInCFkzVkmsuFmjO8ecjkkL/8Azam/FnSCNATV/ZowIOWGuUU9B8PAazRvygVpkJ7cCgpFlPqlVqwQeEl6d9+KDZR9IFRHArnPBcKbkUPIE0/y1BwjOAGqzux+HpJn4C247d2h4T9onQWOnHlq+2vcagew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747891194; c=relaxed/simple;
	bh=Y1GiKsMDALOuwiVpnlgSeJ5onVl1Jgfp+OPcbkj/vfs=;
	h=To:Subject:From:Message-Id:Date; b=diXW8Oq0opmsTq/nYdlWhP/MSrcflhoYzKngV+/p3j4w89q9pEI7Oi5ow47c7iGf43FFc8MkjDoguoOY1yXUb6H9xKudcR9XRHWYCvfnFT53gu+yM0QzvOO8G2n9+t2Q9dXTOSKojcpLtFk5JrCVJJoZ638v524nyfSstKuRNq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZraNpcEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZraNpcEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747891193;
	bh=Y1GiKsMDALOuwiVpnlgSeJ5onVl1Jgfp+OPcbkj/vfs=;
	h=To:Subject:From:Date:From;
	b=ZraNpcEyezv4ZcAQOYLQdez1kcHKvc30qlUJeTLW3j7rFUD3+lVHPBmHLeSTyo3Zb
	 5bmDgnIV4mekmz3SfxI9fghSwZbayvAIIKCNe+97SBF06XavtAHzi0UjvKgIFdDgE2
	 2vmPuuC9oOGlax7ZjLD5BKN2Ju80dYY2dEd8iH9z49nmnacNYdOEZa3wp4Rz01LY/g
	 kFA/UskxMLjiuCDQaETWIjImW4/Se1GWPFf8Z2TCO8tIZiGnWEktxr/rgQ8PDgFzjJ
	 fqdmM7HTzj/CBxX9LwpsN9VVjrCZ2CenHry8njItJpMXQ/zX9rG7lUETaPURPBr54B
	 wgxEUR1X3xAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E5C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789119358.18141.13537497081183999854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a656450d44b0bc751852edae7409dc7edde7f27e462f10aaa98ebb171d23f8
Date: Thu, 22 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747891193
