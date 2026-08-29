Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A67A338910
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787980834; cv=none; b=WKxoEvrJ/uY6ALmMsH3zizJz+NJ5Mcnz/YJM7OjodymVN6KoMDJpYGXUocVb1q6xIhwZmhK42sOqtddoB/62QTPP0TfVCoEMiTzdal22DS0CZNX6TC7GFaAwEYRHo8IoC5yGfGWK/zp7wQ0/mLl4cGAkrjMB3dsugQrLKWQsBUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787980834; c=relaxed/simple;
	bh=KlNBsW9S1+fdnhI0/Me39uhP8KKmjABR2Ptr5zvXU7g=;
	h=To:Subject:From:Message-Id:Date; b=jWjVzTQvIxpqBBz6psEdUJBevfPyELT0tY7zLEY3UJJXsZDNy04DgXpjd/EHGF8XhDWm1e6kADTbohb8FNHGkjcvQzrw5VNBhrEmVYen5qWP7NX2TYECGadIXhv85d7esdlkTsuFM2R/buMHGnBk5OrRhy1wU1bI5yMrhC3llVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJpoSZVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJpoSZVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787980833;
	bh=KlNBsW9S1+fdnhI0/Me39uhP8KKmjABR2Ptr5zvXU7g=;
	h=To:Subject:From:Date:From;
	b=SJpoSZVSLKELJExZBNH6cO2qwQ3K1BS+VBoojshJmMZkl/X1qP3lac0Wg6yvfLl+Y
	 3XREYUSwo993ipR7mRSrqlwCwlWu1ccK8pPOBl0m7S+k9HZW6//83sKF+SyfdqoD8W
	 yNw3ClLI0k9pXZnuspYzynSLciy1n/5dmu8zMKoiT+TdNX1IoZlOikGYXpTZhDWEJN
	 6N38qOVdPqabdFlECrebihOMkjSBiqsEUpYjuMQGHvpRcaWmeTmYHZrrM2Df3TyK8/
	 JRAxV/VwfgotkXeL69amGu1g6DV8CwGCn1VlG0i9XiTFkan9f6h/x1N3PTTIAnC4xc
	 kflEi9ymBZqiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C0C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798083368.9340.10720436327345944376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e58f5624d9d6fd55596f417cc07751fbfa0d5f8a9894eee2530ab70fb4916c5
Date: Sat, 29 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787980833
