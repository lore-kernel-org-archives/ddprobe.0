Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4A540C5C0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787784034; cv=none; b=Pgz2m+UqJP9ptjHIBiqqEXigAJwK2eiw6ZJSO5kr04YU7Rh6I4LViQrqutTuiand7t6xtpXcMoJqYv71rYdpr19mNsMh1fYOQRwsVwO9GnbEcWWjDateEZ0n2qrSVQj43crFLBr7xOPS2Z/Rv+6vpC9cwM5drbUmcVcW2jrvyi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787784034; c=relaxed/simple;
	bh=LX6twsanBFFDkB42W1mwCdGDDKeU3+wQAIRb7HERVgI=;
	h=To:Subject:From:Message-Id:Date; b=SPqeFOUgK+ZWwz3eYPbHSP5rfIG8JqK3BL+/fyDmHfigcUMjV+p6s3FUJ0H20rVPvkP0zVYDrhR6e2Hu56xDOo+Ij0PR/y26oTJdIL8qstWv9dhC6F98hrnOjGiRb4qGT0CscHmbMBjg7oYFUKn3XD7PM7O7+AWxR2nNEvz6RXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbUlBarQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbUlBarQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF131C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787784033;
	bh=LX6twsanBFFDkB42W1mwCdGDDKeU3+wQAIRb7HERVgI=;
	h=To:Subject:From:Date:From;
	b=ZbUlBarQWlqD/YAbwWbEpeajUYuPoDNCLixx2EeZb2u47kCMJNpllxMPELxvMqdFp
	 fS4MisMaQ2lR4S7UxPfL38ChD2wP3hR+Psr1ZlnCl5PIT8m48wTcVDxUfUl8Z83HxP
	 v2biM1hrh7JkkrY71SVk5+SBNHxvWMQYvclxZMaz8DwBHbG1ioj4D6Xkn+DOi9YT2k
	 b/IowgOFgiFgGXwb6dUpsb2nQjCGzZKGwrZn+yq7x8sjOP2lrot1pKo7yDvAMv5Pol
	 ELnQs10vt9HcaJlDgoa1ny1JL9pNiMgVwW7hXXw50CzOBBcxycmcF1iukKNctyWmJL
	 Pt/OElD2UO+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA32FC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778403368.5724.1276858868571709572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9965a593904e5d6520cf192b6e5c2f8ed38bae2c9a09959ab5deea85587e7d4e
Date: Wed, 26 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787784033
