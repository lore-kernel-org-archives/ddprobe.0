Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA49340298
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763544714; cv=none; b=kbI3iP13dCRRUYichAL8vKMqSDsn8KVddFGI81gitxidte1FHIZvLJE2GMm37C1vs2gmQTJj4LdwdstomWwVmSDzcHS4ImlCYrzcZY4f7goxm688fuFWw8MyWIdunyIV7hPDGm6mJsfEF1ZCvyTOQE/S88azoXb+3vu8GS8SikY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763544714; c=relaxed/simple;
	bh=QxM7Lb9dj9vlu6bmFcy3ib19yhXJ2c0g0FKO/KQUa6Q=;
	h=To:Subject:From:Message-Id:Date; b=BAtytghju4Yd/3WoMF4qwk//pNXyT/8lOm/ssWghFll5ZmsDo90A0t0OpnyvDCjGpOCLjqG/w9a2P0c4aXBD0l2qi0vRBuy72RLO49sxvFjigzYIYRgVTZOe4vKx9mRRF1ip0OXEa5S4VFQpOIS5FTECyaBMBz9UQd6pkylCdjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB08vtUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB08vtUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9A3C2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763544713;
	bh=QxM7Lb9dj9vlu6bmFcy3ib19yhXJ2c0g0FKO/KQUa6Q=;
	h=To:Subject:From:Date:From;
	b=eB08vtUga9I50+vNtA5lVo710F78099JAoGElkTIj6SW5+MUvvpmh1URk62Vq1Pps
	 xDbDtVzi1BU97yqQkq4HjDrO0Vg1PKzsrnv9BNgqTTk8fEdHeAD37VzmcrLcOGHUFn
	 GebmZhvV7oiW+Qv0ATaFpsq5Xa/qhvRBnvtWfcay/UWw7jzT+XxxFlGJcJ6oK3QXvr
	 FoLDq9j9v2qUNamuOuFPfRyVeg5f2y1pcOZrvfrt8/Qy/kv1ouzO/QrZTCwVktnS8o
	 MTvIjuRJ8M29R9wXxcqsT4bl88+SVehTzk1X/b5m8F3BO/qXcZ2z43FMb7NVLNxt4s
	 9447zutDXN5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92288CF3184
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354471358.11075.5766827878978572076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef18859ef4b7a040252304241f3f2664698bde9c4548f8523b8039c00f521ff
Date: Wed, 19 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763544713
