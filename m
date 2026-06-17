Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26134341ADD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781688394; cv=none; b=rRL8KwHJLz1sZRobAazJdD8oB/JmVvFKC4jIj2LWldwFpt8ZyhNocONe6/Alg227iW3jy/mqdTSyUi8SmicZLCpBpCsp6aEsuoUHLuOrjg3aDmeAtqPBeXf5m89i/SFbVm+P89nE1EkU99EanV+nduJTeI46C1kV1SFAO52PVNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781688394; c=relaxed/simple;
	bh=EHcEqjkbI5QNcjrsn8GKWOjMalcHap387cmnfUpLEO0=;
	h=To:Subject:From:Message-Id:Date; b=oiAnnh3xGlqsp22ZIIF0AAySkbvlLTj3B3pkXTj6E16FUp+XaG9pU2QTpXT6gWJRxKxfoarECiUYK4sgbhZQHEO1AgvDDyJFZBB5VI9K2szwIeN+gedrnzjsFlIzj76RsUHTg5Xqw1LUgJVZUBxBobtNMhmB3DBDkuLVnNOEfto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=napNdYGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="napNdYGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEF1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781688393;
	bh=EHcEqjkbI5QNcjrsn8GKWOjMalcHap387cmnfUpLEO0=;
	h=To:Subject:From:Date:From;
	b=napNdYGHpIIzlS8ZBYU8mZQU//ymG78LtcE4Qdc8BNEZlRjrl042K1XyCSKSrEqwi
	 fwtczR7zvm825Ywn43axaGiI59NFU79zu3benFDNI83HJPc8IpNrmeqvLuVRtFJUU9
	 NlBZ3gFsg7moU8QiZ/NmoypPyBKaa8q28WzGepDc+rjzgG8RHN49PT5qCWkjwWzRg7
	 vZRQMuhj1P2B3MbLA4AdgkQyhx6vpTNZagYOQsM4FY0uNweEJw7Hg4oZo62GBC+QrI
	 gPY3ItGrLtSBh8pXh+67tlIheSY5YUhbmjHYKiF6fvCItYFr82zIl9B1rzuUWNpHjT
	 uF4IFK7xc2Zng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D0ECD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168839373.8877.7002268192790367348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3aad005c15d88c5a055a446142bd5b8d7606bad1b24cc6cf88181f6662bc75e
Date: Wed, 17 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781688393
