Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470F30BF62
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768529634; cv=none; b=Ppe05xTN/RRd3OgoAe6v3vIbYBuv0OwTg6VNGcI85Uu/VjAvkWy6YiIG/C8CDh1sBqmHOS1worD+xLIe6/ZWlk0JHXFIYteubDwMFr3iZvahrCO8Tev2KgJgFuOohwIKjihTitliz9mx0ms0Vka5ap5Iw/WAofJCk9pbldqfsVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768529634; c=relaxed/simple;
	bh=Fl5odsvVD8a1IrdfbhHjqLOxBYBHCz/olWk3dlACmq8=;
	h=To:Subject:From:Message-Id:Date; b=Osz357xNGx9tdV/ua5EzAVPohDvE3F7BoE37HHOWo3mBwRxRWSl2yZoP2JUm62biKF/lOHo3tSY3wXGkpCE+lEbMbs8U+GfAt+XoeNbxdpT59ANWdAv0J1VLKjmcTHMQND0YPLpS3d8nd0r5jwg/EfSjSDSlsXFIC7UYGwkZGT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRaTdv40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRaTdv40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2929C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529633;
	bh=Fl5odsvVD8a1IrdfbhHjqLOxBYBHCz/olWk3dlACmq8=;
	h=To:Subject:From:Date:From;
	b=sRaTdv4058rKPkXm0jMRdpvpKcELh4kF56YbA7hEk2UyIBkCyhxH0cNC0iYbCr1v1
	 UTbpjXfotRgB3ts9ecV9yHjHAuUux2eR2Ht3SGB1NkAcnKW4TixYU5jCBzZkSGkGL3
	 w1RbagIviIL86h/oRQ/sQuFyM6dkQEiUZGwAB/M80ksfO0IfFsLYatjmVUaDDXc8SP
	 8YZP0zrfMMhc84NmruRyUTMdggb2U0FCT/ivd/J5gqncgdc1SkY/kr50fy7wTCSo9R
	 hqgEcu9FlrWzAX59VsaaVq5aevEEFrNACjNeOjmTg+eUaA+NOibQOpY0nvaas90n6U
	 jnKoWwEBzz5Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220DD4A5E2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852963357.7741.6397929142436056477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab2db85c4e38597020a5634ad7de331d48a40b281af71354e7c3cead50c6552
Date: Fri, 16 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768529633
