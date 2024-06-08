Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D46B8828
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717883243; cv=none; b=CrcS0aigaBbiulwYOpqLyYPWzDw9odvydndAmkJ9aVp2aBbCc/1tMV630igbdkDlJ0I1RPGj8nXiiZifCphBD1PCypOcA+S4KDmoylwSRczaWI0iH0vnHSy2aokfxMzAW0dy3OOrrzwPlsG/aUNv5ojXcA3tcsSlCTSoXQzmHcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717883243; c=relaxed/simple;
	bh=wz62VxZsiCv93AIevQVHAz3bodxtHtcVqh8SuPagwnk=;
	h=To:Subject:From:Message-Id:Date; b=NC96R31jSvaN1gd3wE2hcmWJfadGMttdwPW2BZ/wZc+ZcAOXpJ68nWmn6gYBeed0hKMjjkkDeBTAuD60iuWbJ96HvxdxWDiTewQMpA1eI3zz6jA0qYrseSVsiyBP7etBMxXjbTA6gyl3DHhFURiZJVhvyqxhtNjPLIOORKFsPlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKt17ljS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKt17ljS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40A2C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717883242;
	bh=wz62VxZsiCv93AIevQVHAz3bodxtHtcVqh8SuPagwnk=;
	h=To:Subject:From:Date:From;
	b=cKt17ljSHtY2Phf2ODjdAd68BZ4o97j3VUy7+LnEP4ExB9eKFgyQrhWeKNHbZqRAe
	 nXVYwieese1AWgajsY9qpIckyV4Zs+y5f1Up2PITF34K7S17s3Kwcq3RpF1nmfG+Kx
	 V43fFi6zGT6BOW7/Jnw5gJIp7/DjrQK3wP5RZUUMZbSV2NHdJstPGNzQfzWPyYuxZT
	 uzxCD7tDt6V2qh1Bse8T8GcT4E4KQBdrpjsjjrMxtryDGlMLQxCK5/PtKa0z5IDDGx
	 RJtx9VTw/v3/n0xTg1PoYX7ShiyKPBK0xmtDvrjsnwHbOv5sR88JYBBk9MPFt/0lyK
	 gYNseoihuZz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DADC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788324276.9677.1088665255271591599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69649bc2c6aafe23b401f09148a9a62245c955a6c82b885fbb729b38b1197e2
Date: Sat, 08 Jun 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717883242
