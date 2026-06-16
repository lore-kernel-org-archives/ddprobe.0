Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD8A34751B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781641594; cv=none; b=uENvWXbWBAW2nnWIXUzsBdTmkjhCTB5cLWhKDm0M0e+Xbe9YWv+iOeRY+SSFKMqwsEd96knxZhyNZTBkvFjeg6SiJx9r2t4Bl7jwYZ4zbJkfNFrRaCTrbXQbtfLte/YLzSfyKrQr/Hs+Jceq5La112r1B1ursejV+L3BKcwD2mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781641594; c=relaxed/simple;
	bh=BTiGRJXw3jaIosb4ZNvWOQ5YfqNqsBO9WaqmBDZMqzU=;
	h=To:Subject:From:Message-Id:Date; b=Qv5cXBzrYO1pNVrOqVqykTgwpGyvmBezLQoNM2sDQcNZyRGIcknDj+FBIA/FtIvOaEjKc+2WIRI/2CyvNflmfc8siuyWo9qv/GdM1srGqkVseVcq2H9wPpFp6bblluz4H+47XmKw1jHdHxqsvYu5j0U38Bkh9UbT8b8GNCw4ERM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvDEomb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvDEomb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96BAC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781641593;
	bh=BTiGRJXw3jaIosb4ZNvWOQ5YfqNqsBO9WaqmBDZMqzU=;
	h=To:Subject:From:Date:From;
	b=qvDEomb0Kz0fpNeZulArOu2w4XN7sv9muE7AJoZihgsIWxJP3bdOkK9T7O9rgVpxB
	 xAXHoTehRaqq1/Ja4dReYl4YVFoMY/Jaop8Y4729k6GJ8IGN54HyTPwQ0icnnDl58U
	 Bz2Rp48DxiL0ckT8LCvJ89Xhmu0HgCHLXNpTF4bVGQXTfpz2QyPpj57fZiaFlCNSeg
	 eh0z4qc6ZkC5DwlYtu66n7ycltYhuXXPNMDuYU3aqaqzZxdRAnjZfIYIqIk2kmPvTl
	 HUs5uDwh1rE8MzuS7ZenDGPvLGq8m7Aq3FcnHDXjhkdaeAw3lbctRsyjMqrJMy5RFY
	 K1gHS5c/zPHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F9CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164159368.24570.15807639916783216576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492866e89461ce2ba8df06d48c084e7c56c3c7da19f86a8c86d183b1d70f235b
Date: Tue, 16 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781641593
