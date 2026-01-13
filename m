Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC161FC110
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768325633; cv=none; b=DL0gL0rp/Niiw/SxlaBqe+MCqPf9VtSyEc+wIRT0RYmx+4gMRS/UBiHk1b0h0dOrwIevuZCKeNubzpL8tb0hU5NtSWRA5EkKbiOk336LSBZp1ovMlURFMIaoBWaZuCoDUwPkChCNk6fLvg2KoQjlBPwizpruLIdg0GwZxryDrsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768325633; c=relaxed/simple;
	bh=UtA5mugjjByx7m0/F9hl8a3/gbjArp8Yzwkbciad7bc=;
	h=To:Subject:From:Message-Id:Date; b=YFVUhCSYoyo8F6C8t7EeVc+3rBAhpAph9OvieU267SIwbWmxuPMnxXTdikZLC/U5mLBAZi/rl2PAljfVIPG2QNw3UApRRp/5W3B7TH/8PKdTXTWiF/5Jm7YiOu9H6e1R0pO1Rm7jWnUSUP2cgtCUwgyFy5ypc9ZSFEKp1lcxwo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFgR70Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFgR70Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4DBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768325633;
	bh=UtA5mugjjByx7m0/F9hl8a3/gbjArp8Yzwkbciad7bc=;
	h=To:Subject:From:Date:From;
	b=MFgR70VxekUXJi33PdSvyCf0rMRuFe6XKZnRRnhEWYLhlbALt1reR0F1X7APHNmih
	 VIlbEt2AiacpMOkR5tDkH/VBmCnP09T9G9A86ArjO/3R+10Oe/jIcguxwRCCW69gNj
	 vgcgyeRB9yeRem6Dbk/9whD4AC8mZdb1Z4WQSRs4zjwtnDO/Ih3UCZpiW5QY7bZbAn
	 PZFDEnXP4/fg9VZqDMctEWA6NcxFMUyl2lNttsJXCouwmjTGjjY0hSCGvShpjhwT7H
	 dwClzNVjtcvNaEZnXwT4NyrVAzOVFcEoJlcsL2L2pbPiOlpD2kf5yQR4dzqmiFZr1r
	 a2Y3i9vI7Zb6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91876D2F34B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832563358.406.11462128203274577536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b5ec70aa05d2cfb4fac2e122a3b76f15902ce0ed72a0ca1a183ae5671aeb7a
Date: Tue, 13 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768325633
