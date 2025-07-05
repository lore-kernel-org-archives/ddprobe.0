Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A11DE3BB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751711394; cv=none; b=kk7sjUdwT97wpPKTiJkVUkdF2xdPoPdUg5ROc9PyHpII9S3pdv3UWuGl1Itc+ZySO6WvEXAT3cmTVKzKDDdNOxe6tdU1ASy+CRLcGFbBRl1sFXHF00Vzs9Bat29S5oV3qR5ApsF/WuJTMw+8vMhqLNQWQFZntKQpNwh52w65ahI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751711394; c=relaxed/simple;
	bh=n7rflNbsfctvgoU9ETWrhTXVG/j+0/BAapG4VGi81ZY=;
	h=To:Subject:From:Message-Id:Date; b=rCNO1vI3z8aeBkTZQNfLa6ZjBL7ddsraVvVtDxCHialQT32K9NUt3WZyKMKtBGCDtOJF2B18MghPK/TfTYIZKBOcPex59oR0jP4s85xo6MKvLmgEfdqIhcLtuMTKNzzXLIa7asI6KU28x0a5K1tLKzB911L/6ue6jc5WLmHzpas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qETvlZcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qETvlZcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94BEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751711393;
	bh=n7rflNbsfctvgoU9ETWrhTXVG/j+0/BAapG4VGi81ZY=;
	h=To:Subject:From:Date:From;
	b=qETvlZcxrnnhoNTdze7HYls6s1lguNsY+XyM6LXLVjFeheyRElxSwaIdGibSSEUey
	 EpASuI+V9NL4x4LgNM6qqVA3HZS9nQfEwHG+dHIYXEqAN7wY2v0zaXBHecPH/5ColR
	 /Og7518cvHeqbUP0QPjIP+p7Pv8jmr+gsSfx0icV2ISOzXfLJ883uOs9hyLaKmKYRw
	 2q7k5M9+NaD0DtpTElT6aHxi9I7E7x5bU8JqLliRaO37aSXiX90uytK7W1LinfdZXe
	 GZcqwTAF29n7NUaHptZdP/yTWm3AdB59X2RPDK2qR3tDYaPL0yI5hyAsrw1Tx3wgBd
	 ntrlbDppyx0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94749C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171139358.4673.11984792982083341532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bda51a76c140053f51586db65f280c8dc9255976783f1cf902c7195bd954f1
Date: Sat, 05 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751711393
