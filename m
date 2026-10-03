Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610FECA4E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791034834; cv=none; b=aXBw2lHxgQYrGonnVPSZI/YdeMuSszM7aCfPqmmeIDUhkkQQp8qKiBctLv5tnAAHI3C0lBQKcpaUQx2knoEKDnhGP/Jzw9/qq/quN2YwdRKFsOw0NTshOqndLaaM15AHpIiGMT6u81QJB8a1hM0F1+r4yxwZ3H++uPYP2Sjxe3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791034834; c=relaxed/simple;
	bh=ya/kApj87VKLHn4Po5km0nSkU5RgbwbX1qrRA/Sg+Zg=;
	h=To:Subject:From:Message-Id:Date; b=iXowbAjP21YBl93Bltqim3gEs/spK6PEsD+kFhKR3A3co3Bq3vzBB2MD6bezy+r3zgx/BG5Qhw6bXH7Kx6CXTg6sxEuYd3CdaNeatSCDjpknfFP4cOjV2UWF2Rw5hAyB0j22sYWQIBbO1coi2z29QxvcZc0cmPhJyi0m37eabb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFTr41rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFTr41rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF1FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791034833;
	bh=ya/kApj87VKLHn4Po5km0nSkU5RgbwbX1qrRA/Sg+Zg=;
	h=To:Subject:From:Date:From;
	b=iFTr41rBk1sZ/N7FxJ64Y15Sq9vlUrvGADMV8ukTIujYGXXTrmYm+8wtUv710Qzrr
	 4QqN8/56hLiHCHS6P4oPZR6EFlQMabTupPMEg4DF1XAjmOX+e0ei2q/ZQMv5IT6D8F
	 m98pffylI9zC0k3GtYCAGVFTdaEfZPmde2MeuCFriwQbj8TgYcgxsA9aUIf3bheIbN
	 bFDFEStULdTteI7Lxy3Cn96RYwI1Lsz0tAqGUdsxwjfVfrdD0pqaWJEzbPs5n3Wr9A
	 Rl5+5iXjyriZc7b2nKiAY6/PuR3yKQW2oYu0v4r/3kW8pOW3Aw374dV2W47h7e8y+r
	 bSCvr8xhnE70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E1CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103483368.8249.14600265570664301644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4985653f45d1ff485a4238c8ca5122fe67e05398bb3e4765acea2f2c99dc82fa
Date: Sat, 03 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791034833
