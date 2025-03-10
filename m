Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14D1227BB5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741604933; cv=none; b=VrKlEPDQbBW4sykQetmNB317CCh7XhBcKXcmW8MhRaO/6wI0aS+lRFTQW+MYFHJ9vuSZ2Xy3wwZXPuoQbar+ASMbs+vrBuoFMlgVTEXTZxKs6+bUVp6nnc401VA/piY7g91Ngtg/8jH0nVgBye58/EXp4AMmvjdvwlxvVRBIpuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741604933; c=relaxed/simple;
	bh=arWkCvqouXQRyFQ7L67ymVAvGIp15aq32cCxgSPuHIU=;
	h=To:Subject:From:Message-Id:Date; b=j1IUcRitJfjbA28YwI2UHjix1mU72FqKrdx9//sfT5Ub7AuRbvmQDJU1f4TRSNqAG9dRjLwXjRaxR+IG5n3IlMcluzs7sgSLEL5zhvTm8PgBImorQc/Ocm0Xj3MXc5NfRtxy1IQWiN72Xo6yFGHSVKxmRj3JBwjw/pXaNuDstDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdFEvMBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdFEvMBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4663C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741604933;
	bh=arWkCvqouXQRyFQ7L67ymVAvGIp15aq32cCxgSPuHIU=;
	h=To:Subject:From:Date:From;
	b=rdFEvMBX4ZbdaSNK6V94JPzhMAvivaPnOci+2dV82sjqWBt8FEkiA3YUluIfLZacg
	 rIp4mEpbK/8nNq2I7qosM+lrm6njYm8/bmvxz/uam8hM995uVEJMvahW8KvwXpgXYW
	 e4WNSUjhy4+5oDL0NUlxPrkseXo7fljXhR1ovDrtUiiOsK2WggCj8gpy6tSyMufter
	 X1et8VzFr0XWbkGw8CcZxF+sZ/p0SDepaDGNurK4rm0OYzsqljuYo8G1utEPQWmxLF
	 469iyyNNIawodEJdjyq+8SIbDr0ACCJqdtAxxSpRWKm596R+XMIHyB9ld1iXTixMHq
	 kdZST7SOA2zFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DAC28B30
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160493359.22968.1537975212836548359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80618d2d07037908d56b3c31f2daff425656e3eb52627c66a201218be099981d
Date: Mon, 10 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741604933
