Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC5B258EDB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769226834; cv=none; b=jyIJpO80BGvuqXrzj6eubq6Ec7BMds9mBK3g7B2ux0JcDVJ/L8ypm4/1wQRspUdL4ecpWI8kicg4PaahGtk1xoRWcfiAS/gOLllJopGHbnW8F8+FVMro4R2t4TohRAp8ohXJBzAZyebeIEidMPiaNIuu44q6yk2+5efXbFhTsOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769226834; c=relaxed/simple;
	bh=m4UaMuuLpH5JZRzTzmTW3A/th55iPVuCtG+CBTDiBtc=;
	h=To:Subject:From:Message-Id:Date; b=ISIJE9aaEXbDLHEHCWZm9CB22xH+0NOOr7UqGGByL5WtUqvZgh7xL2SoKpbjS7iCbM4UsXR1nHLwZB7T3BzpNwnTpRo0+bbLLed2ShZM6JkYb8q/ZBP2bbmlVNo7HOuRfuiqEDJq10rPerF4LQDc2NJLKmd9qlI3QywKX8JU7FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITmG73i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITmG73i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F1FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769226833;
	bh=m4UaMuuLpH5JZRzTzmTW3A/th55iPVuCtG+CBTDiBtc=;
	h=To:Subject:From:Date:From;
	b=ITmG73i7uE0wD2V8I6DSsBl4HtrE9U8mUN+KxRhBX4E3vCIV2ZmBfpeQ69uZGmtim
	 mWKSMgdXipabcJHlMOKaUG7i0JgSGELNkVbUc+C42DlD9HZgRRfGQlyqUzg0xOugwy
	 ixQ01JRixvEvor2CjXO6xMkezZ/q4CKx0XJSMlnQDv8F8qV5WAEXMT9A1j9L8tjCxL
	 HTzXU73NC1uuIqKfYhNzlc0LVaHkPsUv9Na9V6SFXKmjhwL9NmLwtJPZZQeBud4R/g
	 EsagjRpIG/KOwOfGVhKbDnBPJHUm0zza3K7QCK0nZ/bmIbv0lMWqtCRD4Fev8hS0ah
	 6GAf8ewUKYRZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9651BD6CFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922683358.16566.8250477632046823526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced6ba646913a92148b1661b09ecd3774ca2fac16bf76cbd8ec09cd5364b039d
Date: Sat, 24 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769226833
