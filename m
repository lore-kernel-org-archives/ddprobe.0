Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF21D1F76AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733241954; cv=none; b=EGqwrAL1wHfa8BDsOOX+45eg0L4jOBl7PsQ/E6MOztSxIZzqM2A2PKoZVWhOrcmFzJ2s5laHmswMzUYVuTISty1XOXQb1C01wAoPkna2vrchd5phCGCBpGmZoV8M/TXj0rW/Ab1JAVp9yzZ9rG/lBHEcWOfYZVLiFQkMNn97MS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733241954; c=relaxed/simple;
	bh=35pfu6+boTcyQulxur5yZ8vgn1wJP2EJs7b7BOIQWOY=;
	h=To:Subject:From:Message-Id:Date; b=poShHDCOHeSqlGJ+HmaY3KCNmuAEoUGPuczTcysKUcuRn9xQCgsY0CUfBwb2RR5TP7YtQQ/6I6E8lgjqJQ5tJXNXuQ1wJLBn6cPvlG2GHgKwR66Vfpb6MiB5PjJKwoJFrrP/rhPRIWE35hs+cKOcr0BVc92ECbXj3Rjb7NANJcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUBZ8oiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUBZ8oiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DCC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733241953;
	bh=35pfu6+boTcyQulxur5yZ8vgn1wJP2EJs7b7BOIQWOY=;
	h=To:Subject:From:Date:From;
	b=eUBZ8oiIr/Ececgx60RlsJMhqsJ4LlDvVLWiPVcbQjK6U0hevJ8M29m5rjfA8jNr0
	 +XuBug0WHZqk69uPDIYXvfserZlrsuRZqb46JQBabD+YGIYK/nqWI1zhE6VQ8D7JTH
	 zGNc4I7xE8LHomKG/tiEQTehxJEVbwV7BcHQF10mjQdJLQ/ewyspzI9AMDLzeZCstS
	 Rtn+g4QY+GUl56qLTPqUopNDt/LuReLagz1e1jACdwr2Xfs7WYJsUKUSzqZCpP8KZG
	 K2d9dzHbn+5SRZRtUw3Mcb/PyVPDyIwHRzQFuz8Yp6cuW9787RA3vUPoARVwPlY330
	 J7aN31he38o/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F309E74AC1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324195364.22409.12386616424440142649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23e8d752f0ea5bce0e7d838c9a25bf44d037a3faf7129dafe2eb6b01a6e0cc2
Date: Tue, 03 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733241953
