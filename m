Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269729443
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753388394; cv=none; b=BTjcGbmFYOmDZNMm4nJGXQklORZ2JWC+LbqhGK8vGhmKu6dZGgQaGSZlETexxnOVIh6bVxhpTsUMhGNEU/1YFbb86lxKnhS71hDfEwH+Zgoln28J7g/QAOnKIAar329LBSfHzy5YRtudJTH4lfgca6gJ4H1aSc8/3456dmDObWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753388394; c=relaxed/simple;
	bh=RAedyxFS6n91Fs4l/uoxC9uOJgq8qi0gQsI+T9GsYw8=;
	h=To:Subject:From:Message-Id:Date; b=pkgjg33VVKY3Rt1Lj8P/TTCcBxxAGjA4CnRSPQk1LmFWOPSB1Sb7GzoLpWEFvDPHTjxGzNi+zwcs8mm8cgRnipP5hAtD9cLDaSdUu3xILZ6DP29Y7fVljHe5N0aHWg9qBlRTNZeA7tT4/SOhuuvyY6Cg4gwnpy9FgbWyhHnkBPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lACzmDfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lACzmDfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A312FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753388393;
	bh=RAedyxFS6n91Fs4l/uoxC9uOJgq8qi0gQsI+T9GsYw8=;
	h=To:Subject:From:Date:From;
	b=lACzmDfwOz/NY0pz4MbqtROWexEmxDUf5pZ8MWLh9QKKkLjVW7TJyt9eg7se4HfXV
	 MzyANwyjms1UnAruD5jBFXfYczZuum5cg+WSB9V3TSm4r28SaB/4iSJct7zESyLUQp
	 Mr7Mgjh0z44HNInBdFPD0LhRndpOZs3cYjGufswr53jnYurpTyIThaAASl8DVEYkN9
	 gGlF7jYs/+fQggVcKCWr41XIewk0cRXJyxYh5ElWTIB6emyr7StVJpbDBBj4318PUs
	 eDveXo+/GnHb2ePBrCVQccTPQ8LLIXENeWyhNMsXzF+m9S1DrgpwUgqgJw3sEUF1KQ
	 LinUWYMYS/7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD5C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338839358.6105.18103172974848346390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053ca066ece45093490ef176a6f5f9cdde5d988072d08fdcbc07358a0fcb48b3
Date: Thu, 24 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753388393
