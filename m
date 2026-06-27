Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785775809
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782538714; cv=none; b=bdLkj3NxeRHtyNeny1JcboNsA8GagImLnCQo8q0l3ataKIeio+VOp1dCHo8TinnHY7Z10ORfAJ2OqquLVjOTqHLRBUI/2cPqTd/v1XMfWChpMdIHHX809MYwj7PFiwX1py5xYqnfFfodCU1rMML4rvmbds1fRpLkBr5TBj+1Teo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782538714; c=relaxed/simple;
	bh=JN4aAQyMuzQ3I0UnwM1aLJFGGUP0WKChCdHVGWYbMFU=;
	h=To:Subject:From:Message-Id:Date; b=CdEG6FJJTS4/H78cXLklH2LcgvWsWKbLt/fyyThJZV/h6vUHYVq7v/Qajnw2fQlggnOC6KSvl+lKEtb8SAlzPCipIXXvnapUjh9ECV6s7uvVN6nVBCyC2pIa6NvMKgf0W/RsHxi8MmiHtFopEg1SvLfM3uWNNvAvnSYUbOz7Qzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNUEhFgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNUEhFgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2823C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782538713;
	bh=JN4aAQyMuzQ3I0UnwM1aLJFGGUP0WKChCdHVGWYbMFU=;
	h=To:Subject:From:Date:From;
	b=RNUEhFgFFcyQsa8slIEcApr2Wdo/JFIYkgiIvgR7/EBg0rJ9patGHzl5mSt5jmC2G
	 i2Tr42+cSPVZW1x9LDOOzVSkJxDPw46jXzxwMD2/TPL6PC1zi4+loa89PgNNeJzip+
	 EMo3xarzEOAXa2/k5t7pW9rT71fORqYVm3uLPZYBN8rFDylNM8i+nlsuu/kJtCuB7b
	 7XLSw0ml02g5OFBPWL0nyVFq8qF6DEZji4Iv7aD8yG0QMKsOIGahHMRemkMpV9/nYV
	 3JpGHqn9IhduKM0XY+UFlbiHiidtfDyk0LyBu8CdArc4sKVGJe/6XFrwNbtx1AdCRb
	 4r0hO0IgLtNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD4C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253871370.21460.17505001826523439360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e93072d9b6aee1b4a45586a0e2224a768eaef6e9bea7b48e0b32a70d3ce503
Date: Sat, 27 Jun 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782538713
