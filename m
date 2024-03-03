Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264D343AB5
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709504297; cv=none; b=J/KpRiMJ2PnBSiKx68WzJ/XVNjYYoi+QxN4tyOHdv25dVlvHBgQFmk866S+ajVZ0ZjQkCD302NnKgxksunNsppenkfsS7jWnozucZhxlMG4iKJogppBxrJ0MihcEOL6fvTokMyGjeycDH+SwmZhpsTvGT80AJrc/xdccjEd/5kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709504297; c=relaxed/simple;
	bh=PLwY3wxL5LcSbpJ6XbQDTPkBLTQLRYvep/jDt8jo4IA=;
	h=To:Subject:From:Message-Id:Date; b=On+rmPX3JfTOdLZO87j4achFG5QOV3JTTQWSiVjva4MCVzikf5hjHLUx6lH4BPW7p/wiWa0DFuqqk9KtbNOEWI837kOh9qXRq1jTOJiT1dOkv+q17gsyyCCWuGmKaCljbFV7fSCZTbEhwboAyrndIhbiCV7d09r87lb9PJbFkNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dB8Kvfyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dB8Kvfyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCC5C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709504296;
	bh=PLwY3wxL5LcSbpJ6XbQDTPkBLTQLRYvep/jDt8jo4IA=;
	h=To:Subject:From:Date:From;
	b=dB8Kvfyr2zXNB1b/fzRSbU52/cNvWutLReYNPsVyTVxOo9ywkyjvt7aNfBzCIFbfS
	 jxcS4XsQSQMsB8cu3bQKvPJSeci8vu8e2b+UxH9dE+BcCx+2cMZV9yQHlYyGSkCWOf
	 vcCi4iQhPIRvdBxvks/bc6tyb0pQ/aoCgbF3pr6vfxmMY6DRe+z68nDAWnT1l9vtbb
	 WUGASFCSFxDFPR4z1yOI38dYDyXY3QC8AV09wwNwVABmoQeIbCxNgRWM0fOAsp4zeI
	 o1sQMf+y+ikKgEjBn+1K4IQO7bS2dN7/46Q9YH68dJ4kUc2OmICszu/PXSeIbqNKRH
	 vzt9zn1m7SxUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617A8C48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170950429638.18708.13607380411302356782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f63824318239a5f7c8a7c506d0aff36c97976d9e5424b47bb4e89faeb5a34b4
Date: Sun, 03 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709504296
