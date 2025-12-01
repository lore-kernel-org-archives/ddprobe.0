Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2283130F958
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594774; cv=none; b=rE9baGXBsI6ZwyuYMgq/0SR+r6dg/6YV+MwuCRCfOoNPfLfAU+ABzPCs60x+TE+8wuxkjAgmKZAuMJQ8nPuAJgRcfjwoyQvvhmEHmcjcZ1vKEaI2YijkuwLis341fVzNHmL/slo/mCUYWgZL3EEk4R61stw/axdyHi5L4FX9NMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594774; c=relaxed/simple;
	bh=QVQs5ZL2Wt8Z7LG+eJ7vi9h+oIWrpfrmfK24eMSe2m4=;
	h=To:Subject:From:Message-Id:Date; b=pMCVr6IuCehAnICynEUuVCIfkDnSKe6keWNSp0FvjjP9UBr1Lk2uqsUnld9j+rXLYpEpSugId9BiBi6S8gN52wcb1VWUo+ulTX0spaaYhHEAYJ+xlJ1xuizmZ/sjV+Kdkhh88Ynezt/GygPHBruFab13byG1yYpZcmp8jJwaDkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZkG1onL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZkG1onL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90C9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764594773;
	bh=QVQs5ZL2Wt8Z7LG+eJ7vi9h+oIWrpfrmfK24eMSe2m4=;
	h=To:Subject:From:Date:From;
	b=HZkG1onLWAfv4PsxwrDbnyn85pEy7tX1pVLD8Lgl6DfQlODXhkoIu9H77A/hP1LPk
	 wC2AzJTqzrT4j/ptKUs6cJdvhgIFx88FcFtyGLDLHzUQpywSVHLckd+15kfW3pB1bc
	 5/aJVpnjshBJ+NGMNp6SDHJsndnNt10UyFZF2rV8xySwkTSkjkCcpBKwKyzEB4Pbuf
	 NHTyRgP+o3BImE+XkDaL00jjQedO8eDdw2lB6GX9uA9fziAjstYh2tCGCPQComCUNI
	 VA/jtK9c49u2bfjt612NTQ4l6VKHisjQmsUThDpWpS9UlQFnoIN+N1C/d9BElmP+oJ
	 8Mss3xP53IVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D0CD116F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459477361.28183.6336512233591930990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06982bc891b926e6307192488570af63d6b52c081586c6a1412ef9fc66349e20
Date: Mon, 01 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764594773
