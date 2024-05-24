Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B037816
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716513803; cv=none; b=ueOxQIbSLxL8b/ZYJDuVGqjYzm/yoq6LPfgZ5GdbdWoLcqa0lxQyWOH2rL0EPGdyolU2/0b3H2rT27jPtEnPCAtDs5qMslCQ+HS0x50XvnAbdAUCsv3V7uIo2LXN9i8KY5WBoVdWfg3laxpKDBbOqX7aTBviPOYZrRIuWNia2Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716513803; c=relaxed/simple;
	bh=cppSht0f9UebPjUIrfdF7o0b2LVRaAjlLCVjp9PKbZk=;
	h=To:Subject:From:Message-Id:Date; b=YsFGIpXOm/avtClIJH5GlqxKWHj47ZvIazGwgfu3HfIHO4BHr11Rurs4PA3msAHRDaJzkpIxXEfjR5ja9Ttm2zSbgFoWHyu9pygq4CP+ivY8atkrPsVdoPEgM5VV0CsmwKQ0+yFTpe2P8TI15CeTilrNPsiiNjvMQNIYyakQRgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5Jwn8ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5Jwn8ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4927C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716513802;
	bh=cppSht0f9UebPjUIrfdF7o0b2LVRaAjlLCVjp9PKbZk=;
	h=To:Subject:From:Date:From;
	b=I5Jwn8nsBXM122bsSSFPdidznyLUTzepOaO8B7iNnibYRJhzQD4vE0JLcM7CP1gtr
	 Kt9TtPwc2gaP8+1it2qJaYhWwQPhMLmRNh/yLB6j2+sdfPVgwHpatKxWf1URQKGgCf
	 No34MSvhG11r7Onc65Uwssc9WvyWCP18WuPU1FcDpnBUU4NWfBjOoQ2ATRlBHLP+JL
	 hZXNfgzYjB2IRepjwyzpyBzgj2RRwrYmBP6PUPbcFAaVo8YoZifSZCtrD74ujTvrBe
	 KSppE9eruqtFE4tzJ/RnfZC7as60U3+3NgfLK3iF8MweEqtU8/2i4glR0lDwY7ApvP
	 NmmjeEYCcBcwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0920C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651380278.5914.18270844830497054483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668c17346cc32a8558ebca4bac94155324f500df1e05509f9d9ba45a3c880ebe
Date: Fri, 24 May 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716513802
