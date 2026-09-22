Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470A0368291
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790119834; cv=none; b=Mbuw079EF/MfFK/8RKobrhVFRAMN/gc7A65pqY+R+HepXyuCn4MmUrFjvcHJcTYeK4zcC2nUvG2h//nUsJnP+vvS/r5Z15gPBJeXLQLTE116nqMQiZwEGWGQCd8v2xaAaluGXgI3jqKMxsD1jvtv+t9yZGWu/zDbendNNR2s9Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790119834; c=relaxed/simple;
	bh=ZPJ5GjKpolX8lZCuP0hWi1Hm8xJFjOqZkk3MhH6sinA=;
	h=To:Subject:From:Message-Id:Date; b=BQ4+H3wpvmNxJjJ5XAG2S1M0cL4E8soMq9gDpLVQSiPJql1hVFwPwehvTTGOnXUSHaKeano+OkvygirMOwvpNJ6whzOuR84ET2b5EiKwH8VoPxdAQ3SmiITFsdEZBZb3Xx38f2FHmj2wuKa/CiL3eYJf4AoTJR3fxE8V9kWryxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi86Yalu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi86Yalu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDDCC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790119833;
	bh=ZPJ5GjKpolX8lZCuP0hWi1Hm8xJFjOqZkk3MhH6sinA=;
	h=To:Subject:From:Date:From;
	b=Vi86Yalu1lj2/YxeRoi+OgsfJX675+NTayHIEWfOWSZwneTWRECU0ghKglGqisR05
	 JvwF6oyAuygl8i7rJw+DmmTYHsVTvB8kJHEaHPowGHF/+satmtQQiPUhf5AT6+AITF
	 UUASt2PfeiNjmM3UJ4VtPTinmMedWd7X7oTNtgNQAwoFW8IRA8aWC3NvCB+B1KdxIm
	 nfMSRtHLfxSHmHKiDljtX1Vb8toRR4VeqWRdlNBtDmEhhrZ9omngf+Y3ix22YHqbvA
	 LlA56DIoiEH9PkyR5SRJhdHiu8eA00bqUtt+PeaKt3XG73fDae/RSJwZH5EQvTR/YR
	 dSc/uNMCv21GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9646C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011983371.21254.8338363917930582244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc1b067c9bec97600ea24086ae2b9bc9e6d3db0b0fd11d9feac6a0d2bbbac8c
Date: Tue, 22 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790119833
