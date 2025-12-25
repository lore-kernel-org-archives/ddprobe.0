Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A112DEA98
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766646234; cv=none; b=uJASHna5fkneGRkPv30MDGXhey7nOY7hlMW9CKs9WAJj397hDjwmfzkG1P2y/8CzG5OSneBPy82SZi8SdxZp9rkdb6mkkkYmn4jb79HMVEqKXcdo4TYA9dVHOaro/F+NrHfwYkz3aJ8hYV10LeBCCM21sPZhXyofKfKM1aFrKNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766646234; c=relaxed/simple;
	bh=NwyFlS9hpq3O4DNtSj98LrCuddKdB9NtfVT4oohZovQ=;
	h=To:Subject:From:Message-Id:Date; b=cv+TYGA0B95X9v8UA6Mfvxg4SuDcMZMyaIEasHRXwOTSxdkYCFM5pYaAuqrRCqvC0cYg/wvxQWasfGBc9YApFAhuNB5QHyH2WOCeVwP/8JvyosJ+BNKpXYQlRzwzy3cN5ToSmc+PCTKN2BuZ69NrQzg/YPlWXXNvd2+EsQF8MOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjO9EsVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjO9EsVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766646233;
	bh=NwyFlS9hpq3O4DNtSj98LrCuddKdB9NtfVT4oohZovQ=;
	h=To:Subject:From:Date:From;
	b=LjO9EsVR0t0D/VY2e51yP4HaYZhij1BPA/rb/VbM5y/lC4l4KkLvJKBVMShfGf23q
	 ncL9KMpEQqVelkZvdOTsD0n7vnsVGHG4isvUN7GU0i59iMkawFVwvjRppWlM5Kxfto
	 J6ulWrDdpnFRG/RImGb916fc91ogn9pWIyseviWGRhTtHHF138swRkNqmIAQS8Ik/3
	 CX7vcH9rc7MyeXGSghJVQVrlhtklvTdyRvcEQHEXS4euqH7K08HUB5RxPRX3kP0ZxX
	 gy8wx5Th4h4Pbkv1fAGSA3JFgW3KgctynxUKaC5sfZvEymwKlTSOZ4nVohEY+5IWFR
	 d0An07nP6xJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A74E784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664623358.31215.16488771794726873770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e442f270a01677a1e3d2686c1c6a8fd1c3d59d2d721e7ee7e6cace249ab37076
Date: Thu, 25 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766646233
