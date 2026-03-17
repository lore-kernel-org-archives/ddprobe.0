Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AADD312803
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773764694; cv=none; b=AFEPMc3OHu8uzHGCSY/yK2nB2A6zihdc0AI54XXbZ5OWArnk81wS5pBHZV+fTSMdBmpIP37d+BSRIPq8RaHUgw51g0M6GxDAVM0Lu+hSoPqu3gvYMGHoQb4Eb7BgQS4BKSHs/ScwLEUOelO/lvoSQB9cO+KaJWJtOXLuV79oTcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773764694; c=relaxed/simple;
	bh=1eDFL/Jzi3fNJF50wLilfEwCRg1e5qcFWv8y4z4JMfA=;
	h=To:Subject:From:Message-Id:Date; b=GMUILsTRr+MFpNlUPKwO9AXQcamRSge2nHGAQ590h9sHfW8IpwKRZHksb6vACf+7QGs0Et0aempFOXcTYxqsYPgsPEni1AXm3nwZyxDNLru3YJeclUk3UFmgA3+G/+OUmEIpqNW2EpfUSqxPHAM0wmIr2b3DvfQmSbi1++l+BL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCGtpmF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCGtpmF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4CCC19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773764693;
	bh=1eDFL/Jzi3fNJF50wLilfEwCRg1e5qcFWv8y4z4JMfA=;
	h=To:Subject:From:Date:From;
	b=lCGtpmF6qGXsBN1zL6BDAtJobtQmv31AfsMpVpCxj+mSHE1UD3mjXyVXZ3PtuwKPK
	 W+r46N9+40gMJo6ykUmm2N/SHgmhrXguliTk/Tj8T2gnRCKzZhJdae87sN5vN6Josx
	 iRiofFBBKS1zKYdyNjgA2nEt7tZ+lTwxbCfFjXCNY8bwq4mSDts1ziRRd4T8XXNC7B
	 gzFIFiQETaxocK4bz9oWXira1SvwwD78EXsGDjsv/d0eafxi9wy231cLdgwSlYCfDL
	 k0ER0eMjpWGL96mEiLEnr/bGDGRI2F+A81OjoKkCPxZBNO5LHQiQ9uXGpKTd8ksXNF
	 G2bZ9ykzB4ZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC4FED9E8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376469359.3516.5068573843554439977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d3e3b93d0e6c999fa98eeb71e59fb7f95e5fe1e6a9f8b4f50e67d78baf445c
Date: Tue, 17 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773764693
