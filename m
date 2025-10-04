Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197D5339A8
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759540194; cv=none; b=GK5mjD7kRZ5Fm78lbitRjggK7xcBRLTSE7iJnZjKitlnLnuJENMiRZHEzNIJQpP0GQnh0HuXOCZWlcSX9L27gjbZWne7COWzqM7ns4ib/UE4mNMtU3EotJdgdtPsJAEeVnlVEwk258kDjUxiDSGF0jHmDVFWjDQkCBc70Mcd3BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759540194; c=relaxed/simple;
	bh=msSn0GtPKN10fcecS7JuLprxtq9ydSYaDfUGtFLEifw=;
	h=To:Subject:From:Message-Id:Date; b=qFX7NXIC9xF/wUPiqY990G/H56NmUBWdbfjrB3gQxrPkg817ErzSkdSjUphcHZui653ZocXlYEmoG/ymZcuxVfH14PHd4R2G6CyWZr3rxG7z76bYMMm0xzhofe68jfgP/E4Mmzm1lOM+8J6iQUZ3pEbfQ2eyyTINmFmbvYVX9hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVe19Hmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVe19Hmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759540193;
	bh=msSn0GtPKN10fcecS7JuLprxtq9ydSYaDfUGtFLEifw=;
	h=To:Subject:From:Date:From;
	b=TVe19HmmAsvv24oSbo/63+014Y0aeohDaIycyrHlBOBOPUE5FhsqbnMyM1JShTQYZ
	 5eNidSfrPDUk8xYyyfeCpCodch6NRSsjiM58YIli6/KcX07XP0ghgLnSI2hXOu1WVI
	 wB5sNblfHQDG4j/K08kxdIgDUWml7gBs7v6WKtEI3E76F5c6SBcJzS+UwCTP96g1gD
	 RLPiQJCH6SbHHg2qXC0f8gXpfjUKJA6+3fftOCeTBtDeBR1M8opQ3mWPI05BXzq3ix
	 do1dz1mfBynaqGpfznFDW0MgnfLdHy6di8kPF3TJT+rz9fp72CmT8mOT2+46lGhQi0
	 POsj75gcN6wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367ECAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954019358.18749.10758020312022326086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db57c1620a51e9764066c0ef136ef6f9e5d499563bac62b83377108c0c9ea63
Date: Sat, 04 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759540193
