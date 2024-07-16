Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4934D37143
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721115923; cv=none; b=Ykj4hjqQ7xGSSMRZ4+eJ4wJA5URjHHtrNpwpL5vhLOlvyFFNdNyjq+Oo9from38wuNgM7/3nGeuxgL/VMoJjTwn1Pnnafv11nGa90RAjhLyONyFBuKdT1L7IzAQoO7FKc7gVpjoN8sfcitSQrdDg4nTTSfMTvtubITisH2EQCng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721115923; c=relaxed/simple;
	bh=aoq75n1ODFRHkfY4552UP0ywAWH86ikujGX2cNHC92E=;
	h=To:Subject:From:Message-Id:Date; b=DlPI61bCKRtbBK94vQGd6IVabelmF57OwnKTikLkzuOQW7lYvOjRhsd4M766TBfgFSpegXmAWxp/avjkpd6vNVuN5UKXJd4GRMeyHtHFAmK/dBUlRhHCsGk6y77hFl47+I2hx1ujdGqUktbwJVd2zajL4Fxlyind2yVETp1xdzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDhu6EKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDhu6EKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA212C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721115922;
	bh=aoq75n1ODFRHkfY4552UP0ywAWH86ikujGX2cNHC92E=;
	h=To:Subject:From:Date:From;
	b=cDhu6EKGZfcgaZJ07Kl4zCgM3Rqqq7Xcv7QOIzoV7VNkmLxoAhW0aXxBIWo9hNyfd
	 OoVL5oPdiVJXZpUlb0afU8StKicXtWFvBLFTCuFhrCUiRIL9Ecy6cJrFVitv7ZzwhP
	 lDF/+7jX7cz+LrXMCKEOR+qF41d06mPofgIhU8kq3MwS8C0PqdA5DshDc2gxk8LlyI
	 Kl+C0pwoPDQju8nZfa4fWGkefOYqUjdedrkjeOrqiuf2J0F0BMA/iKI6lb93qAS4Qd
	 Q/xa2pp/YYNio8Umai+1+MjDbIydCPZe3XDB4z7obpK/u0DBSdLtkPJejPFceHG5Ds
	 npwWGa28Sd3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F5CC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111592277.22214.2058317171442721180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded9e273a08eac708aa27602cd234470e005566665e8548ef9c11bc1390bb8ef
Date: Tue, 16 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721115922
