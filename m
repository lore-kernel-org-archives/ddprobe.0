Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8F2C138
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716366203; cv=none; b=j1txT4/bjqV8LNYJIcVWhgJYDh2rWVT8qJ98EIyHQKOFDNejGjoSSlnZq9JfBKJqbXPLF+rSoc9m7anrlK+n6V+YFBV4o+AHqaq8l7EQJcGyZ+FKCDHhKzjD10qXPPoHKmsyO2eqViQoDVkAxcHnKlVGBEFuGb7ulLG4iI4kX6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716366203; c=relaxed/simple;
	bh=Zufaal5c5+bauWK1imKTVEpXGHNOyu/PwNSp10/ZBg0=;
	h=To:Subject:From:Message-Id:Date; b=sPqAFtD1PfmSxMSrjK2vDxYNRiXsCCTDZci0IIzaq8Nr01DTTrMY/QZQMsvCW9IIY+DP7zduBFXqLa3uC+IvILseCu0QMfxiBQth3MxqdEJCV+EzlbAdrhcSd2DFAHLKZY8CN16Xdg6xDK9S2OpY7o0DVeyMVZNLKvqjMFqDDnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2KCsYXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2KCsYXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE20C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716366202;
	bh=Zufaal5c5+bauWK1imKTVEpXGHNOyu/PwNSp10/ZBg0=;
	h=To:Subject:From:Date:From;
	b=M2KCsYXXm03dHLQaV3LcN4QUjoKE0GwNU/6sVGng2ewFxaBC81Z6W1ZKFJpSEVrqA
	 7ppZErNoFkAibeGEA8HRnB1oJn1rvVowngcHGSDLrIV4d5RQLZlJKxcDBCbWHUNTG4
	 Rh1Ey6zGION5CIHocdC/vAlnzOYxNeRm8zRubqlKGNcoDEq4m/Q+04+bfkKIqpOHDq
	 7MuGsYN+tyLp1xYRwXRpG24lRK1qj0O6proDugi+5b5AqCLaXGIxqjwtSQBdSsYG9B
	 mKE8zSw2RQVrBL0s29TusR9qfvbOW+aV7NjpvnBvOkOue9OEE9Ek91PNsZZNP0iWWM
	 zzD+Pk9Mve2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C6DC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 08:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636620277.29190.14119266496596596930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd7806097af2d697aab41549bc31d6f1a9cf6484c83872e8da18caebaa3d690
Date: Wed, 22 May 2024 08:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716366202
