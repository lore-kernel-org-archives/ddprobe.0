Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFB1632DD
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782535114; cv=none; b=tSXDXjF+Azysa9D8xng+A6dwFltKd5+vB9D9vjtS3W8tkCk9SxZ0yqRmq7Ch87KppeiV/EmPTz2S0vh6YQJhAmVDP+b/1heA7zgO1Q0TPkMaWOFw8qkjvCzUoquLOXez1dfTVb6AZrC5WlzyYgH1H6YAHZU77CB97LOyST3pKlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782535114; c=relaxed/simple;
	bh=oPTmcEEG+m7SJI/DppINE9akW0wEVFN0/TGoz6T1fPc=;
	h=To:Subject:From:Message-Id:Date; b=WhksU/aUi1XSZ4mjgXWokWeqdfbUaBnRwTQh3i5zvgXbsrnGC85waU+9i2SZGogLVwRdtlQnyjDka6KYehkB5G5jADXszopxIou8nftUZhNC1+u8jF829LwJrYn+72k+dDvsCguahvbaSXI1ia0Q6EPrrBmw1yE5pPjIAtPOyL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP5UPaP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP5UPaP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D71C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782535113;
	bh=oPTmcEEG+m7SJI/DppINE9akW0wEVFN0/TGoz6T1fPc=;
	h=To:Subject:From:Date:From;
	b=DP5UPaP4jWUqL1BlrRE7cRqUtfy7y+LOA13seAGiXHZNkd4/x/EIv10ay/ce1ahCv
	 IaWyzv/z4we87HeOXrRzaRtbeEiSBh+dKXQ9ZG7eZRxz8GD6sqjb/WGBhKmKLEjYCP
	 A4b+pSFl2NNo35M79JnuvmOv1wo4dzTXi+rGy705e1+Eg23jhVPtyJ+R6sF1HU8Olp
	 HDWamOCGH2dCSoLWq30xFZln3WTNeo54udiVzU2Q4/GpCDwNkYiy4vaIltq6/Z0VbA
	 WIAivK4sZLOJFQ73ajYxJNZaonHgvrDZEqG4mOZvAClDWOUBk1n4LqxblLtn4MW75O
	 /iw9CnPVceCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C95C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253511371.28128.7856046287871879368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e7faeef13b043e835092d4d02f144329873a54825be6b7c8cfcc478e35109e
Date: Sat, 27 Jun 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782535113
