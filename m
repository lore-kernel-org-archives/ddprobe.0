Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548445221C3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789651234; cv=none; b=bsgtYh7EOXxtGnjMWTSR38luFNwGnNlw1M9egHPl0VuhpoNnPh/ySMQYnbu7zPHXCX48M4DwKn6EFJxxgDXhGEBXIjsEPytS8GLaYyb70Tz3D+BYKjnUyY5vA+rpwXTlzYCSw5ORUywxC4HjGkTsV9jtfTdmVGtsD+O9JeNAphc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789651234; c=relaxed/simple;
	bh=ORcS6Ng4bY9ATpYn/rNj5Nh3QwZT7hmT9pXKvfpWsHs=;
	h=To:Subject:From:Message-Id:Date; b=NnLEEv3wG8fWyefA0k0O59kTFxJbQCorbYv/ecR9ANq6Wa7LTa2xXIAbp8wfWvFGpT9k1bdWf58PAYoeutJ3+1IEGfhdx9Oh9Zo+S7FC8MvrsRJD6/kpCz6E0aW/RNVE8O2uCeWm/t68oK7Loaf4njvKKu5jNJP387/6Hw80//w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6LY1jL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6LY1jL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CD3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789651233;
	bh=ORcS6Ng4bY9ATpYn/rNj5Nh3QwZT7hmT9pXKvfpWsHs=;
	h=To:Subject:From:Date:From;
	b=L6LY1jL2aZVSgJz2dhmt8nzkHTFIJNC5EuBG4KGIkEhifAK2gjdxSvcWKanH/0TD5
	 qqQyhR85B/4zTi5SNE3NomGECvDFmi+AVZsamXdsWr9zpq4oxb8SW4Cvn4+lELNgDr
	 mW4sH6JFns6bFHU8es/O9Dl2g8JqYUA9p1cTKc/sk7qOEKj7MhtuwbjpGd/HSVHLsr
	 o3XkWcCapqMTKaY2S/KOeeUNZ9xACZQjGwkLadRVlgfCG14nLwdI2fHWo5uO9MkY21
	 kqfXhiJoIOEoRW+yx1RiA2h6T7B2/Np6Jt9eS4M/wCouJfvxwHW2YMsP5aZrKncYyp
	 GIAxSruZN9DAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC37C982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965123370.25663.6953850303342790552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e8ba629ab2f3b40670f93c0a46b3db9456beb0316e896057ddae282345b9ee
Date: Thu, 17 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789651233
