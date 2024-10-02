Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AE212C54D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727894755; cv=none; b=Lu4Ci5F5yiAA5t1MSCy8NKogjkPYWxy/p2sP9FLJZnA1SakVbEEir5M1flusNhG8tvvxV5s8yG19d4xHA3E6zDZ2b8fssfcT2bmpXuknz15kvYW3tABAPnFpEZYK6uroofS3muwEDljhh/AS2io7LYaE+RkT7Tr75YcczAv9DxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727894755; c=relaxed/simple;
	bh=Ewa8Li05rylKEvS/wXt3r2+IOVS4v+26peZg5EvHo7Q=;
	h=To:Subject:From:Message-Id:Date; b=n3JNAlZkBrfD623app7anCxpbgshB8CQyW9wrmMNlMTFZTyx1dBwU9rEj+DSaQCXqm6P5/vd+euLSs3+rEsEGF38LuumC6W94jw6ICdA4iFBizGWilgLegmMsP7gTHGezszjxUPr/6hhukByV7+GuNmEHzPSrc3U9lfWlWxVLzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgjUKH3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgjUKH3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC03C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727894754;
	bh=Ewa8Li05rylKEvS/wXt3r2+IOVS4v+26peZg5EvHo7Q=;
	h=To:Subject:From:Date:From;
	b=IgjUKH3TMW31vuLsn0uaPoS55uJuygxQLpR+FPYtwcUTTcAcutPMa6p+DGelcd7DN
	 8JjQsXScSzWCYb2ucfpMDO5EIV/oj4B4JoLf2pi5wz1D5InhjGNDskd87f+sJI4JhT
	 1+1GzynFW1HjfAPyP5RyzeMyQU9VYxLD3pb2JdDkMyW00fdzdmtB1E5jASYou8V7mn
	 csOgK9I/GnZzSGta8QNpJsHf1Ooteizwesl9trucuj00D/fStSa7N4Siqf3pzImcri
	 S/1T6MpPSn5pHUUr97WW+udjDh3hNbdXvfnmfPoSblZHTbCvEfTyeLtruzHbR+k2H/
	 N9a9A7gAMLKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E42CEACF3
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789475361.5091.5123380927845580571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d2beac34c59a2699cd7b558a25192600263742367e4074ce93996366796911
Date: Wed, 02 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727894753
