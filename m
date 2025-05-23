Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696F143C69
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748037595; cv=none; b=WPTJEHQ1ZflKvAG/d9gOFefRLyPy0bmMfWw31UGsYOAaZ74Imko7CYa818Z+/kSu2zzwu3RLs9pmfnz9OHB6fqfIPAV6drPg53FxqBgYxjA+XG96sdCVlpr/IUzYcn7SocI4gst8mv3bbKByfpmPDUH2w/vKpFGV9LX8R50hXjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748037595; c=relaxed/simple;
	bh=dkHMpLppDLlfiS/JQjACHKoWtdXx3Ebl6hjVWHP48Gc=;
	h=To:Subject:From:Message-Id:Date; b=vF2xtJsMa293pn7W1mIJ9m+8bi9EnlzlLKvAdBOZGS9k2AJ0ZJz/3EjuywGcX9aDD9JfiyGSpeQ0yD3HRmGnUNAdZVm/lm7IjWT9r1T7g20XoSSgpJrunh3fsa5YyBuosouf2rLgRZSkVNpPCFu5ZyIXKA0OnjsEuik6RRGjj2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/l10m2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/l10m2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A950AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748037593;
	bh=dkHMpLppDLlfiS/JQjACHKoWtdXx3Ebl6hjVWHP48Gc=;
	h=To:Subject:From:Date:From;
	b=F/l10m2kN97PINlWQ3RSYyNw5xSBmE367uHLIdbWPGxVEZciGZATqee7kuyyo+2dr
	 705sSEGupjWCtMshWJy0ejjqt+PYjw/RQYtSuDCZFRbXNyX5entGlFZY7TtKOcx3ak
	 B3hyRAl3auLGw1viVi41Iig1IdtCYbZCsog8OqdNe36M2i+kXLp4YtiRHo0j8EGLfo
	 kt46kfxyIHQOGVcULM1trMs93JeCQwNU0OGBNYrVAy1teI6W0QkIGbyIG87TvqJmBU
	 zDuqn24w9mpazHxHZStJIvbduKqJ0hyYpL2G8dayo41nyRe5if3Dzxz2fT21mZrPt5
	 Flelnk6sfJwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94138C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803759357.23963.15627272900704745812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72d274bc2b8ed335b6759ff0bdee5ee23cb24fe405181178f582e62fad019b8
Date: Fri, 23 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748037593
