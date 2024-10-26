Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BC81BC5C
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729909554; cv=none; b=PpmWPBTMTIcad78oLJv/C9kz1GsoyjVTy9mATsbbbr0ZgJGwzNY9lcnfMBReSPXuHao6ofYas9i/a3Rq3cQfFYuGdrin4+bfQVpwvCx0xmx2tFVnGAJ3vLShhATbkDaolIK8Buy+qTlcrcLhlY5fsfI7m4T21imuARS3sNmiPiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729909554; c=relaxed/simple;
	bh=CGMoIY1n69XX+fSnrB4yHRo4Yqh4UrMJwqsdAgbOENw=;
	h=To:Subject:From:Message-Id:Date; b=ArskEWvMLIgkJ2w4mSVQ/vPDApsFBLX7dDOCfvHqMZ49xyB4RPabqbe5DQS1whsumvoaDd0Yvt+DrDiKJsRW4jniywWgtdUKu9rZewAblLFQhpm+aFID19CbglK3YlaciIeltBV+NYzaaKcVJibs1A7M8pvfczDS2lN6BaUQ+NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/9o1gZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/9o1gZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B21C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729909553;
	bh=CGMoIY1n69XX+fSnrB4yHRo4Yqh4UrMJwqsdAgbOENw=;
	h=To:Subject:From:Date:From;
	b=K/9o1gZx2c8OjILB/mqtCDgRk02zfwjlO2h2MdxN4CFXV8UvllZe0YVT8rFv5TDe5
	 IgEqzNMGiqF/ETVD0iX3NWRFVFBGQe1kkTl9vD9hOKFFr42WmCH2YU1h6CsG7nxEgU
	 hx209gLGP8szkiUxtD+yUY1+OeBA8SNxC1DPBr6EYD1x2IAHzQen7neNOd0VimGL9S
	 rzRvAeztYK6yKRJYLxdqb/Rh4tE15II4XBwtHvMRmQRyPAOVzpgQLfZoPEQlfumkNv
	 FVj/i3TVSG6Zg4QUsW61UN3B2imxKmw8PxA4hDoKerlCMqA+t2ZF8QKnWAvagB6cSY
	 PhInfU/rDjb/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995FDD149FE
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990955358.27615.3939745326567180456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aca11885a354d2c32e365ab915c4509b82d3b9192aa23e30a73f066779e40cf
Date: Sat, 26 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729909553
