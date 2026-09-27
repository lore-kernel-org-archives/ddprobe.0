Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553ED367283
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790498434; cv=none; b=ss1t+PxP29MVS8Pf5VgEnzRlfE7tkYozNGFBD6OaGt9pRjTpCTwrd1xy10ivAkboS87iUYfWAJlBMZUTvlTrtQqlSIgJae5peC6r9fnNHzsfm8mVR0bw0hit4IC5DykxM104h+ZpzAfLlzM5oI0xTB8R64yF6faP7OIHnN3Ud7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790498434; c=relaxed/simple;
	bh=ManP4DyqaG//znxkj8wvlucPLbSPQzf+g0H+XDab8Jw=;
	h=To:Subject:From:Message-Id:Date; b=rr7TXTmhRE9sSILMCertUU65NyOL+xxub6f+0K/9CdFd2uQQvaNTGPsj+LIgXsFWq/4HTbJ5WvnTZWWUXSg26vzBRNip54e/1MoY5wj/6uEqANe8plLiaaC60xlK3BIaVxp1XRvNlhLS7aC06ATA1bVkZnsM3USdNr3ibaIaE+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YK5VveGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YK5VveGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD16C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790498433;
	bh=ManP4DyqaG//znxkj8wvlucPLbSPQzf+g0H+XDab8Jw=;
	h=To:Subject:From:Date:From;
	b=YK5VveGXl/+Exq+qDwXd+C/Tc1e68qoJ8AnMfhyAtn5nD5wNB4bc3yT7EDZAshYvb
	 FwDV3FB3dk07AlhAVTWecNZFvhbSek8A+1alkCjP8YsCa5DKgLU8rb7RLSMw19eEbQ
	 vBZ73kO0OKKX++wrBU8ey+bCIr6gaUQ7SqwXJt6eVm1LQuiuH5Fbc6BTb20zwHgjNW
	 hDz6Qa5U5wJbjVyjEwdgxYE2QvOsN1Lv7cqW/bI9GJb5V3rLwjNNxGiyEyQxCHE19Y
	 0kIowUwkiL9AjkzQdN2/DsBc6sotO0w8UZpnjPepqZEQLJCvzj0dIyG6AhiQ0lGXFv
	 TxDJaAjYqThKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4FC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049843368.18437.8624817370382790364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1c531b297376e09af560c240b158ec92395d68599bd84a48c53ed641c1df62
Date: Sun, 27 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790498433
