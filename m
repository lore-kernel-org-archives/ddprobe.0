Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CB5382388
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772553294; cv=none; b=hxfUpa0MIZCVdHLARmWu9XhCGqoSAajpUUXRJkqSmGgeKNrQUHR2b1uLejpQJxXb2O0EZJj7qJjiv6XHgEZV+AmcP92S5IPNQz04IAFMzfEZgZFZXO4tTvpd2BjD8TRdsRH044PX1CEYgl9qVpwAGmS9W62STH2Ygr8OcrUeyRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772553294; c=relaxed/simple;
	bh=leipC7fYiZBi4vH10OwVoHA0OMgf5/qJYIrrztZ9/l4=;
	h=To:Subject:From:Message-Id:Date; b=d+S2k5ekO2DJfwRt7gr+kdZOBqiLIrV0YLEe3OcgZvzPw9vdRU1xl+0AbuCtN1WfKVqsXRyV6Mf7yrcvHu6Yt6Z6UOTiXSlBdT1SpkRjUUSKxpB1k0lFP48t1jpPeNc3/SfCDPuP4Is+UvWO73mcFx/mo0yA14v55Roh828i0lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eby2FoOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eby2FoOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772553293;
	bh=leipC7fYiZBi4vH10OwVoHA0OMgf5/qJYIrrztZ9/l4=;
	h=To:Subject:From:Date:From;
	b=eby2FoOFeVnrXzOow/5luHsuxZ9jLqPJfNIhpTtPU5l+NPhGSYeo+NCql5s+wWo7X
	 C+FM//TeEzCULZChJDIXuLVwNK1RDk1V1qw79Kf7yGc5VC3NWs/TKV3NCX+M9yrJc8
	 eePmjSUyds/NGUbIpryvvi4EuWYM+93CNWq92VAfSSQAc7n77fZE7qCAuoXLsKGAQk
	 UwC/qKMCsf4rfZSxseOI8Ru8tj9XgG67a4F8fJuP38icQoOLse+FKR0Dpei0Lwv1U+
	 NVfURnB9kdEAKhAeUALmCTpW0qskdVIkSJ7W7MbsNsrqWGBwf0p4GPG9vjWCMoIKas
	 u7Lgh2qpbDJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB5EDA693
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255329360.4914.15029741005267699579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc1a32145c4c6caa7b708705f10ca9a0f9215ec14f2576d66ac149435c98fc9
Date: Tue, 03 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772553293
