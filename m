Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AF6328B5A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761058793; cv=none; b=AkxYY7Hc1cJhGI0I6KBhw+NQuKkP+U2sTwik4y1suk1npwU+PMuUd7A+JcbI5ClCOlbBJ+NJjQk/h5Of8/JMzMaIeUlzmZu1X0AwiieeRwvOJ7bA5sMGjvsKKPj1AOmEUMAiI3Mz8g1OUvNImAR1nF6UmNVYZX/WwWD0DHUbSEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761058793; c=relaxed/simple;
	bh=hj7V/RW/o4Hls8iqlumH5qLUqxJ8CoDygTvcT+VQBhE=;
	h=To:Subject:From:Message-Id:Date; b=JvbSqwP3Zhg3srhtkBxyLEgTIeUArhg5/e238BetJiqQYZbdDzcBwIqmP0t8r2pCUCjQ8UOlVQ962l+E+gT+z5Ph7kZeqeUo5qNkvwhns6SaN7lhuQ/ALpjP8K2ATitPRbAqxr5/sZPb2sRidbAFOEV7Ooj8SbGtRNIB/xRwDVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJmjFVcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJmjFVcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761058793;
	bh=hj7V/RW/o4Hls8iqlumH5qLUqxJ8CoDygTvcT+VQBhE=;
	h=To:Subject:From:Date:From;
	b=LJmjFVcXnT9DlHo95+4npfzNh2EKj2+XPVKdlxNBpiwezoYDrjtX/NUOHoU1eLhzq
	 9uu2OCu/+Q+iIDSi86J1C1MrauaRDwAOOCF8N4+HJ7vl8ARguN5fwOe0GdPbRJkViI
	 9yQdqViT9CMaSAG9fBdWx+irTTadJ0GRi0kgjEdQOD9KcQuylAikzXAuvGEIqiUG9X
	 bzj/00CLSb0IkQJ53zOJLBCOrmJiCNZXsa0vCYR86msCq2RbpcypY1mXn06YE/a/Kx
	 /tVhc4UQ51K8ODWVdWAr9slJfJNvhfIOsfsaj1aNdoT+I1FGZhF70KFECzlsYXP1W8
	 R2lFibXrN6oXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92706CCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105879359.15930.8485879111110258982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7cf64cd11da705e7cf36edf098f8cb2993a0e576a49837ff8c8a58d96bf8c08
Date: Tue, 21 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761058793
