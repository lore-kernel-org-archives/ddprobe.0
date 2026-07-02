Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6E2346FB3
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783010914; cv=none; b=AF3zR50O6l2JaSiD2aIDpkoWBjZo3fRAlVgJfnsytn05GNhj06aZ2ayh3B70p+roKuwSxISDOxF6Bw8IffpG5jegHJ8lKEr5cSvMmiKt5iPyGUpawfkgNuYU4rolu5B6RQ1rgjGqqWGOtW8iK4Gyglbq2ZHOkvRUh7Ja8Eloqwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783010914; c=relaxed/simple;
	bh=jbsTiqM5dyvclEfUxke9Byd3gGD240z+Vu7Z/8r8yFE=;
	h=To:Subject:From:Message-Id:Date; b=PGmPBWZqgBjXwOWx5Ga/o2D/Ex+3+kR+uXR8DRhT4usKimJx9d566kAQ8weOzzZIF0ei+Tyx9V47E1WSr3LESWBmdh+mQVvcWnTyFEoag3492t824bSdnVwSFHZpJzCagtzSQZEkCMdI9v66D10SixrxsixCDGM0OnMSGYCG70o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPXCrYJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPXCrYJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAAEC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783010913;
	bh=jbsTiqM5dyvclEfUxke9Byd3gGD240z+Vu7Z/8r8yFE=;
	h=To:Subject:From:Date:From;
	b=CPXCrYJw8I/OY8IGQSPAJ/JD71SBNPBcldiLp1KJdCFsGPfxr7b9wf1y6V1uOpviQ
	 agiiMj9Wvi3j6d2vWuDO7zGRrDjdfW3MeFmsOWqybUTQF4/+QvxENAv2f8k2Yr26LZ
	 rTSf1J+Ib2VU2yY0KFm/jMd4ECz1ougD00JGGjDTEOPnPA7gVgot77ZXJxwv2TEEk9
	 Etq6VJU4zoJLeckhtN5Smuwbc7T6uaSqFD3x5ng67E8otK1BDNnsV5UxHm5WmCqumj
	 FUBHd48nkSGkaWSFAchrdq8/cejg1trrJqszToJvd3339ol5FinVdbQuUKsmf2J+kx
	 FqTpGPoldS+Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962CC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301091368.7365.17672170824014087757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f420ae6616249acd7fc8d18272c7c1c693a5b580dc4d261d74f84e3c8cc674
Date: Thu, 02 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783010913
