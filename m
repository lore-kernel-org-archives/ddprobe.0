Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA54A1DFF2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712522897; cv=none; b=rA5bcjfYXoYhznkq/qdjpeEOVhY6ceKxjuMg8cQ0qBvn4RTJu1IglbJdiXVpwgdOuxDHLfUSNGq+fjRG4D3KRY67R65hDTGN6KDNcq8eTK4vapAvHjsGaw+O11lzWjAoSGx15XWEuFduB736tfxoxRRFvnjIXKg9cw2yYJlAhSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712522897; c=relaxed/simple;
	bh=vhDuM1ew2+py9aS31qEDBy++W9sEbrT711guthlOmD0=;
	h=To:Subject:From:Message-Id:Date; b=kP3WrBJKz1bmvbu2gM8qFhCRaPlS52cvOX06rRtNmbve/NkFPOLuU7JjktzQCklk1W764ySQpTKMlaifjANE/qESTE+PNcJrJ47YSTlnN+i+umibH6k+hj8Kz5ImryQY2Ig1HnTMFBDj3hPauxDLgiLld0KHFog549ltoKfBIZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdvRoBsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdvRoBsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EB7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712522896;
	bh=vhDuM1ew2+py9aS31qEDBy++W9sEbrT711guthlOmD0=;
	h=To:Subject:From:Date:From;
	b=VdvRoBsalUDZ0CGd2xlrAkC52AfhoBWdeFeH4dLT9S672MBnfQUiT6kqLv+buMFXw
	 ML71IocJnS1UN14c/9tanad9z2izOeYZcOjuSAqN6AFnPirq5fWQt46NM+1loHyibu
	 xIOyh/M2XoEwUTKItflkLQNVFoV2bChKOZIGKTdknQBTpBX2iMaYMPmNT5r6xhbynB
	 RD2hJ1mVn5VTAuUyoMoryOdHXUU8nF0JPO80nGsZnLSrNMsmYeZlusrOBWQWzYtLY8
	 4WIUp0ZZmLE7h3M06tTg7rkDXOZEg0Wp5CmcAYPNiBk8UJGVD0qU+eNK00G4gRLN7p
	 ZRdA9BuThp/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E0E7CD1292
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171252289636.18477.9585978112875731888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7aa506748977ea56895577b7d4be38371dedfea1afe6d8d25c76a4d6790c3a3
Date: Sun, 07 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712522896
