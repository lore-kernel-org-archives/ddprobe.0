Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F831A3BCA
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723592154; cv=none; b=O79VrUoW4jWB0grwY2aOdmLnFF58dee2NARvF4+QkdbD2dci5J315cEVWAtkVZVyKCyNgENNhV/FzMTIrM0QeixlE1jC6yJlL4W10UjzUzNm1KvvS6uYJ1NQ6dxDv+++Na476Qucu9GGMyN+IZftxekjIVnJaURFBAW33UZNALY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723592154; c=relaxed/simple;
	bh=au7ZEGbirihAxVmDrJmSToH7uOy1khzWPgYDQaNNyew=;
	h=To:Subject:From:Message-Id:Date; b=CA9zpEKgnzc8U06mVWVWf781nDs4Uhr9lGnYpDtGPlZFWGnEE2OQNLercJxNCwEQ7t/kuEBUzjimReMt8JLB2cay5GqTvz1ZHqVI4GSfa9W6X3OG6Ptd2aYYE00o3q3hbglyIFFH42FPNdTfFOORfk+He9nrlk0jlDWXmxyfuWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvAofGJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvAofGJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DC7C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723592153;
	bh=au7ZEGbirihAxVmDrJmSToH7uOy1khzWPgYDQaNNyew=;
	h=To:Subject:From:Date:From;
	b=JvAofGJW/eWfi4R3R4DSwSVlUnoB7uyKzk0FhwjSCbnduR7l0ehT1XWg0pydS5LJy
	 RZep2DRlj7rBsM0wgCfhEsBc9j3BMlICvl3m2PW7qcnNzNErmctj8EpcOCeqJZMkXa
	 A5Vb/PoFaLbY+TW2wTlKq7PPSVody4KeKkThU9CYdcnNppcP/SHS1bQu+THLO6IEqs
	 a1Vgx1QbOjuXMgKRRcUpa+/vuaPG+mLq66/mP2V10lE2ixRIagrR/PMO1uLXcd2JCx
	 GfcRDv3YxxKIn/tVf+eDtZnA7Kr4XWlsOZJLj8we/6vADju8WUIdmlmsRQ0OOujF73
	 L93t3aPMrxcpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93261C531DC
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359215359.20490.11017236441413011419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd38bba17464caa9679b566ee690f7793a5688b7f433a1c9757fd206c7f1db11
Date: Tue, 13 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723592153
