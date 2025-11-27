Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3264C225390
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764205974; cv=none; b=EA7wOS/yMbeXwSdbAmR2pa9n441bj2bXz/Iws3Bxay07aLfzRhESOCkeggBg9OxbwIQVIqeIJTtMoeRsklJhOBNuvJhDdn3c0nDz2o4VNcWP/GHCE9eD7+zPBDz4n/ogjKOMFi75rNqW5yHf5z6UfPdI1m6t6kFTHfwqr3FbSIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764205974; c=relaxed/simple;
	bh=3Mnm3Lh1S3x2k91DEeKSI2uvAr55p0Y9oRedSnbsPwE=;
	h=To:Subject:From:Message-Id:Date; b=Lomw+HZ0oKu4N1gG/bTQ2WKLXhMDZBSiV4KNi97deaUmN0tpgUn7CfoXRdfcsQmVCX0Ceg/+iZKm/V+HgJ631iLhuY0mqeffDSBA4kuJrffxGE05ZNTNV2chFDGZnSKGPih0dyKunYs8CbRdMOY19WHBFaikzaDyMuYI0v69nW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+Uf/gvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+Uf/gvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80EDC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764205973;
	bh=3Mnm3Lh1S3x2k91DEeKSI2uvAr55p0Y9oRedSnbsPwE=;
	h=To:Subject:From:Date:From;
	b=h+Uf/gvMgNTx8Mck+zuBI57T3y1CLpoKNPOn9WjHrosS/dbQsCaeFikOhdtgmDHHZ
	 3mZA4z20SIdebGEzMEg6gfkLNASnW2nwn8UryQS4hAe8JnpfOACTBfr40uPRo24ohk
	 blz2XTXN4ISunK0buXAJ9938XKszmQGlxET6QoUS70Wh1tDuJX+If5OBKA8/SIs1V+
	 ithFHxvUvXNt1ECPB2q1QCBTc/2YSAdHuvbIo5JyIP8Jb4Ui8nqPRxSdJFKHXWyI3K
	 ziTaoC2RWNaHf1DuLjeqDG11pSMqe7CrREoHWJx3Kv4zPeOoVafexMPNovteorv14q
	 sFf3tSxWWl9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588AD116E4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420597360.16089.13397552089213845624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c74c88596bd9f4484aff6ae3c398629a1ed007efee98936b6587d745296c4d
Date: Thu, 27 Nov 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764205973
