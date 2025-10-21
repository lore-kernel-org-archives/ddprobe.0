Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DE23502A6
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761070194; cv=none; b=Drt6t2kvcxGF3olQczOKG/i26uBIWT8wLHKl1ew2sJkI0cFKImBj60FrLZ7qk+9e4SERhTP3r6FTAkYThNwG3X7cnieX+G2fDm57NhvetqGrhlY1pBVcewAR+PPhRJfEoh5ty10rOut+5XMrjIevM2pPNwA/Z+XDaBC6G1z565A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761070194; c=relaxed/simple;
	bh=FVnLMUW2pnF/wwx4zjSJvsfirksWQiV1Mqf5hix4xtU=;
	h=To:Subject:From:Message-Id:Date; b=DS4fJyXZaPNuG77hO8vE8dN3X61YWWO2sKhVX7BJhos1AVQRlRQTP7S8IrsSWTawWb8SCpkkl0qMHcMpJxnUmea22sLNV6sAvkQvNPo8WcDU/zgFLc2TGEfWxNiIEw4BiAKbFyeg5HabJuPWgO9QJin+NfTF8LykEgN+gX30RuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFFdKe4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFFdKe4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761070193;
	bh=FVnLMUW2pnF/wwx4zjSJvsfirksWQiV1Mqf5hix4xtU=;
	h=To:Subject:From:Date:From;
	b=CFFdKe4KUGT+Ua7cl7E9BX0ycsX5rqV7NeY8QYNc6TPn1QE41O5SbaSVV+8DPmYP4
	 4Zct7B7RqVCnkB7nggCjc5IubUU0ShYMqPrLP/k3qx33s4UlOuGa7zSNYlcf4IzFt9
	 S/hlrQbtWIXLuTtjxiceitN0qth7GnAUpZAsRnxgSmtjbkurbjEOjc65/Bt71EtfLs
	 vQM4hYQYfXrKX7Lnlivn3FZMmUP5wgIKl3STr4CVCkzUF8a/diqYD1UQcS7o1HjnEh
	 FQ0qSF8s7Y1AQpHHawKOkEtjLfYGxpnMwmUcnNXz8XqO54X4zSf/u1MVt/Y1gCXRU8
	 GflzsWGlSyRpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E4FCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107019359.2149.15476871019264603096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064cadf0498e5aaec137d7def23e13f2d8a38ff386c9056abd5d157e8a718a71
Date: Tue, 21 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761070193
