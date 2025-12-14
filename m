Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ACD28C00C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765708974; cv=none; b=s+OzuYEDTOWg4CGtgN00bMkow9ONzdH+qirVrTDsKqcJZZ3+w4FEgkQNeDrtVtaM4weLKJYsmEZz1W9BTQycY1LnGZIy0OV4DCcSANHdVzwOoy78UvUErBPr//xnInn7g3O46zlZweAJESgn0OnuSVRh4QTmko2xnmO/2CIuPi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765708974; c=relaxed/simple;
	bh=DKgKM8747wEYe8E6ShX2ADDaeirVRZq7QMpU6wMMKKg=;
	h=To:Subject:From:Message-Id:Date; b=plr93Qqjo6Z4J8rAtHz3Gh6EiPU0xtL5Y3dGRuFvryEZIauIj4L9uNDROTRO1N/r8HYallpesaoXqc7NEpp/uVdf/tyNM/GwswIyg/qnjx+wkYtIYlSlqsocSjFjNWmGIBuenH1S1U30UWKPETUNhVqDCf3UoCM/b1J9Eqc1pCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsKeLawK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsKeLawK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEEDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765708973;
	bh=DKgKM8747wEYe8E6ShX2ADDaeirVRZq7QMpU6wMMKKg=;
	h=To:Subject:From:Date:From;
	b=WsKeLawKUnMCclBX1uIvD04DPafDLnlQpNmsIGbeoIOiHo+LZtoMgwFoJ/5UfIFBW
	 Tx1dbvhryE9DXPBvrvmMTGE3I1uNNQdKAMJfYVnVd668mewShNODBtQMZAPs74AH6O
	 cxmBcqlCvIraCh/yjwo+pTRXFwIeqAJzo3utI7A/qQKv1EuP26aFO8CkEBIfKu6C+x
	 GtqKlYs4ZTURMU4Rw1240O+jJdFah6eWFKz1O4+92PDA3mUwa50RQMCgiwHMkYHp06
	 ax3mdmuIRlPGp5ISFAxNbTeolw44nlk7h9ZIvjrCQNw5OKq6yZPzaX8Z/2StL7YSZ2
	 FIi6jGe3ZPACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DCD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570897358.20516.13303351322667290450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa4b4ecced362ddc78942cb6a159a31a3cb614d9f04c59c1d37be7ccaaedb69
Date: Sun, 14 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765708973
