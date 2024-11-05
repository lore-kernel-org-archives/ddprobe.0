Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE7C18DF9C
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730799354; cv=none; b=cd0wAYYQXA9Nprrjmr9lWJJcURf90dvqAhm9/lCasoDF2R0yLVagdJe1GIUoZsULWy/8de967T1Mg6iFGpbMY43tkiCzBh28IqICst/39pgCmp034UjIMxf4VW6vUZaRY1pQbpi6/qKJ/3FEHNWBxkTIdFp9PT1p0aaOYkPGiLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730799354; c=relaxed/simple;
	bh=4bkBTXqnIoNL9OMIAVZlGp3SbpMcmr5CCDDMU3mcxt8=;
	h=To:Subject:From:Message-Id:Date; b=kMSbAckS99x9S6gQjMPykPEzN6C8jU87EbvNCUE2AOOZUO9SJ5GgYRf8kH4BTmZ3ni5ri7kYrT+t/FDIm2N/zIoZGM+1b7JaiW+TmUB5L7lnuhCPvKN78Q3hPTTxKq0Rs1FQwIDH+BrlWPRbGUgc9xzYzlXIsRnuy8ZmMg6pTXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX+xhrkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX+xhrkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9E2C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730799353;
	bh=4bkBTXqnIoNL9OMIAVZlGp3SbpMcmr5CCDDMU3mcxt8=;
	h=To:Subject:From:Date:From;
	b=qX+xhrkLF4NmRIj3txdf7U0kRyAs9mCu0xvNrebcs8B8sZSC9DsgATKr4NMWG9OAR
	 piklqQUGQaW6bGtGiGUzgiCEZ+DEoX7u09vgECCYZoShXtyrcRr2LuoooTpS0oQCEz
	 vk+hRr2bI54po1abuvuLbO9G1a/wzwaBB6bgHEVzclukQ65QtIKEaqoe2TGoJm5P0J
	 4FVY1PQgIeqQZzOvgxr1KH+T93fOKsqP5BhL/uCu75aTQ4wsmRdi2bc3YY1WfmelDo
	 v08lP0yp76JUCZvDlMQPycodn4CLxa8VOAzVSWz8qojpZG+VzhdP8eBECZrEd/XSyw
	 jdVnGEbLfCYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96687D12670
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079935360.9120.11483781838416831137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f6602a48e4a4d0af5c07b00cb84b0b3a39cd110678e95f8fe221af48ed2030
Date: Tue, 05 Nov 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730799353
