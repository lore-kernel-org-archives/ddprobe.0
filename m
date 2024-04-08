Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2EA38DD6
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712607497; cv=none; b=AoqnNPyb5EMuML3QDgqheZlTZKXyRMwmmeyUMYD4UQzruVUDVcBZhJKuWElU6+uSzymGiyWPr41yE8Oe9gKKhr0Lj3RuTy0/9TNJmNgLLdG/eW4KKU2Fnz7QGLVve40blxuRKV15lKy/p1HGgp4RW/m1UKGsTh/ZNaRvXA5xwhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712607497; c=relaxed/simple;
	bh=rbOxAnszxjIFeywAVteKcqDyV1rXkKWYa1DMhXSV4aE=;
	h=To:Subject:From:Message-Id:Date; b=pDsK6X9yeNb+AgzBGcC0qqwqLuPyABRx/XPa8CsmzZXt7I1ilxCSEfxT5ZjzOfHfOaGa5BAKo0eeiYRAd01ZRCw6Ag+IWQOAVI1hspYiR2sQAB9mkPg4zPu6+VjAh/EvyB2IhK2cGoEcd7XpnvS7sbRIuVu5hayzrvr5+WAukmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOSP8ZTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOSP8ZTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DA09C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712607496;
	bh=rbOxAnszxjIFeywAVteKcqDyV1rXkKWYa1DMhXSV4aE=;
	h=To:Subject:From:Date:From;
	b=LOSP8ZTONNvdAQWueTmkju3Yz4Lez0SfClW6byoXHL4Cb+y4IR6XoMlY9SNqCiUA/
	 n7vw6nVSItmEQ3lN7AafuTyZvC6Tg6jERCuFEbtQGRmA41xD/MUPjj97pa47PMlvVi
	 hmB/iHjsPG6Q6Ke2KGe2Q9b2+RBtyEo9Q3/XvTnE46yoTt930NBK3+mQvW3qsf/cf6
	 QnYBY16Qu0kw7BN/e/po397XxQQQVhDs2Xq62VKNkGe5hmKamRyIiNaEvytGAlaUv2
	 gjsfwz1ZhWLWFi5nq16bsn5a7e6rcZBmBtNOhDCzxYVl4WVfhveHnEuLNR/KWJ81FR
	 HvvQ5KnzzGw3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A3D6C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260749646.16141.11240901182154286303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6414a8b0447efa2c5909fcca877d096fb67760d5c07a123c01a261bfa0563872
Date: Mon, 08 Apr 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712607496
