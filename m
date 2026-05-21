Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182C6242D6A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779397354; cv=none; b=W7/QpEP61bCb7l2xFgDadNdckv9MWeXVkUwBZ8q0maMOQv+wKmueQ32d8RJ1nYdierV80NYC1G9j31/BrwF2jHY7phRA+ER1UcS5CBQDr+Bo2ohvgid81/ohkmCrun8TkwaQEe+z4RxRcHTRAzN+NgpXpx5UxX2nkf1twwTQ9Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779397354; c=relaxed/simple;
	bh=dOeTeFvgBP/sdKJf2Ehyr3yfw4mDFsNKaAQjFrawq3w=;
	h=To:Subject:From:Message-Id:Date; b=cjoRGt4mZDWdKukOD2MQ6wTWGZjRzrxdaiMWxakTNY/dhjiI9xKJIhcd6x9S8JhUKmcV31cPVhtrBAc+ralmDvLTKtgJCVAsOxk79m8r7XKGebMu39PKiV7ageq9h1C3+0K3T3WB6JYAKhzQvdmvJyKvgVyfyfJz94OS/WM7sWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SynpABFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SynpABFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8883C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779397353;
	bh=dOeTeFvgBP/sdKJf2Ehyr3yfw4mDFsNKaAQjFrawq3w=;
	h=To:Subject:From:Date:From;
	b=SynpABFS/W3wq99h9ZUgINH4oUjh2S2VXO/eqlfHeR0lUpuY+WFj466g0bkEORlPz
	 luU9N7n7Ef7pXPkgrdZ48lDxUpM08YlPI2I3/rBDI5A7OjM5x6kDyHDazGPDLmbgp8
	 TErxoE1gxfpHlldv/IZ02/j0OYamKm9jh0PGVIuDvQYJgyg4we+Fsjf9McITdEnYib
	 5/hWa5p+Kc9jNj7kgdz5+Y9LvNVlBU6qQWkY/b2zapTLwWhacZZ5OkSD9CTCqHPsva
	 iUliqqVV5cKR+iNz7BM70ymuioYmb6xLa1gTdJSkURUuFWreOSgkNH0/YNsqNjyW73
	 LgNhUWMca2OHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56CCD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939735370.12874.14262031155738731758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feca98852006f4fb821bd9ce8a99a542a6f192939e44970019a5f5a084d98936
Date: Thu, 21 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779397353
