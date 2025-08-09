Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2591B1BC5C
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754756394; cv=none; b=DZMNRenQ6IEjdgRIDVwmm2Gngf9vsf7kfSIYHRYKfaPFV5+A+2cDZCjBANFcdgBOdi/+0gnD8myutCUSmIYiqUhnhzPGCv7N7GqLYdhlgEV1sgNp52VM78Foh2wMTElTMttitY1dLHGJI505VpWdPXfXGJHEcT3p30JRABrZ1UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754756394; c=relaxed/simple;
	bh=E8Vsy4DVUARbb7lb4ZyOx67GjRag8B31TolqIyXg6HM=;
	h=To:Subject:From:Message-Id:Date; b=EZLWncR3CGt7NP0FEhErwGUsAUkbJdjvuX64pI6LdXrhQLK7waVA3hvzyjNPGCob5Cjmu7X6iZ1bEbJF9hy3eVuInSi2RntFSRoMIY/xg8icdu+RJ9O3iC7i3qCszrXBe2cCcMmBQrPOr1fKDVfyD/FLS3NBaTrNVkq+or2cZIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY1CHIRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY1CHIRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96D3EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754756393;
	bh=E8Vsy4DVUARbb7lb4ZyOx67GjRag8B31TolqIyXg6HM=;
	h=To:Subject:From:Date:From;
	b=pY1CHIRT1JGSgGkvgM41eEFpfBlmPARkModcnuYOFWFs8HS17os5QFJhT/q1xD2uv
	 wzRWIEi8k/Zhz6MCmqRW6kcmtb5rtaz1/ts4nGwlyrYdqxIYtnKgIwoA1Agjny2wxH
	 5gmREAqY1Qdj/xQ4OIPvYzln2JeWLzp/ZHuPPNQDbQsKkPdb4C0QLWk9QtMgmX5gM8
	 EUOkdFYWiIxP2Rswn/TfbT/+CGZL41IqL7t4PHiuDNApQMIAFKN5zLRHbwJ/betS8f
	 5XsBiNwIL8xIx7VAK8Mr57lS8csWTw3Y9scSiTJx872fmdcEylPSxuQwctuPHg9qrp
	 QRDtFIxjG9jIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475639357.18411.1023583910151792231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0990e4b3c11279e7b6c672a53026e41202bec3287fa12e47103be29d8f4fc9
Date: Sat, 09 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754756393
