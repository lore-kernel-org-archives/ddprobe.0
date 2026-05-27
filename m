Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A6372ED5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779909754; cv=none; b=E8Au69bPhI8judUu1w+OHENjaQobJl7jbAay6sm/hYaXOf4wRNiFMEhHoeKI1tsMf04iza8stFGzCHMooKr/GNuITMCOQWFOQel9Pqu7oAXU6DePkvRVsL+aCebU/62vmQw17qwNNKUtqkGoy3ivqLrcsjoWjj0DHUghwG1weTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779909754; c=relaxed/simple;
	bh=s8QcE8YEhUz/KFjWJshic6XRbn971W3LDwlRy9Cf31s=;
	h=To:Subject:From:Message-Id:Date; b=csKsE53+RLcqN/UqVNK6RhnP6MKQDZs1z0EYqjLlACYMMwRcOpIpl8JybJHBy4hyeR6tpkoK+b5uxv5F7WmlZ+1eIGl5X6Rwy5Kz7yRFmNaE56AChyL7XF/Qepak6meNcgoxeNfXlEo8IOGwU299aKGwpvlG7opwNKMK2OOaY3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGf+imDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGf+imDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55FFC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779909753;
	bh=s8QcE8YEhUz/KFjWJshic6XRbn971W3LDwlRy9Cf31s=;
	h=To:Subject:From:Date:From;
	b=YGf+imDJhwmG8Gtfr5yMkz7fuKXGnyT3QcpHbzG10qgJnCiZVI0dqf6KnWQ9pcFIC
	 fXBAnE7XWSZfkjkxDQab9Q65lixebjA6xd9XFcQ+hl7+gM9GTJDx6qIsChJoJIxE86
	 M5V1Oav8xmzy2gnRzrMpnFwaC5P94jY+fLH1mSPiKkB43sSFWrWQBjwRpt+3tivJEZ
	 Irnb3QsNKC/YWXgWFGtIUAmMYZNaFcdqBWp3OF3xsHeXZ0ul7IE8EQG979hPxnIPTp
	 tuY8xSOkUsBNNmXvej69RgUT5Ush4mJuTyJGFsytQ6Nh4WN356RWG8ttI5vbH87C88
	 Oj9c75RXjZy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF6ACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990975369.16993.18018613923327552558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e390ead253609753d29e56a410a03959ae6f52b207b17916d22c2c799cef70
Date: Wed, 27 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779909753
