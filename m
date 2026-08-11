Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B9A3A1A54
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786477834; cv=none; b=avjQsf21ODo9Ac6cljWwyvnoECBnLFvUuyawPr2kST1XX1T0I3WM7X0wpO8WlwqNiccKXaOgXtC5THPeBJqFPrlxNzn0IQJhfBWAyKveV7CIGkxj3o8y0d7ARmrnyZj62FVW2nw4vthnTY7lVQVPPjUQ24aJFpYsLkY/VVz5YSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786477834; c=relaxed/simple;
	bh=qOVXNuZZT4i+rfrjn46hEBfzLip3Xvbk4sh7HNmbD50=;
	h=To:Subject:From:Message-Id:Date; b=d8o2Xt/ZIomTLtZyRnN/d7IdSHb7sm9YYMQUbLf7HJMvpaAZ0YZHLJwUwPqnsFWd0igDKJ3NpocMWAJGLEA6fG4XKfcdgv9ceb1y+5RuDw8Ijse982n3Xt+gpuM/6hM6zAm54rljAKJx28Qr1SsSO3J5z0j7S6c/06GC9oP7Y1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLWZIAUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLWZIAUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0EAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786477833;
	bh=qOVXNuZZT4i+rfrjn46hEBfzLip3Xvbk4sh7HNmbD50=;
	h=To:Subject:From:Date:From;
	b=eLWZIAUp+Ho/PtEbQS4K+1tA332C10Lw50vd7xoza40rBxa2md2P7OMns68SJXwWi
	 CI+awwwzTddS0rNHEjxe7hnniqIe3gEbs5aibtUlGGQa2MCulGi9vrNlFcSEa4DLsU
	 aofmpXxIZ1MLwTFiWZYy59AbSydVGk69bR6idCb+1iaQwcu8/m0xHytPXYI2G/ZbPa
	 FT/uX/bU6pLOQ4Nw7P1BWMmCo70du0MTx35R18rjQDA6nN95rA08y+0AFEWD051T3R
	 iZLqckIiHkW79ddo4mBAzp3Wvq6SNn9epETmxkYUsOosKRDsJGHDpApMG3aR/G5Zbu
	 1V47c8o1PG2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A910BC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647783368.12319.16558330479909381361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200947e3c769e891be6c07291b38b8e828c4550c2356966b642062d3554cb0cb
Date: Tue, 11 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786477833
