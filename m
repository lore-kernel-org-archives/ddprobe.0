Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBDA2E36E4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751674194; cv=none; b=ssUSrCaKS9v8NqNvRms51mQn3vgiZr+hd5x3YlusN0p4u1jfPZ5Em/KLdMMZCKu7DseyQdqHD37AsUU6WXZ44gYb+GmpQZj7dnhl2Aesfb2Yl9kPldOEfHzoP1/du3gsDuZqWAHusScJUxsJza5b5CRqqXn8oI0xy45jPMde+hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751674194; c=relaxed/simple;
	bh=j7QyfDDy5SFRarS3UCt1jiicUuNYXgtq2ImI/ErKb3s=;
	h=To:Subject:From:Message-Id:Date; b=XbzxebsPwLHRj3weuLEKWBgOsgSZhf2gjqZphzHGAfitp3egn/Uhd3Qu7WKYHh3AIwa/8uQUlh7PcDFmBWwmYr8O3K/FjOMBooLY+gBL79HhPUZJ9YU30nhrXnWIuh9HYA5V5fWev6Oag6IJEySt6ZSOTMrmlMD0s94E8CiSWqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnRoNUUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnRoNUUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81BBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751674193;
	bh=j7QyfDDy5SFRarS3UCt1jiicUuNYXgtq2ImI/ErKb3s=;
	h=To:Subject:From:Date:From;
	b=EnRoNUUVr4wQpm6TNTBWTrMUAH8Xh8azbqgDzO2a1cARv2ylu5wPJIgq3ooTkhlBM
	 KZ/gcZhAbuCPsp0OOoeK6DMecSt3ERbD4aRAkvrhAsbgS69up3u3J6m7SYPv6ZQgnw
	 iXN5amHkG3wZzrygj4EDIKWqhbSxFRfXubBlTirtT6ChiGh0v+9+XT1gQLKEfpIAFb
	 kUiUMeo7E93t5d4Yd2/2D7Gdx+r4RmcbRva3zScEpGgmCIbXNfat9+sMPR5KKffv0T
	 4yBD+BQTmHV5UkmL+qgw4rnpABArdK7W3rIw1lxZEdOraHIFg8HeX4KhY+QzR0J0vY
	 Li9xZfzE5aZqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92707C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167419357.7354.1553757690505106130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6034ca339627c015fe359e1dd094daf9eb2eb80a0af7b81e4c0c05fe1af4a0e8
Date: Sat, 05 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751674193
