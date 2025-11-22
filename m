Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25164F9C0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763823114; cv=none; b=WAuEGAHasG8m5W62sgJvpUWQHMs+O4sANgsz38FDDEvelTDcViwr7pqn1BZ0ebni5MKjQXRHjwa2FPIy/oINjtOLWHStHkf4fk3+quighDuJfxD1tl2nFnrx61fECQVkiMrA2cjA3FH3cBZG+zAXcR82wPeaU4qDVhScd7SLcp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763823114; c=relaxed/simple;
	bh=sSRCgIjjrqNqt29ez5lf//Py+SwBueNPjsiDYk/2Ydo=;
	h=To:Subject:From:Message-Id:Date; b=SGGt99T7/AzEAxgDkUxBQPBUuISlgMmWKuOT94aFBQI5MaujMWwycDeHDuUCzivhki+TussOS83zypP3lnBgpm8vt1VZrHfzG7+2of7uTiFKdoqLUTHj66b3+m6L3x+kcA/pQLLDaeazYPYErDXlvi47JQUXFxwbgvGGlYH4wUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zx03H5Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zx03H5Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AACC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763823113;
	bh=sSRCgIjjrqNqt29ez5lf//Py+SwBueNPjsiDYk/2Ydo=;
	h=To:Subject:From:Date:From;
	b=Zx03H5OfnTiWRGIZOocgL4AmHQCGF9PI2u9c7KayQV8AH/vbxK4ShVWsBJ838w8Il
	 qF6tdWz6+jF/4wuoXr6Hu5BrUE+jwF4sxB9LdwJCAiehidHvkCaaBh1NijqgPU4Ear
	 xYWDdMomdphggrAMgnBMQ6W+r1VW5Ieu1Sc8AEY+yHpdcjg1EYEpzEkKwsg0lsy61M
	 Wrt1yi6mjLEXZGraMQRIm6RUdulzPWWgT11EoRwwkVidNjc9dju66uDA9jqWiB7Xjo
	 4ktb2pDqImSNoR5NxbridaY48ck6SDYWNgJkoPJj0C0VHXGp9pSBZiM8YtfBWF43yz
	 BUfePKxUwoqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C2CFC538
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382311358.4529.133012537159278436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634d6a2b963580a9c118b472efbb1499e417c432bb06cdb608c8b01e08a83696
Date: Sat, 22 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763823113
