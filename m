Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636CA4A2075
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791636034; cv=none; b=V9jAXZMB/Z7kuL3BMU4z7GUC3Wg24TSfUg+nJwLTErNKTwbLnCXQzATAmy4iho0rna9CbKjrPnT7PikobKGEWuVUjTRSeD1GZ346atJAApz9dPNOmT2JK+Q5uzzN7WWG8oe2oZmvDqFB3Dk9U/ig88KwnBxwbiZhUH8wJuggY1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791636034; c=relaxed/simple;
	bh=f+PvASH+WUlJu15pukuxAiUkSnvG4Bn4kMJKkq8gixg=;
	h=To:Subject:From:Message-Id:Date; b=nRQfi/600dtz4ijdjU82oOi4XQeF+G9Hq6Ioc36KPFodLkHHWW+PchMElhJvXdnGasgZzc19ktSd7Tm+DcK2nRpwsaC1+I6Wrpqxs6icQi2EA2Jwbi1x5Kbt7O/ccvYMunIzQKe90QfQkjm/ZjT7zAcbOJuE3nUigvgugEKphlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ+Vi9Ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ+Vi9Ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6081C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791636033;
	bh=f+PvASH+WUlJu15pukuxAiUkSnvG4Bn4kMJKkq8gixg=;
	h=To:Subject:From:Date:From;
	b=LQ+Vi9LsoYElISPtsEYmtUzi3eQ8iaCSeXs59rw5KNE0WZJkq39N5jJe4zS+zro6T
	 17tdK0iSxaxnb+TUbQIfI+xIbxfBRzcSfM5OgDUov8dzd6WpzNhBgTIKLNVeMlwxJz
	 GDUGKKDqnLcMdJzH8M+AAhhUCb/2g3C82HzCiKwi7M07ellZks/KCCE94Azsa8+zxR
	 KCeHyGhYXiIYc/lg+rCpVWSJftXXbd4M+ADr+1AZdnDkKT8mjB4ML40182Y3vEikff
	 ZsNIDCOr7CF0e2amBZeXTodouokCShnD2/5nwH5rQVNXUWU7T+M0WByc1Jvr6LXnGg
	 J/QBlp/3f9h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC493CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163603368.29601.18163254914500672911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad363dbefb9e9423934188261391a9c4bf32aeb481cf32dd0a0ca1f2f1632b06
Date: Sat, 10 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791636033
