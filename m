Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB85285C89
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767581634; cv=none; b=BvrgmsB5B98lp5mUlpGpaCkzzTdQRkuLoAUeXqsX9LtH4G5TL2G28J/ySuId9h5Qu5812iqFmRH+3FHKYXg2Xro6Af5gK/G5o7vEvGSzXQm9UwTFrGnLPU08psW4X0P77idC7bEKClRs5zl7+n3ON4DuCsmPmM87M6w8eL8eP4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767581634; c=relaxed/simple;
	bh=MDMT9v8OseHDz5mRq6G5Koux8gL+oUtuZ8R9PqaWZuk=;
	h=To:Subject:From:Message-Id:Date; b=Awl26VKj1q74fsJVJPGRIrL+29ZuDuVTyI7w9DT7m9dVwTbTE1LwAJ4qNQ8JDBQiyDKO0L33Ex4ELKWqdGsaF/0PVgu9L9SdC8xDR6DAas6W6itD8S/RboyzZNLwwg4xZU5NZFrTlojcV9ZcH0xM1W9u0VC7DtVrJrEnrhiTgBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW4ivEje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW4ivEje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767581633;
	bh=MDMT9v8OseHDz5mRq6G5Koux8gL+oUtuZ8R9PqaWZuk=;
	h=To:Subject:From:Date:From;
	b=nW4ivEje95WJT2I8XD/swR/Ypk7bOpAxd6kiTDN9tV/mvV5Jxv7sn9Fx3AUcjO+lK
	 MdfOxJAphJdEOKN/YyM1wKKSRIX/4Yut+/AX6rBHY9cdLBThwBRfzXvgB+zkUhZ5IU
	 7lwqysszRhZaWBVKEu2V3QvzQ4Rlv+Odtv9MnBmfT3A6NjZqgzQgJzU4npQAc548eO
	 +2DAcetUnhUir3PsFKy8H4C4PLGpXUrHs8HZE5LSof/UwI2/jOlW6lENSkf7R148E4
	 RUp7pB8+bsiRaFXTMSEczAXYmEIQGuSkPszOGi2U6Df0kzv7DdB8Mvgv/AR2VTLr9U
	 A6gXiOFdT1ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0BC2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758163358.28918.9907580200230461606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07f57f7d98ee81ee12b025f8008dfba427f23c090988ce0ccdf797538c166ab
Date: Mon, 05 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767581633
