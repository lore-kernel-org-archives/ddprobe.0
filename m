Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329DF36BCD8
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772777094; cv=none; b=l4lufccoK+rAj5/omzZeFD7BGAhD5WS8eHJUquNAWur+sH95ni3dvuoYai5MGVMIWov3vWmd/XRhO05IVoJdIg17c/TuBKtVgA/waXSW4uo8YpnHUiHpnIjb47doLzEr3PRHztPUrkVP68rH/5aRZ72pqHEWf0fPFdgfHZJzFjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772777094; c=relaxed/simple;
	bh=m+f7GuTT1iViA5JV7Jnuh6h0wKrvHWlhrMz6s0hPNyQ=;
	h=To:Subject:From:Message-Id:Date; b=hpAHxNqN/LCIZU8m9CCR5Co6T5zXOrzKjRcJxwKfVWx/caHv26n3Ylfg3RkQsH5LeZMlJ3bAzaqR2AI6cw5NgpFltkWP3Vvoi1Ecs7zSFvH+XXdf+OaO6dUrIDUfIZPwg9NFiaRo3m3xaGDehLYC5JrX/HMC2gQSulw9ipRNxO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjAXwR2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjAXwR2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772777093;
	bh=m+f7GuTT1iViA5JV7Jnuh6h0wKrvHWlhrMz6s0hPNyQ=;
	h=To:Subject:From:Date:From;
	b=VjAXwR2uYSZiHJsUSKo4Wa/I8W69ysVC/EQigoT0l/pU/dgvFqlBoWRghf8CDMbw7
	 Mm+Ij52y3CevsM1XW38EAaPT1wsC1ER4kqQTJWzcVqd5V38Y2spDVafwfvGblQdtt2
	 9ctsJ4V5nD9YA1zGSIxG7m/8W+ArUHQMyHiP6kzmQemtcwfJerxJGBBfr1zLmzpCru
	 CfJR1LapeiyVBd8CKpOnp5chlFGnW314AczEl/NnsAeN3/k4U38fl8kHKRzYaLfHwv
	 efq7l0pYddUvLUQ/aRgXjW1wcGJ9mZ/sa3wD6dfONZXIOu+q76ga2MiRap9NTHy2xQ
	 GXp6+2O6lzYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90161F513FF
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277709358.11283.14371445775300668519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d62e51b59c8b3d8a7892f69eb1d04157b220513943e53949c3357d054ee07d
Date: Fri, 06 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772777093
