Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E9EEBB
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749376194; cv=none; b=lSBMtiIu0Fs4cZ/XX7Hb17xYTIOKIGgHleH3kClfXGW0XHAb9SKIEOHn/iW8AF3HDPsKufWugnH/QFQZS1SPVAh0RlR4EdHrBMlfFjIKB3OOBtNfHFqgnu7cxMbwCi4SWaXm970GEIU+Geez0WwIBOkYgqqeYxHzkhlsXDHO/H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749376194; c=relaxed/simple;
	bh=Ra5my2z1S6XTFmOuK5chTwKvXAFLL61Dn/a5Z6hKO/4=;
	h=To:Subject:From:Message-Id:Date; b=YffBqbhDQq1s7exqwRkmQWUwzUf/ls2JxF9qLhsTAMm7MmV+Ivqmps3rcsOjpXvVHkvFjZk442ujl372JzHH2H46Oo98KzzjSmUeDO8EUHbUqfAfYeBkqAYJ3J1otuHDCnpgSew7DTKI/FjBPFT+mlIQcFwV+qlBJH29C17kKHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8MuDAJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8MuDAJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AE2C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749376193;
	bh=Ra5my2z1S6XTFmOuK5chTwKvXAFLL61Dn/a5Z6hKO/4=;
	h=To:Subject:From:Date:From;
	b=C8MuDAJTfQ2RrAvpLz5mHL3eQj3hGeB1vIBMzvIZmlBQEwGk2emRVoKZ6j6kToVHc
	 Plow3oKiO06fLznoT2Ff5FIpl/kBHf91BnJTEQmCzEhjptzv1V4tCGpfWbKsf0YOLx
	 MkqTafY4LN+B2G9TCFAtRQJr4hbue0Id1QO1X2/EPS3mfj5PyASpogFJD3jxFDvuGE
	 F2tp3n4iTaYD+mfAAJlwSZEMrhvBNbpUdwjr+Itn4GwwprJVeZse83TIJMdVY70SVw
	 5+zKFMLU/Ci+sQX+SU0TaIdCH3TbTGUYGbag9bKsT5h+HLlJV7SkDHfreDl3cb7zW3
	 Y/8AT5fEatxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F010C61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937619357.31402.16227238340987892872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40bd24ef9cf35f0290eb266b9405f5b70554ba49e9ff18d58f123507798e1a7
Date: Sun, 08 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749376193
