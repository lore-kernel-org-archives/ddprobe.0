Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6FF1419A4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787366434; cv=none; b=RUTl1S7ArzWsQFmjnEjJ58zbkP811355y2+yDPrhv4YDYwQHS9P28FWuw8BgKIvxdQ6+QE33zL3gQNuQ4EgeP/kXAi9h8yjA6skyP0xVaZQJRbnhkwouyVM/7CWwnh/s/Kay+hubeDk88BjzoB77mK2KJ+IFvtcmdfgM37bqz6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787366434; c=relaxed/simple;
	bh=Alq7PRgVXOoZgXwsDdeWeW0cNhbWYM2kEhvbYS5JD6s=;
	h=To:Subject:From:Message-Id:Date; b=c3uV7YvBWmc4f4bL1d2nKja6kIo3HlUWMRX2kNb+Ic5HQxQdJOldz7zhLMC3TgQztCvvsSyeXXTOQ4SU/NBnGujOoZCEy6HRiLUqWVaj+lasJwoBZs5CN6GXalyo8FKL75dGXLhc2080gyE5AKJu/J7fqgqPYomFqfl8GkKhRtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDIgRc56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDIgRc56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57E3C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787366433;
	bh=Alq7PRgVXOoZgXwsDdeWeW0cNhbWYM2kEhvbYS5JD6s=;
	h=To:Subject:From:Date:From;
	b=HDIgRc56L5WNHhcnlNAkWJ5Fae0wiKvrtJcXw9MnEy5AUGtIx6Tf4SCDw05dGqUoC
	 wnUnZh7YS6kc/F6qv2OtjrWQx95u5P0b/kw7VaPJum7I3bwhruqQV1nYjzOi2Ex4y4
	 b83fgjtlJexxCZq3uB9CLEr27VnR8rrjz8AxaiW+i3iKrKFDogToQy2Z/VuarCrSVp
	 sFW6W2NU6DfuV7Kpf14bN+I98BuMrgx7pHB6Qpz2GP4hA24Mz5VEWMt0k5mysBraA6
	 zM+jQXEcwbCpzxYdF9BDH3FSPDTop6p/YRCdvQCyAQmOU+/n6LSjnGmaXy8chs7D60
	 mlA/4u8tZR4Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19ACC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736643368.23098.15944641011489373124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8a54bdd146de81fb27e6cf71db2f14a2c0ad97fb932910940f6693973289da
Date: Sat, 22 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787366433
