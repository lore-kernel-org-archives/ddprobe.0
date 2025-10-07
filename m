Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3368513B284
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759817994; cv=none; b=JdQJQv1jRthsbIBlKIpGbj8Y3ME1iajBQph/S33y0c0crpkWoix09KlQoKwKHHscBWyhSNRVUuaqVbFTA6WSa6n7qWdPWBwb5AyF1aWVQPstK1V/qSdvwNgiRGwLTLDT2OCxqSr3aDkwbCrIfGHOIlBxSX5BINajyvLP4iGmNWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759817994; c=relaxed/simple;
	bh=3A0QQLaSKXN85osu7hDkdyMVximiP1fteXSRCgNxkH0=;
	h=To:Subject:From:Message-Id:Date; b=bOBYOIW6fvZpDw3OWOkxstpCrSSfdxogoKCVj0FNscbQix9lXDa8FHM5X8ZhruTMWHfonLIVzmgiGg4O42LMlr4LtQkDSruEns95BIEwqjniRA3PJP8N3tQnhJMed4lRXli76VocXYHw5LTpH35qLZZ4iBJL3ou+wWutUfhM57s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqQPD9eO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqQPD9eO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F7FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759817993;
	bh=3A0QQLaSKXN85osu7hDkdyMVximiP1fteXSRCgNxkH0=;
	h=To:Subject:From:Date:From;
	b=FqQPD9eOmpiKkhEOsWebc0cjAQH95mxpj/VoUULt80psrGop1ctV485yRJL+atRQ+
	 /62+l/9cVd+OrxokBA0cX2lk6772cR0L+q0xADyKK3Gh7iudJzP5G4ICrkdXW94fK2
	 82NTqY0T/WfiURNi2PkuNlaz3S7in9DgLmLKIUFqrE/H0+FpDiQaFIqAp/N/21ZMXw
	 3TzUVgRxrGqpkzuz+m94q6iqS/gRGyhB4cmXT9hSllusfwrDzm0GYQKKU1EFHOF1re
	 br01fRoZCexdU4rh0s8vKmK/vB1du1RQQc1NfSveWbBtCjrMNx7hVsZwSWG+Ued22U
	 SADGxCUp8xZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B2CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981799357.22206.3862258267867506461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ea4f3da91e6af55826a1ae58a2f85ae5fd7d0fd937ac0102a2ea3540e8da21
Date: Tue, 07 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759817993
