Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551C4433E93
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783226314; cv=none; b=q1p39qkvq/vmUQS2NXBKPLlvX0r3/RM6siOUdjEUPSkHUT281Y2zonmvhi8hSHXmoOWqLKZRwspksReCReAG7GfLGfnJrpxQHyuyF56sgar559T0FmmbEfBlFhK5NpNVblPKtn+ioB8tEGKP7dCugt8Qlm+9o55Y5zMaqPBrFrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783226314; c=relaxed/simple;
	bh=uj4/mF/I/Y/3P47i/wQtgKu8mxJs8/Zv6YM4u02JeWc=;
	h=To:Subject:From:Message-Id:Date; b=TqSLjcmcfJx4BUqllojP53po10T+oi5iW4/x+2rjD7CN43AS+wICI1sO82jogWVRMn6NnVMRWizH9iqlXdIEQNoCYMfsjDGNSs8Eyj6feDZ9RIb21zTszPpqBGL9M8sGcHOmMDnJr5wmo7CqsGUyMfUj7i4jEj422UDdTDpciHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFz5d5Ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFz5d5Ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F3AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783226313;
	bh=uj4/mF/I/Y/3P47i/wQtgKu8mxJs8/Zv6YM4u02JeWc=;
	h=To:Subject:From:Date:From;
	b=bFz5d5RuDnvlJcs+IyCJIwJ05lN/tfhLa3f6vV1g7cIMecTuniz1ZllZk1kz9PyT7
	 lkG7q+tHVeJULC+KtNqbhGqVl0nio+j53QMYlt7DJYe7QLWWqZ+v0i4ffD0rOaCmAr
	 ftigWE+/zLteaZ3dlleMcGA7yGMFwl2m2z9UVFJdebHI8iYx8Ri16ktUrmyUfTx6QT
	 SV1Q2UWPDycgR94jGxCoBANmJP9upaSQ9m8vjdhzJIqkwuBjuFy6dyQ4AoS3K3QF17
	 qPJAKvKQKfPOZCHNEvgoYRFVs45ohI8wKej16/yzsU7Z2+PCT73uzZBk1fR0cYaQGa
	 yo/i/8CJhbt2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAD1C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322631368.23437.3881259941917489812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa75570bc12c3747a140a293d4c0e1bb7b625ff920507e615a8467f8c253dba
Date: Sun, 05 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783226313
