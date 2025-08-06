Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7765CDF1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754499593; cv=none; b=WcDBzdPScjXWNaHUNHEpAc6gRPNtUPTQ9H4eHv6CimvND9vXHf7bOsu0JXEe6g+BFFCeU9giQ2Zu7XUGh7qlNprwSHfgLWP4maNO6Ol5g2+nil0zo3CrJB4zj00XbIxTkQA/7QuVvjKR08HtbGSNSVSJsZWWIAb+OOvFLY6YiZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754499593; c=relaxed/simple;
	bh=Be97uZnXgN1oQKTCWc4PrnJCrsEFWqUO2noRccnOaYI=;
	h=To:Subject:From:Message-Id:Date; b=KtePp+Qw/i502rFLsWsyRCMtiwYo88a0nVfEnJZVQ7IHPaPLoIHnNa1MCgDLaJ8XoCrqL/ouKboHV3csqoPtqUskvqlN1I01tjwnEGLm8tdIu3WPXfJ5O49vwgutQS4fY6ZzGBHo5PRqCxZKS7VoFdJADMJefiDD/YcABaS1LEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqv50SCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqv50SCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB9C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754499593;
	bh=Be97uZnXgN1oQKTCWc4PrnJCrsEFWqUO2noRccnOaYI=;
	h=To:Subject:From:Date:From;
	b=mqv50SCe7Z1LwCSysVYxqwlJsN+C3CoHJBuHp4+dwy+vcGUD3q+5DUlmOy+OjAzsd
	 fCR7pFI/S1/wH1gLapPhSkd9c3MK9wWVPbAP6qQ0R+7IhJLWG7QmL1xKZA/th/A889
	 LYABIjHxiIym4X1GuUSuj+1QmbQVyG+dtEvl44rMtuLapMVCuuEXruEKTU4ojuwkQH
	 Wd5H1GCc44m1nZAugD3Cajbmtgx1G87fwR+YdtM7IZUTOyRR9+Ug9iNrHm4pVthWYf
	 +wKVZqQljnflJN7Gb7dyDtoeb4QJlbPOy6DFOIZx01955J4j24yVHNTxfGxBjdl1j1
	 odTFLvI7Z6PuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFAC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449959358.32154.9560175610499055133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d04278dc0a49e7809ee0ba64fef691a96a3590795a819cc00de81b1ad6f6f86
Date: Wed, 06 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754499593
