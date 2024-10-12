Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E92564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728769554; cv=none; b=F5f+a55lhYAGHieNkpzWEyhk1FiahQjift/aZ5FdBRsvIPgdrsuD2pNO3rghhrqFhL2mFdUa6KO4F6ScEd9q7QzgSEoC+ErWNPB2KdS6LHrg4UVY6asPLnwq76/9rZERacDS6ASiphSvbjy+JQ2u6lw0/gVt0qSFlEmdo5WvDNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728769554; c=relaxed/simple;
	bh=u5ibmUXBJqxN+GrlGdYl6QTEMP1ySIzO1TOEImI0G54=;
	h=To:Subject:From:Message-Id:Date; b=h3sr83fvFl/lmdclbYzKFWfimPvK2kjYs2pkXKyxEUSu6sdzndyTNiFQfKRjVN60gwtwbh3erkCC7XQkMLKQcfopMrhXXV1wuLcfQzj9votTJcCEVLAmqnmNp+GT+tF67th2CRZV43bS3uT1OfhKT3iF2nAKacguEPhAwug4svE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuL1WKey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuL1WKey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF4BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728769553;
	bh=u5ibmUXBJqxN+GrlGdYl6QTEMP1ySIzO1TOEImI0G54=;
	h=To:Subject:From:Date:From;
	b=MuL1WKey1zEhhpVJkhYYlySqp7sjIAM9W4si86+2Uu8jhovJ8+SGIRzh+Yzn9ljle
	 rBN+2glrCJWnIho4LtVnWPlqWO55X8uYuPrXj81g4orAXSpone7ydq/p2WaBIvMuCr
	 gElEFnFq30130jkVmO8rveQhK7l+PZWOHpBue0CSOyxL2/4bcxAADPQGa0I6ytRzJ+
	 lNicXY/M1Ty39CriAcFyDZ4UHEaohXse+G631yW+Pk8N1B1ehBm36fkBGxKBreIILA
	 WqBhckPigNSR36asyjCXE3L1nZarB0clTOOwy7DzYMyPBcwLbXojMDqcltRFxu0kSr
	 SKg3Ozv71/UMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFACF2587
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876955359.19407.9809590264683541570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5713b2c700277ad896606c08ee1f6e38106f1e77d729d239783e7fbde6baeeb6
Date: Sat, 12 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728769553
