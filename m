Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C3126C03
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776565654; cv=none; b=IP8PsYh2O8l/ChEw8yy7EpktVNDk1lyjOTIWruULmzwrwe5XKmGQlYy9HjitnAizJttiMaLDrkzaCXDEBi0hRlp1F20v6uB9zWjD6pAO/aHEc2s/Xh4NabbXl8EmVZMKr3pKNtY98rAAJYDoTPp3Txb8oXSbnlO3Zr6QtbrIPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776565654; c=relaxed/simple;
	bh=fD1Ts/ZLa4B269wWy65i5FCrNfElayDqqakD/WJJuKQ=;
	h=To:Subject:From:Message-Id:Date; b=UtSSqPJmloURT3IxMt4jMEDF0xqM8L0bO+N+4ThIzM+BhBZIhJyS6F2rUsJsUCJ/LmNAMZHyjGUykgWxi5Tl+hnME+wmxejvVJdVtoSQeKvg3Hf3/0P2RFmJsMsyK6b1uiRIqNlYTax7v6JLkJm/ua1VVg1JKZgJNdKGg8VoUto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqF8NMyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqF8NMyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92E5C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776565653;
	bh=fD1Ts/ZLa4B269wWy65i5FCrNfElayDqqakD/WJJuKQ=;
	h=To:Subject:From:Date:From;
	b=PqF8NMyUdaJRzQQENA9Pi6X8vFJ0Am+mGZib8B5BNj3JxaJwNAagBSrZMTAilLFXt
	 XHrjMAE8pgOKM9J7qnasa61bI3D56H4J/j6hwuQEmj0eRIWYyDlAT/HK6kXw/4ZRRD
	 0po6HOImeANPgS6LCZPxnBQmeyESEgsq7XnjwfwQev0YWB1jc7lbc88qHfn/9w3u/F
	 uuSimClLyOk2/hflBLQJHEMq2h4XeV0+HrCNMnY6bgbOBDGlgEbXfvXXVxANiEDr0+
	 jhfbqiSwSXH26HMqN4MvEGsPTAt/ilCw2gQQxkazGyOYsFMP0AVE9+Kx1aFzXk+kvp
	 927dSQlkrer1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0457F99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656565368.29763.9516970212800234500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d2b674056fc6cb8f5c6703d583cf5442653d823e82dc165a76fff3c5f785c7
Date: Sun, 19 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776565653
