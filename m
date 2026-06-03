Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1146D49551C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780523074; cv=none; b=mkRg9KzRn+T6iftR4k661Luf32ZTWO1FQ7aquBaGN9QoQSNtD6yfEVzL6BA3Sh5sVmLqE+1f6Y7ICjqNJ9exHM3GydGjo2DvcGVNBFpF90gWLYpcfhzlQ/FTfGYQDWDGAXSxPCGPZm29FiqAJRaoYAvAMmfIcBDaVUkLlnRtbBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780523074; c=relaxed/simple;
	bh=fbwrPZYa/nt6ofncSZjuYO+6PW9YjIqPBav9QIIorVQ=;
	h=To:Subject:From:Message-Id:Date; b=S0LPLvJn7dfo2Siv7BTtyaZGwDcK0y3Ez0SjB8CaWfmGf8ogY1icGDnu201HgquCC/W3Yb8BJNBsMdjpJxno0YhbcuRSFMoyDiJD/Z6FAEMPjbfh5pwkaGQrUuzo3ivLRNWN38MvcpJE4VrEMyz8upfR2wo9Yqlj3MCRjCWraJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b48BOkWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b48BOkWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14A8C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780523073;
	bh=fbwrPZYa/nt6ofncSZjuYO+6PW9YjIqPBav9QIIorVQ=;
	h=To:Subject:From:Date:From;
	b=b48BOkWrid1dkqLCdnjeWTAHCgCaFFylnwFmvJQwljFbas3t8aQTWbO1/ViFgr9ID
	 OGLLw7qJBy6cOC+wbUiRVWaquNWAIND7OBqbpgr3qgF+pdGDZH60VXvu1gBKoCsLL2
	 skxSawvmnZC30kB6aqfFk8Pv3Q8KTVh878fOaG2GZxQZdUzZrPNhjRG5oe3fNhyEpT
	 hsDT/eHQFAz/6VBFUrJIwiDcvOPEaAK9ixyUkCMcc7I92RDt4TlpiEu8oOEIuU0hRc
	 +Kfti9EOlgZvqoJGumnMUuC96GH6S3utru3HufU/D11U6WkenZ1WSrJ750Ydmh05Rq
	 NVeXGrlfLI3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9706CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052307368.24123.13433006775046725733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79499a2599522721e4a59dd49daa61aaf9a949836ec79380687696004a9de45e
Date: Wed, 03 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780523073
