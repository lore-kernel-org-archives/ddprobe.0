Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56983233134
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780743874; cv=none; b=pmmk9B3BYK1zdo1knnCQQNigDfRpIr/e7ZH0oGIj2gygCsy/QCmaailkaaPlMgBqTU80kavVOSysu/ORrg+kmms1zB8AXpVzeJoYCdAOh5R0mhYvg/iE7YTzcVsDf1qo/5KuiL8IcrzQSIb0rgFhRPftoNs+rNnm/5C5sybe5Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780743874; c=relaxed/simple;
	bh=B8kDtTY68E9rVm+66vF9hLBvIG4Y9WF5srOCdTGPUkw=;
	h=To:Subject:From:Message-Id:Date; b=TocWrAr6EfA1XIvQEmSH5RJ+WB5S4jM6ALjPy+I5sVyt47EKD7c+0O0dWxenDc/I4gKIOrHMq0J5uTV2z45vdyeBuc2MF+irhFvSksz8/FrCGYwG9Wnnr/EptTUi4PPStf935yHPUN/GFcXaZ3zOgioZSfI+ZIZw8rKbu8kWl8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFFq+2fK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFFq+2fK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4326C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780743873;
	bh=B8kDtTY68E9rVm+66vF9hLBvIG4Y9WF5srOCdTGPUkw=;
	h=To:Subject:From:Date:From;
	b=gFFq+2fKNRf2NGDkafmUGE1iZ4GUQitErS+IzVA+PI/Yi9fqrwRSqme4ocE0wcMqZ
	 mHM7YMh9jD5Ybcw/pDw1O85DgmQTH3GayUIBQfHTcrXJgQX9zYTxhNoRg2M9Sc8UrE
	 Iyi3h60dWylXmnnr1Wi2BRGukbAV5VHlw6YAb3UguhwdJU4Hqjpkx8b3TCJ3xKnRqf
	 +U45FG72bu/ly/f3XbQ8RS/wks1rJgX7hNtlK32wuqhT91+OZGNg+ETK884hLP8zS9
	 +Wx8V5ARaf0wX9P8LgCv9RG0GkhuyRQ/dheehmznycgzpz60li2x8sxRMzKxlIy3UQ
	 J4PNs6MGKSNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EBFCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074387372.13328.11087290285441960306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe4a93ebef2fce09e901b0d25ae22bb0b89d4be55718108346d47a0795de3ea
Date: Sat, 06 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780743873
