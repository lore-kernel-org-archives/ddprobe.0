Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B83A7F7A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780382074; cv=none; b=KsmImrhq511Xg9CHPq7NoXQi1OybHtfzynh/dlf0iYKnh4ZQkcHg1xDkvNlLRxlK5mcTLzAuEwQCtMLtbnMt/dG19LdMNFKAPQHMWm2utt5X88ELvAH4Dna9WJAZ1AWqNFYlpIpdgFlDRyJYswLrhFDhsu2yKuNh+Y0imRw1Kao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780382074; c=relaxed/simple;
	bh=cnXcj6HkYA9hPC2mPl/9XU/kg4BcFv2fX5CkQj6gGVY=;
	h=To:Subject:From:Message-Id:Date; b=Fg9hlJVuKiJZ6u8gphahYDoQz47amclSD+/ZBXRIcEJcf72ZCDVHdhbyacGKRUASU0XosPZe0fR7nsQHJEVVZs/VcPM4Y1/Mkw4q5hlKBAM8R9QrSgFMx5/PX9Nn1x1R4iMKB5LBRz3jj8p1A/kt4MWYEwPjl9PL9SeTwZ+RdZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP6OTG6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP6OTG6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B9DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780382073;
	bh=cnXcj6HkYA9hPC2mPl/9XU/kg4BcFv2fX5CkQj6gGVY=;
	h=To:Subject:From:Date:From;
	b=DP6OTG6flZskAQVCsNBmCS9XIM7ephiAzOv7kjyL6nGD+0R0NSJp8g5DvZns54nYg
	 8p7+rsPHFnB27UTtX2e0b7cpdWeRD03tiqh+Mm9iviNfStK+8lUBERyq4N2qDjuki0
	 Fo+QIcr6SbBMGKtrxVXlu/7iucC6CgXlFftZiqKEmvHh+ShswCJ5ncUG58ydEkB45E
	 sFhkvc8GaEwgVU1xLGAfp1gRSO4bQDF1ZOeJxC0GhAHYzHRVi9MOtKzkP7jBclHr62
	 lh5GRBXjWDX9CEna82z/YgBG82p02aqmQdXQUC63U37U4ILGGq4NPoajhTI2lEehZD
	 6aSZodfnj0/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E0CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038207368.24466.2548934439807300425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5165299fe22021b38a595476aa8b52c9a28a21365b549961e26741ac8a6526
Date: Tue, 02 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780382073
