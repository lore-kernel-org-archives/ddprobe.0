Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24106354AF8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769517834; cv=none; b=ANUC817tveRO8smgnCodgf0kfgX5UkkXEtoCH/vRe8oTAKcI/UPXzgReP+LuEbY54Lsh/1qw7yY1shEgUMuz6fyuJ7JnFnR+KW0nKRiN6dHo4fn1QdHFUcLkipQJDQZga1Ju6yHuMwC77Q+mG8Zr9SLI2XmU3Oz2cIbAlY8rNZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769517834; c=relaxed/simple;
	bh=EKsK4/OnBo1p9boSEYvcgmcXMLSwTPA1v8XETIKiMQE=;
	h=To:Subject:From:Message-Id:Date; b=kMwfusEGEMnzCpyW8icdAmkMs+qNpN/B8yCEW8lEVSz7lka6BUYkH5RWGRahrslfsh4CXdLrK2RHVSDWaZ5NQm6+GfTAY3gN/8tDsqjYk5njAHoyQyFhy/HRXl7L5zoM5qANAxHYe1HBkcxAxxqPHPYsnGXZsWqulS6b6c9jRQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBenGaHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBenGaHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0117C116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769517833;
	bh=EKsK4/OnBo1p9boSEYvcgmcXMLSwTPA1v8XETIKiMQE=;
	h=To:Subject:From:Date:From;
	b=nBenGaHDEi3slwBOcjJLgsMyN39egQ5MwPV22R1nlHoVPOVp6lbNyfREd+Wcc2Jzo
	 Gec1OISNaHIokYSyQXm2UpqAL3RhUcEgqsUGGH5eBwnAxT1VnTPuIJEGG4g5Q33uvc
	 44670/0WxMxcpNwny0fITHJ2itHyJt2/EFxq3DBi4E79gHTy4aXZ4IZMh7RJgH5/h0
	 6HXw6BzM7uF2Uv+ixpCaRvndvr/4Auw708C0xkZNCVA6UhZULboSgJsWJiH/WuAxpN
	 ZSwMglFWLmIACMrcCov0ckFK4lU846BYZQKd8sm9boir3Bd7EOvpM7uFec/vi7IN8o
	 VNqYdRIdiXOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E31D2F00B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951783358.8282.11297540216648227071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05e9b952d1b12e2028ed1f08ceb56f4d0f01f3c585a9602f4ad7bb842b23a41
Date: Tue, 27 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769517833
