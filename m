Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398242DF126
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792201834; cv=none; b=tVwatfRLbMR2JjFEf5/2TFudmMAt5Xn3h29GpXm55B/BAUH7OAAkxT1/OqL1KB/y0Kw6ERwUeX8z9yjdh1rqtYbDAl9ERnQfXOB3WjBkGt2W/HiJPBs5ZNl1I+IchsqsunMcoZq54pPLtUg2tGc6jKT768u8XMm9aybthD2Ykek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792201834; c=relaxed/simple;
	bh=Jdr4/ckKvnPbd5q2e5kjMSP6KVcJtvXFJgbg3o9iJPA=;
	h=To:Subject:From:Message-Id:Date; b=IbYCkSOn+0fE1fA3AUfaPYw9I8N7Cu5x3fZnwNkAsNI+rf84i0vnfFZULAnhiRYK3wz+qV2dmkB2Ju4JNZShe1pdJV0JgqBHZkKrMK61YSNnrZchKQLDS5CKII1XGk7D1wVtU27RwmN5MPHu4qJMfKNVl952obbwv7jqKVRbfPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMSJHWIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMSJHWIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FD8C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792201833;
	bh=Jdr4/ckKvnPbd5q2e5kjMSP6KVcJtvXFJgbg3o9iJPA=;
	h=To:Subject:From:Date:From;
	b=oMSJHWIriHBpVV1eQFueQyptJgAVeFJvsJ668u0DZYCpmaYUJAPrLevSSukWzV2Ug
	 cdahC2cW/u2G+fVyPe/H4nNKkvq2oMQ86SXSOYNomUTtvVPBs0PiW6v7GnwulZHbwL
	 nKYcWNLxE8TnTJ5dEMxVDCllWxQw99k/7fSv2yoltcYMzsiSBgfEIsl9QsqLRz8Qur
	 bHeuDc9kC+Fp1v/fTagwhuLzV/gwOhHnvwsnnyx+c+f3zdtmvR4aZkIYL7MG02znvr
	 2oLpQLXGminp7SlLlQHsR4T62g0acimPnIrASnHM68JTy5qXv4Vb50a+zXd9b9oAxU
	 A0IqpSXVEnX0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FBCCCA490
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220183369.4778.9764331854929464412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76437ec9958404774c2bff2a7ffd20d95b551538843d4d0cbe72a7853c02eb7c
Date: Sat, 17 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792201833
