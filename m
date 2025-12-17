Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED66337BA1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765962834; cv=none; b=RKArr2RQdwLGbWjudnQSk1m+UaJOPqI4P22+xrqbeLMFwfKCSjDZpKwif0iiPklTGBggiNpkaVcFBo9ItDqJBIvE9XrcXdOmkYuM0bbHO8sv3NBphApRCjfsP8qImS1wVpXc06V51zVkFrlBXgv0bLf16G2Ihag38cEitb5nn6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765962834; c=relaxed/simple;
	bh=eVOcDfzItlABXCTekzBklqwxy88WC9Pn1003YPUR5iI=;
	h=To:Subject:From:Message-Id:Date; b=PFPPSmtkKtR8SSEcJZl3fBUtXoaGFd+lNt/6io1eVQ7YHIB99M+OAbFFqYOGA9BTwiKlwMdOfv4qjd73GRdDDj9AbnomM/hUnRuJxeO0tvJpLJbs0QG9qvdmd8fZrQfNDzb93hNr67UVU09aLUKx7gD097KfnU0EK+fKbYzE3Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncSRphYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncSRphYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765962833;
	bh=eVOcDfzItlABXCTekzBklqwxy88WC9Pn1003YPUR5iI=;
	h=To:Subject:From:Date:From;
	b=ncSRphYqaY8Oe35pvLkKtfXEavgfyuluUd8tvA06ovkZgM1jt9xVLJGPVEkMuzSIU
	 khjr8oJLdwn+MrGC5rnarMFUgQ8fuJ7wzm7kwIGduGRVftHrVwbX0OYvq5w0ZB+K5o
	 I/DfleMTfnUBFO7OT4fkSm6kpv2AHc9cSB9mwAI1GyVSLHjsQXcBSQDID5irsQ7tHL
	 HrUZAB1OA14j39UhHdVkFOBi4N2Ipdyobqz0jpz7uJy3rN1vBy5BoaSbpkzGVEHkKF
	 q5dr99OQV8+jj17vJxOgg6NiPnduMjJ5tyU4OsVgulwk7oZqyyi4gvHfdiArau2lY2
	 2LITukbZkjpoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983EED64093
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596283361.3089.10167442230542682204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88734e098075ceeb8798fd91a8df0a01276a95449d4038dac46f0ef5b96b7d49
Date: Wed, 17 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765962833
