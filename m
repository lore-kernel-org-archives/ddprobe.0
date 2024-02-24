Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AE81362
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708793897; cv=none; b=Z7TCJtHIpmV9Z95zJHA2lxyBM44zhZZbbMxLo/IN4w7KlCu88c5c1exNpLo9oFDki18yabwp064euU1b/Ck22p+fNpZbmUiU3iwm/uJJAsYbwO+GhQITo0KroXiLr8FwhQEAfkxUuUfktaV29qzXNIn6+kxtX23wOcsandKxLGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708793897; c=relaxed/simple;
	bh=Cb6TtnL7dp8tNgpWqL0pTutp+cGL4PoI3QsoR+z0VMI=;
	h=To:Subject:From:Message-Id:Date; b=gv8ws0GFLAttzOgdmr/KlK+ynis/5yd/3YmyTTT1q6bzOtvVQjga+c3lD0Qxo+UHC0TtoLeGj8skJG5doDZyP+yE/JH/zKH3eD/0Cm1FMeihkUDQwxjI101iv1Hs46gNnB1lvmsU830GtuBhL8wFRKdPkDZZWCSLwhyqD1koxbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTMoYLn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTMoYLn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CD3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708793896;
	bh=Cb6TtnL7dp8tNgpWqL0pTutp+cGL4PoI3QsoR+z0VMI=;
	h=To:Subject:From:Date:From;
	b=KTMoYLn1xJl1mn4WReiu8s0DSqIFmUz+8DpuiuwQLQNJUZsSIFWvqX36U8gT9kUeI
	 HRpsvhDjXV79VwgxZPjdhKBD4ZcPHqy3j5hX1VZQrxhTylIGsOfJzYJyg6VmcKQD2j
	 lloWwsonYqqO91An4mFyT5ILAI7Fhx6hL2wofheXHQaBz/3m42D/rGAO47FuqpYnIz
	 TR6yiBjgUp4KW/gaOuGJpPv4Vm3e5X/bwvRHnu0kPNxpsI4VZtNVaEFaEEFU5BI4Gb
	 glgxPDSg3HHoBTcNt4YbDUzi1WBe1Cxb3k+TFzVSfjw/rJeHrKNYHsJKWKiVEi6aJT
	 zadhrMVp8C/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DD5C5478C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170879389638.5910.7763413046087626720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87913f5212c42d0a050470bafcba06f522d8d69ec241b87b2e3b516ba2ef9176
Date: Sat, 24 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708793896
