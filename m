Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1FF28FC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665103; cv=none; b=WVS6m1ngUamWYAF3jTmqtVxiyoJyqgABxP/bRONv0djTRAh2qvWUN/s6oOoO4+Hjp/nQIDuHa6/nZUJWyAMu3Ta7wKkpJGOZSs84TK1O06TrR7qRhIH3tAWZVZzed3bV3Tu/HyFprReY4b1a7M1EA7DaZoc7WjYDvcfW+3IHUxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665103; c=relaxed/simple;
	bh=9NZffCoB0QvqHPaTaN+xZWCglvI9G9M3L+PksJKEwgw=;
	h=To:Subject:From:Message-Id:Date; b=B2J22yUuocIEtWuVip2A59xzjzJjf4oqQt4Qt1cATtc4X1oA9pxIGIq48sngzzH1uyJQXOnycAD9C6af5e6TWhLF9yZHHYxlFpd+EHWaFKLGzdIDOr+r5D/a8uWM6p0+bUy6ZgM1cVwmUNmzF5IWAradaP82QqArn07iaIL6+qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmQjMudf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmQjMudf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCA8C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718665103;
	bh=9NZffCoB0QvqHPaTaN+xZWCglvI9G9M3L+PksJKEwgw=;
	h=To:Subject:From:Date:From;
	b=GmQjMudfHFP8osYhw6eNro8JiOIg00WhsJK/HGJE5WZoulCUnp+/6jK+Mzwt81e1K
	 OaKvC9+xzrS34zFxz3enx+uflGbC6DHRuTVjEX/JFs1MrunfgEAR6bKPg3ye4XtTFe
	 bSt5imUzVtKlOcd2QJ/LALOR7bpgAc8ccFBLjEkkdqUTZvlWUO1277ihvUMvgz42TP
	 OIeph9Nb/Yw2wRh5+uPWj0oX0SwUTwIWfeiYLwAxtKbt9r80DQqrSnxYzG2nww56w0
	 x0Twj8oZaW3PxQgeeWaEKj4RDKWWuRJGVhME2T/nYuwHlbtSB8w00O7U9GS+sCw64j
	 AOnbXL6gDrN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D0DC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866510278.24846.1396433676071176970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb07d5b2e508f8f2af75f03ba1061166b4ef34ec01ea09dcbd091060bb4f5d6
Date: Mon, 17 Jun 2024 22:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718665102
