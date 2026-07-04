Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CE039E6C9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783154914; cv=none; b=gWn6m3/X85YcjmkRDlHcjnTg38aTCXodB5S3anwSV56FLAgxtvt9e8Gq2z3DO3n3eaKROdriurw2AX2tlZCcMjpZoEmLzHxzE83MVJU4eTnkNMKmv9PwZxdyANy92hqvjjhog9dLFtcP9KKhnCMzF2e3U71QG59bNpjdBHnZMg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783154914; c=relaxed/simple;
	bh=+iXszvzZ7wlhJwfrfZfnG11rDizJnVnKkE3PvfbKZ4o=;
	h=To:Subject:From:Message-Id:Date; b=A9eVUIVnFUdMbvF4UcjtyqRXAXiQ6eX2X+OyIngNrAz/wzEUzEdS+wGhPe71rgniwGHhfPBij2CNg/qbC45gjIAQYMBW2XovoJrVg6++9rmiSVmrm37Ymg2PjtdPda6kM9k2cxuDbWWKJkEu/pWUpc7PCF50nGlANbXSQOyCUwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSs8IDKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSs8IDKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A6BC2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783154913;
	bh=+iXszvzZ7wlhJwfrfZfnG11rDizJnVnKkE3PvfbKZ4o=;
	h=To:Subject:From:Date:From;
	b=pSs8IDKsrBlcxuqJ4VsbgH241FIZ4PE1w4bJcpT4qamxQvcYPU0QMyPos/RKKj3tT
	 9dUGRAGrd0VkjEkVwVcZUIT1s5iSq52PR9kKot42Wn/KkF7sjk7FS7hvB111By/7UY
	 00GStrsPruGOgVQnGS/e2HafvuKWQNAu933omujknIkWEPp/1Daz3DVLDLOW2SOO8Z
	 qzg9tUD3NOQV1OeYFfXMd4ZrG1VTC+adhbcOO6zKo7zYe1LKi23W4+8f0S4dPrAbqN
	 xAF7q6LAkvKsyGsVrqDQ0EpbqE1tTWWBArLHZi8ym0RPbOInrugKrF+y9sbhn4eF2e
	 Vghc58SOPh8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8817C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315491368.23088.17954048297366340175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2232ddeb25c8f4a37688e21fd977b14f3e77484a93d0f692403e0f60fa04197a
Date: Sat, 04 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783154913
