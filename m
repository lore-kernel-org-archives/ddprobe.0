Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC0E259C84
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767524634; cv=none; b=CktuuqjVCIlN5EcT2ATmllJ8bKmFC1rlk2iqOTte+sxmxKZsVOw8kO8jAWg5cmXgTbRh3hhIlGLx6iA1Rab3eBQsPswwqTP2EdBBR8ngzs2OaKkDn1B584xl/htiW7QnDaqkJjLkjJRUb0dDjrjWdShvK+/zMDUEOSprUwCb5uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767524634; c=relaxed/simple;
	bh=vzQD6V0IAIJNtgzdLIUKQUFtsqEkSRINduo+7SMBsZw=;
	h=To:Subject:From:Message-Id:Date; b=ZB+onRznE58NfSC/rVzJ7hz8qj5/bHRmO6xAQfDHsYv/N75T64qpff3laR2QSacsFeN0iwKTlEJdPVVvL6T2nvubcFexdGV5cWXjpJygszMTkvwJPAZr8sfP4GFx7PDpmu2EKJh25WS82SFxnbf+B4LDTWKbHt9zB/6l+AJxw/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfZLDj2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfZLDj2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01E6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767524633;
	bh=vzQD6V0IAIJNtgzdLIUKQUFtsqEkSRINduo+7SMBsZw=;
	h=To:Subject:From:Date:From;
	b=CfZLDj2llqs5goOC311D204A1DtUPwDN8CLDNR5nJSIdAGYPBGZzgPUlFUaat0BkI
	 ycBPHGLO7ScHvKv/UJ8IhMAesNtPvTJUu9Huh12yaMfqI6JFaeW5T/iPkOE7OBY4Nr
	 i2Q5V91XKx9l0mENIWoxt2Kb7wKanK7XyOzCtb30PNYv9sGZloYkjYEvS+a/QnyNjQ
	 EgKjPObuz/oz7+pZc03mL1HNR03EBwdkBXiVhiwrLO7eDB84F9awWoCvPSedZOctEC
	 kzeXRG8hjSapcjoIZyf68SaVt2u31CL5AsL4gYOMuU1gl59buIakUwVhN9O/vZvdUd
	 CuukvemrkjmtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42DC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752463357.23660.5920916380791354285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d7fcf3827ee6bffed87f517b474c4f575a8992f17b87a6d34e46a3d803effa
Date: Sun, 04 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767524633
