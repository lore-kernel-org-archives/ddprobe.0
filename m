Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2942917E4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767586434; cv=none; b=IDOIDHCQX05dVqW3XLDoY9vH4TPaJr8V4xGgHv3xlKG2M+94FDkkF0Mli+i9QATvOAn9dhlISDVqZ9h0mYdrhlAcd5xBmun8MYuA5ottsEQOyB424wuRrksU/9BVFR0viDgkOSbp8AeXnH5DOdd6E2JOPdFCqv/eYeblprnnmtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767586434; c=relaxed/simple;
	bh=NNRsmJu18zedxQmeUieX/JMN29CvQCFSIH2YKyB7EHs=;
	h=To:Subject:From:Message-Id:Date; b=TJ7hl3+EkBUD/r0ykm2/Uv7PGMvpSH4aFwcabm2bPn4tcY+KrEPX2xFedH2BLDAuXvwxoB01hmKuTQmiTdcwmJ7pJrYWCZi/SBRGBJplxHvSLQI5glreJgoMm9y4HQK0CZbUUbYIrPdOqcmTXCNvlO6r+dTClLSpknu74DzjiAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQQ1EzGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQQ1EzGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB0C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767586433;
	bh=NNRsmJu18zedxQmeUieX/JMN29CvQCFSIH2YKyB7EHs=;
	h=To:Subject:From:Date:From;
	b=LQQ1EzGNwdxfXXP4DuHUzGMSzbjFS48xA1tkhsdep7WcPTOAZIaiFqsxkj3Z6QHZb
	 K9yOpHbJyiYZAgi7UcLwHdqaDj6vtWfSmCDTdqxNSolmKDeEvvpi9GlWupMwO7LR4J
	 bPMKbG2OuPwfWjvg/nq8XGS+YFtLU6eET6g0u8fG0PVSZeULIt007rLFje1QcyuqO2
	 R5vmk6LBHxakO2ebZsi7RdxuftOrMPYGJvxc6KxVlvgEOUm79UlcKRfUI0BOmTxSiN
	 ZoBCM9GOILwLbzR1MFx9uY07/eGLDLeYUKe4fA/v/w4y3H8viorsvFSUaUr92+tadF
	 qEgJRdMrOC/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9CC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758643357.21663.14209465593914857027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5592dca0202dd36c6efe3007becbf06702ec1cc4540f1ca48b1136bf9d63ee
Date: Mon, 05 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767586433
