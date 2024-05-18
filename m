Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598A5DDDF
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716041543; cv=none; b=RDA+LZ9rdG+6Z5XoafB6TQq0+crHW1uFhWXQi7n+v1GDgKaOHa5MUtNW/FDpnj6cWDS/XDaeTMTwX7J3y32N8NH2oNwGYcL0QEQPmeenI8MPHhv3hyb/2x1EZf0r74/3LLAq/iysz+wHxIGzeTqPPQObUnQoGaMztnzBMR0D9BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716041543; c=relaxed/simple;
	bh=SIdaEd+PzGHKuBCrMMhzQABUZjNXYbPz9QKYjUOqwwE=;
	h=To:Subject:From:Message-Id:Date; b=N6rGLC4s3aWxKBc/UiRRO385iseBZf1ZAcFk4jNGcUG8DfZfNBI15Fm2873MUruzuehocDchZA6C9cyazgh0FPxNSo1adAUr5uU3oBOTnWjtZlcRDJtdEKdoIG7XJMZcQmfDdO/mYHFNt77bwjmHnoP2Ud9fuTdXQrG4LZ90oTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKyE8bjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKyE8bjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7871C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716041542;
	bh=SIdaEd+PzGHKuBCrMMhzQABUZjNXYbPz9QKYjUOqwwE=;
	h=To:Subject:From:Date:From;
	b=TKyE8bjlsAkJYgGYYgf4SiHI4vvE+nvWm+UaMKQUDE6fgTjrIaEO0R2ti9ICTRyaR
	 fehxVsmhhIlWKMbD12NrTfo5oO3Lm8voMFqzXKTLyjf/kGjNKQonAF6CtjFa1wUPUB
	 pfMPJVg+oV2sgwpn/9vjgVs6q6BFXSu9Et8C3xOOGXpTGP+Y6cd9F6bxjZyRNN6ZV6
	 4TxrLSDB6gytjx9w6EAEEVnEFecyebRYfirtEk11ZTGUFfqgtN8OCvfqncLXCTPnfp
	 Fuwxo5Q2Ljk9CM4wiLiy0Ilc46ZPYtWetJd9xE1qODTnEhV4LcHdugXi0o4F6SgDQK
	 vS4RrrAltTb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D006DC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604154283.9358.4830463098141890328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bc7fbfadfb7bc670e51af15a88dd4bcf2e007b08cf936da4ffce3017f1fab2
Date: Sat, 18 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716041542
