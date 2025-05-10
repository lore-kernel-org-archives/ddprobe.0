Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392407E9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746893394; cv=none; b=lWmnYghUL+7NgaoASSMa+IhJkGAF9AKgCa8abusJzhR98L66W1Cd03W+p/IqwbJ5TCHsbJpY5ATZrOsT/1oxYJ4izsMB9HHJzcGyBfHlQzg5Zym4qSq19htiBuqAX0c82zubwVcPzmBc20XAbLmIwx9FxhEHPvqEOBSC7keE9Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746893394; c=relaxed/simple;
	bh=Ekhi+eqjNrckw2MpjerwjC1WpcnZWeEch1Dx64zur1A=;
	h=To:Subject:From:Message-Id:Date; b=C7FulD8x4EWNn3a9uJD7BHemRbNpUVWltCGtGmU4GtzQw+0sCN+Kjdq+gNEt6mx40ykUrOK+ZW0E0oQ8NXDKzk9UC8K93ySMezCtrYSyQockb3qVuBcDQ+T+Ie2/PxCbu7iHanQZOOVNT/oXnJH3nml4F6BSMcfnCCJaCdcdqUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpytlQTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpytlQTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C8C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746893393;
	bh=Ekhi+eqjNrckw2MpjerwjC1WpcnZWeEch1Dx64zur1A=;
	h=To:Subject:From:Date:From;
	b=XpytlQTbx4jzB1vvtLgEHVDPHU8P5bVyDIFootkTA4cLpuMHOnYfMy+9LyutR8oYT
	 bTz+K2u/Ouj54kZsR+qEsJPRHdjxRuwelp9LtWIoHJudmVHB8zEO5O4FPDieJL0HTC
	 ntWJcgDMxW42vW1d1asEUkbqs7mdRvMsYD28F3CSDTRRHl6gnUkBhFmNtZLGgHM63t
	 wDuOby6tb9cO8JkBeDupiBvHx0xms8L7ouHB/XlHHijvbYAIYw5bFSfjPrRhaWqJdI
	 kJCQzo9+R2ugR4qmLN19oA3+WX48XvLj11VfcymOT198OuXABj1TD/065YW41Hh5n0
	 BlSrPtXUc+kGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CFC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689339357.7047.4430514435249705447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f94e1c62d6a4804f5925915b0777326659492619a9579de01a6f402190950a4
Date: Sat, 10 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746893393
