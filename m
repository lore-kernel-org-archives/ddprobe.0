Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9332798F7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744704594; cv=none; b=H7cFEbaaaAx+UX1R/KXQxdKBqdGiRjQtL536RXj749ow/Z5np/HmvP9e35g3r6m6MWcL629L8rlRRwbOU2Tv8mnh6tsLyab+WA1JvcVHqsDE/sQ9Ih/eKaVh6B0C9tyzUiX5K1iBKwG/G/NIDmdBok2gz/BMRPZ39PPFepe9F8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744704594; c=relaxed/simple;
	bh=zdsbA852fENSrXFQkiI7W+R+xoiZ5viUJf6RX8E6dcA=;
	h=To:Subject:From:Message-Id:Date; b=H2Loai8+8GQpFM2UcOZxVCZwneHjaLPjiQR6BnZ+2N8UAnih/rizRa3D099/Bu/YmpgJSOX5CudTIKSsi3bl6CR1ZXa7diuw3RznST+K3kiBLltLH3QKBL0jKReb+kPMoRyBj058iv/ImO3kAsEPEMEasbbv8SO9RR/AIlhTPek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WimNXOrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WimNXOrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B7AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744704593;
	bh=zdsbA852fENSrXFQkiI7W+R+xoiZ5viUJf6RX8E6dcA=;
	h=To:Subject:From:Date:From;
	b=WimNXOrAqtuWA8TrlRNokzr3CTDeHKyddE2IFsaVdT83f4hpPzrYK6ZPdxaJtENqI
	 O3a1u/pvCACIcFJf8DuOm3iuMGc5a2nE/rZHo6VNLyVNHjqh+4xQw9P7HVJCzqYcFd
	 fui8bXK4joNvefUBzSgyLXF5+hG2fUL5pCtiBqdDk+iYHpwAgecEAYkvE8NhgdIyJ7
	 ct4c3334LRzzvQ2oJ9KGkPfl0gFBkj1tAeHvQOPTydgccoZirUhbQPMjJuvOfoELl4
	 qaGQK+rb1kV0GL+YvWf/Z1LL24UHCQ6wESqssKXtZNmxD/OhFzlxH9DNdAZ/MN70qp
	 qthTfKyttOUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470459358.19826.7546134090894265422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef1ecb19138548d6c1e4dde8a98ff44b999ffc16de026edb1ccadcd9e718143
Date: Tue, 15 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744704593
