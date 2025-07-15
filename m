Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E82252906
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752580193; cv=none; b=mz5AoXWuGC10F4GziLHKzwFK5mCmZhIghrZNnUea+/gO707E8qDx47J0MZSlJa8haIe3IwY8zzgjEznWQLmQsiGKxL5Arkw8TE38aThJ+xPJdI3SRj6QmJpqMiDptR8UdvhRkhn8ZZV1AxRaoz4IXEe5H7SpNSaAsGrWKXExQ24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752580193; c=relaxed/simple;
	bh=Q/WpI0JDuyfyGw2gu6Y0froPCvUQFM7wn1m//qsks9Q=;
	h=To:Subject:From:Message-Id:Date; b=FrNH11qdkKuSx0c4IRZtS9Avc4osZukKN2Vvq8eHENJG2ChDYOsdlBE6WTpenhv6QcAt7hAFax+9uD1gSlkCIRp15g67SNAlFaep25kJHjqQWj5/+uoVJA7+WPbxY6FywJf18anr2FMtw0tudcxd3D875ZPHlu571ZQ8Rn9gpx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzGAUYlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzGAUYlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96A1AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752580193;
	bh=Q/WpI0JDuyfyGw2gu6Y0froPCvUQFM7wn1m//qsks9Q=;
	h=To:Subject:From:Date:From;
	b=mzGAUYlTlDIedQbxar90BtTb5/kKanKz5wDd27QBjBjOuLj6ClHyDEnJYDnRiJoNA
	 Sb6kOOpjcHnmn6GDwNs/Nqp5kacCTFUuh9zRUtTFJFa4XNPM15OSpzSYOWiJWUMPjM
	 zoXj2T/0Dlegno+XysS2zFyZ5uc9WydcB4/FmCXhZkF+RKJppUE8xL8TjdUScuwt3R
	 hCwjuDRssuelB6BYj5AfqWuPmBTeVsLqoSwDNE1myOFDymMfF6VzCo3SLhoFZcLXnz
	 tYULkeeSMJ4eRpPIBIJcQxfAEn9i8MRTetVsTe/tNQ4BiswYPwsEy+j8nhfoiYmN2l
	 i34Dv6XuauuwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC46C83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258019357.20984.7205129634124094692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4555093c4423b6c3f10c04a4afa939e0a544abbd2c56180591bff2695b38b9b0
Date: Tue, 15 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752580193
