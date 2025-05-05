Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CCE1F4616
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746435594; cv=none; b=kDzDeFF72CjcKrkAB4O4KMexY+xv02bBCYcJDeUgme+8YreAtXkrJQkbDQpWcARI0RBsPwzOx2td/fJJUPR6xFl/pmOMed7dJXRgQrwGJcYAlUNY25VGDJ2WiwBZK62Qm97c4HkCSmUM4fldI+TNi5MNVJPn5CB+ILAJZGe535g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746435594; c=relaxed/simple;
	bh=uBHIhXsXkR8IIalvbEH3JT2KpP8nemGY75tC1bN34sY=;
	h=To:Subject:From:Message-Id:Date; b=nCV7zRhyVJ7s4cCgn6n/GXAukjNsPMNiwBtU+zemoiMQFWOTTLo28u4snP45X+UaEGfMSdQYI05YePXkfFdHVow/l2OnveFdXALYHbRPsda2DwZWPF8lK2xs0IuWPahAHRsD/RAmzSsLPQpwWEOHosg50qW1PtqxjAu0uEyurBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll3o91pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll3o91pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD5AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746435593;
	bh=uBHIhXsXkR8IIalvbEH3JT2KpP8nemGY75tC1bN34sY=;
	h=To:Subject:From:Date:From;
	b=Ll3o91prMISbjiZ3vSn38KnqszPF23MagRoQS0XvBMpiQBNmFx7HpvgrWRHmRuZOs
	 C9g7WwolqcIz0Qc5bh7BXrXaQjsd0uxeTtoOdZ1zdSGwSf+8TaWZmjXEkAByuYpD8G
	 ovH/SKt1u6dEfZSEcGSu/ulG70kMAsjAyLaseyOUcZc3udIVhcpqfEVnX3nhV+Lvpt
	 VkN7fi2/AUVBY5p4S6WKnnQDglAwu2GroCmX/oTyBZnxLBVvWDSySETxY2iYrC3BPk
	 HlQONXgjlLREo3RHHg2h5smG/QDXZT2+Q2RPmEDlHZnvMO/3Hips4hW9uK4QAGMT+I
	 kqSa+4bsscagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F6C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643559357.18763.14058624977433812286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2630fa8493ccff3286501bd80d066dcd062f589ae9f547fe482942aaebf67c1
Date: Mon, 05 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746435593
