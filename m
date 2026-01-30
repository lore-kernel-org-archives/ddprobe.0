Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E5A298CBC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769775234; cv=none; b=QoSeNKXbnOjwHJwsyVj2Qmcbs3fKWqgYilScOKZQYHCUVnMiPzagAvHk7JL74CqSRVhu54FxrRyhgrYDQNrvShQz5S4yUfQyelSLJNxv4LAAemXYJqIJd8rI19WiesoUIVek7Em17xNkFpftOOaOT6irlQ6iGSL6SIIXosGtqdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769775234; c=relaxed/simple;
	bh=/COwVpubetloS1cxcHAktSBiY48/rkKcsfHkjSfDFHQ=;
	h=To:Subject:From:Message-Id:Date; b=ZRhbJ2R+SbV9SZMUbNoH6q3USV2xtrmZfcPb+8yoMY6P2M8+3YyPag2LRK253GgdJ2kMhQKkuBhLiHWtLpvHSVPAAcOZ7H+uyoGda156Cpemig9H3UhYbB61TtCLT+5vnpg49Qyo8EPsaElJzSnaphnVSnH7gTVYw5anNfpopNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDfUtWtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDfUtWtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D338C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769775233;
	bh=/COwVpubetloS1cxcHAktSBiY48/rkKcsfHkjSfDFHQ=;
	h=To:Subject:From:Date:From;
	b=IDfUtWtmS83b1Wxgzts4LFDi2D3IOX4P1LSzE/229RNwHA1ND9eDhlWWJae2x7j3m
	 Dpn4sx5c3GIYtQZg1rwmoCwQXRo9rCPmp92eTfw9LJFdH9HgdiDdhz/gF57yfbCXDw
	 Nqq8cgY5ktOivf9g5v35E2WJ3vGSz4dEC3IF8vcATRjUdUGiR48RUcadaLWQ/UPklo
	 c/XF6XtIP51mqBw7pXc4rZz9uAud5n/1sAufuRXlH4Td3mixf6ooASBqGr+qNO3i0q
	 /EhC3HusP1NCEIsiS0zIOzBiksDOpCc3kfhaDklNMMDV+5HgV1bgv4WBfHI4auvn3z
	 WKVVxIKC6yU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F093E6BF04
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977523357.13369.5821617700084341013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a95ee1f5465a26bad9b3c9dd712f5a4fa2a83208b050a58fe3239f3b17746b
Date: Fri, 30 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769775233
