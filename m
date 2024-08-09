Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF6182B3
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723230954; cv=none; b=aTqY34O6PhoXPRhFwvUZZuZ43o/3r9hj2bNKBk0V/fmcwscYH7y3DihLfjF3QScFQZ0kvn+EbcDFnY+/LOQQT3Pmsc8Vw4zBZdBiMGAL7sGDmZiStaX8Xw32nyTFKRyyCGnrFmglwLlkqJ6bqtd5oNNGgRMncE06PTUpKH0x8RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723230954; c=relaxed/simple;
	bh=G0RYy0KPVG8X7gh6aL3xF6Xo2aWDdL2S7ItfSldWndI=;
	h=To:Subject:From:Message-Id:Date; b=HoOL9kJKUpPLRsz8CNKtAiDUw629y/05+FdWiyzYZ4El806vL8hQ7I+X8MMGYvobMwY+tA9xTNfoRPETgo0FHNzvODMjOY9N+B2kXPpS+LWHKKXx9yQJviRgR5zFlpZoI1iR+FACp7cgwg7ymzW6f29RpYozATpynx0zaANFfGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8/l001U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8/l001U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14C6C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723230953;
	bh=G0RYy0KPVG8X7gh6aL3xF6Xo2aWDdL2S7ItfSldWndI=;
	h=To:Subject:From:Date:From;
	b=t8/l001U/gPx4KjZ3FXmkUgsLeRW7B/i1YcBynP2BitykXuCXSTlDpu8PPGuYWStK
	 UIrNZt2pfM+3IvVks41LQ+a6BegmRLbD1D1OCxVJy41Gf1mP6fXDa0N0rBWwH/i+I1
	 4YL4HCiSYtk2qB+OCmjk/XS//Fa74W7IqB43TijN1vwBEdKXmOewCtzt3j4T6qvJ69
	 v7t/gk85CEbUsyPHg7WSJssliNOGgRyDbw6l2aYt3Gn3147YbiXzBRktPUDZ0IC/qw
	 kJwNEI9C1gM3W4xHuftDIBG+bKyOvFGwrPY66y920sVoCq29z3AfsaBfhWTInHKoQM
	 /86lhiyrInODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC01C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172323095360.2735.15014971682714298590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cea01080833e0b6e57a2ced7c3f4fb782be4741cfa8880f37211a04a79b64b9
Date: Fri, 09 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723230953
