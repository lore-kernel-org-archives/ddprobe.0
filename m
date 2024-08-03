Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F962747F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722696953; cv=none; b=OPg4905MH/mkk8wAiQj3s6J8GivVizwLsp6bBXs4bf5TgQjmmdvuqNN/7SQS/zn/g8zR4pcioSpFi2FotrHX8429uboyccyKbJNvcYRxhDRlGL2shb+LT6epqxuo3Ytz05C+1J+F5V0i/ckDwv0r8pJ6H2wXJT9svowx4om9tUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722696953; c=relaxed/simple;
	bh=PitGH6fNSQXw1EBtG9BzBgNTvENZDE8VqvtJL5JhO+o=;
	h=To:Subject:From:Message-Id:Date; b=lpNAmOYyrCobgYpLe6FK94W2/yb6grJqwDHve2hSzeHC85hu6c0ckOKOZ6Gcq/FuJyNLoE2HZLxjz/C8VFPeeK1ummU1JGonLmhZojq7G/43tg/1nfxiwmc1uTQrcyTjMeLSGJF/hPKcw3IWrK6JOYhTiwJFrDtaWEtYyMfQyZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oracg6ed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oracg6ed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC09C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722696953;
	bh=PitGH6fNSQXw1EBtG9BzBgNTvENZDE8VqvtJL5JhO+o=;
	h=To:Subject:From:Date:From;
	b=Oracg6edETISb/6gjp6shFyybY9TLrpyz+TgNwxFpLzAUdykCFoM3TdTJ5GdYkTbS
	 K9kPKruCvvxIPZtUfutZ41BWOnk8OhdO2U8+QX2t71xUkadtj/bj2YRimykIDHz2WO
	 Ofz9UZJc81IrT7+CGz3j6KUV6s+Iy4LBskILrL0bJ+QixG7kIXhnrh+tl7EnFu4niG
	 sxCrdk/O/WVnpKBERRtDuke/hCpLJsAy/lOStZMvBmi7slFFHvPhG6Gx+bD+uoY046
	 DkcdKUBkvVNo9Faxd93/Rk/YdLPV6flTPeB/KygI5670oj389JpiRzdpurHTPWay86
	 +cQQ86AH5us1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16DC49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172269695368.21511.8602953196280502689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e112963d57805365f264050dce3e71375fb96178446db437d5d8668d71a5008
Date: Sat, 03 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722696953
