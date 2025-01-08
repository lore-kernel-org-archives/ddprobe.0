Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BDE1F2C44
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736342154; cv=none; b=k/mONGbgTonLWQX2uqZsWQE2pfO6yWpsoEjUHuEpUyaXJYkZNMG/fMOtzAOsxGrybgKQ/ATTw7bJsGDHiUIWO2IMo8EEcgWI5rKpAMsQ6FFyAZHN04TKu6pa2TLPfhvnTJCaH9+whv3+to9IjJ4tUN5AkXerTPRqSlnOdH1J7Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736342154; c=relaxed/simple;
	bh=kkT0N0ZRvIQOETten1U+Arqzy2gKUixUBzO63CYiiyk=;
	h=To:Subject:From:Message-Id:Date; b=oV8f/Ey9dKHQJ0U69Gw+WGdoG8ZRIV16lDy3w92OIqMjd3YFc5bc83hbBXpb7exfWgTJKo5P5/Ez3qf8c1l5ckl67QKlfAslV3fv8YMpupaQFlV5W+8qwFXvwpEd6bLGG6bMs8bmc3Qsl0ZacoEzCkboQnnG4DerlphdjwDVNJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od0bol2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od0bol2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E05C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736342153;
	bh=kkT0N0ZRvIQOETten1U+Arqzy2gKUixUBzO63CYiiyk=;
	h=To:Subject:From:Date:From;
	b=od0bol2yj/3i8TAVxDW0yTpRGeH81p73AHHoZ+zy25VV6afjVVeP9AuTO2nzLgEgY
	 MurFA51vZyCbarOxiI++rg6DWKHVqPKN2g/fyE676Z8ZzI224KYU1SplHXteforYEj
	 PONcZp3EcJoHYmjYZJOjGomH9TVeNPD4/LcuqSx6c7hbJDJ+d1cEZWelaICOj3kGUz
	 XhNztaUiIExCzHZpGbRsCqXRip7V2OPeQVu+Ye/61aOXMaCWCqQFXIhpECy32L8QbJ
	 Ve9fdDab+CVFMua1KmUSongLhW/GDimQRvUMcC5apqykJVADGUoyUdvGppZ4EYDeMX
	 ipaEx1vdh0NWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0DDE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634215363.25510.7681861356732791758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29f1ab0e7e985d1383fd69b3bfbb18fdeba1f085b5f96cbcd0c84721f40e5e8
Date: Wed, 08 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736342153
