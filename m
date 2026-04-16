Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435EF248F72
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776364054; cv=none; b=YKt4045viRN106Gwck7h+pPfqeI0hfEwl/5KnhVoxoq5mHYfqd6a5ARiCWRuIdTCIbNjc/Bcxe2wBgMVXy8sfamPP6HspeVxiOVhILxBSU8At9XcSF4uuscL6duf0bumexxRSqFpmszv4nfGYzN5T44PifHmyycD+OmGatETuho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776364054; c=relaxed/simple;
	bh=hqyFS7mu8v/yb15i2MPb90MoY8Kn+KepQJ2BJagUEkk=;
	h=To:Subject:From:Message-Id:Date; b=WiIbVZE7bepEK22SmoDOcKLHhwMe78NMYeaJglZa9EfYfvlnnpyCHufmBf0Hnb0wJzcfFkwrh2diOUkZu+AlAIsM1/KASkAwrYlLn5Yyyi03h9SsbjhS+t0UHyGS+11VLb8ilnZV0wKSka7M1h5jM5XIG6HKwSwQLluSbLDlvvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJXxqXT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJXxqXT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C6FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776364053;
	bh=hqyFS7mu8v/yb15i2MPb90MoY8Kn+KepQJ2BJagUEkk=;
	h=To:Subject:From:Date:From;
	b=iJXxqXT7PRvS+P6KB6ZMBRHUJXmVnHnP6eFJCeDU05/mXxAEuIWT4IA79ejDtN2ei
	 Qh9/4wss4l8a+pO1/xUBClrevE7SWl82oewUf2c7Sr3N86aTNhAOjtOSkGObs2W5hG
	 s1CKqyHTx+9l2EwTthcObEIv32qTIGXLeH9xl0GnZ5RrPzoBq+9MbEY8UN9Lo0dRYW
	 ywsrY8D4himePl9lg2j/DST4fLzOFlJCTPqlDib7drKcaZT+fQBKn+XkZykaepF7Qx
	 Hua2FoGtvLCLhWCcHbH5UJmEmm7HTKHdbOBETKuxWjDbhtHlLhUarHIvWjiir9iJjS
	 e3VpVdHFs9Viw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5786F8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636405373.7163.9729708274086363704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77be91f63241a1e2e4590579fe56d70e1074f1b0eb93249c4ddc82ab5d4583f3
Date: Thu, 16 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776364053
