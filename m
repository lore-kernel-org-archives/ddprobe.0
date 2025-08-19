Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359FF27F732
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755622194; cv=none; b=sP2xNWGNpB+CR/CSHLnKAY229AXf604dnLYGUFcZFpynP9P9WAl4ag8Nin2uhLM9sv3nvds2tZ0tfWRSZIFEbWMrqsdX+tiG9wWiE4S16qRBxBF879eADa/zIpJ7DU6+MrO0Ofz+47GMw1IZ4EuwKMaorr4dYglVI2ucaDTHCaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755622194; c=relaxed/simple;
	bh=SX/XGRkMS4k2ZRiD5/F1vN6iX0hWJ2IqHyMMT44auv4=;
	h=To:Subject:From:Message-Id:Date; b=qNq4cyMjwliieMoHoJ9V6NCdVnUenU8yTfGP5Q22y/9C+eFkrUpbit7FRqhPbK7u3rpuMvz4C8yFQ8QlExm20eYzKEnxKoaYsnn2ViFeOKU7abxWb43nmRIV92CegKjDZDViWMVqi0XRCRdl6XACy9J64akgDVSDbGl78Z43Vo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EROWRqGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EROWRqGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ADEC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755622193;
	bh=SX/XGRkMS4k2ZRiD5/F1vN6iX0hWJ2IqHyMMT44auv4=;
	h=To:Subject:From:Date:From;
	b=EROWRqGvuaqiOJueiKmWEnlyVWmYFAt/90xtXORT1um4e0keap+MUc+HHUJKMFCbd
	 Ku9V5PTidy03wccPhzUojhryyxMHqh36kznf2AnyeYq8q/134SK8PQZ+zdikJNFlHF
	 zVRvfstjFCO94xIerarLFsE/7/QLY2pd697krEXxA/w5DINXe8EwGbZJAoHx7xuOPU
	 S67GovHm0pwpZuv+oHLROu9BbM/wIW2cdb20sh8tqkaZuBLRKp7rpERFIa/GhRQF4h
	 wGzZKhfXlumjEEcrjZtSFlVzF6D5q/qgoyskYtOD58UK4f4Kmdjy5PGcFKJlXfmZRh
	 OQSD9x5vgD4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9276ACA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562219358.26963.11630974591734972669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e47ba47523e23d0519c919256168d8d09956165109b4c41623b0360213b8b5
Date: Tue, 19 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755622193
