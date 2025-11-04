Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF8652F88
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762217994; cv=none; b=Hp5xsghmGl2vHhfaLG3CfPvhHQosc+Y2B/wAe80PkC0Slf50OUhjLS/URB3X5Pgt+kLrOnFsz6Cfzr5W5Avj1K+9nbHw8/liH2ghOmqSNZVxdfHUKDsH4vo2G/H2mdeqv2hrYKUhXOyylEoWY9Gr81Lp+jc+E48yhcuvYuzGlmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762217994; c=relaxed/simple;
	bh=EJ2sGNnEoNr4MEGndviuV4EbGm7gl/RB6Y3HqV+pWJM=;
	h=To:Subject:From:Message-Id:Date; b=hRBaUjCxX6/FXWhNPATOfjhFiL9XJ8sRY7zL0wkD7mjFc50Z/vkV3thgYPWLrrJoCHfy953gxGkn7BeYfNN9GYPJe7TRHaHmnrr3Zi8E0o9loa5vIEoMy9gLkpI3Dn/80W2FGeNG3bPlxZE2tQ87UMkh4hMw6qJp86XZNRNgaJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=op4rtyMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="op4rtyMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE78C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762217993;
	bh=EJ2sGNnEoNr4MEGndviuV4EbGm7gl/RB6Y3HqV+pWJM=;
	h=To:Subject:From:Date:From;
	b=op4rtyMUnumZzRbXucQcLiXekaKg5vSYirvt/dyASe7OKwQdAlUH2sAznlzncybVG
	 jgOC5Lu0y1wWTa2pqLyGStHUwSau5vIBmF1u8XgNQyO+f/JbXFbzFtKQLpOyFE7Dnq
	 Q1Ypslis3Gsg68PdTd69R6BJ70Qj5jiNMbeOjEwGWbJmhBKgDSa+eWdxAEocOnx8bH
	 8wwywirW3mpO6v2B2tV9FWIR5HCnTwqKgpBNPSpbd9ZHW7VT5vqJbhUFSdzcMYuyyo
	 d8Qtp1pUUxzh4UKjY5ucxmUWOyvEhR6ieS6S9bnglE/WMPpYFdU8pfO6f7BSeQG2Ae
	 L47as8l57C8dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA56CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221799362.14122.12570419369013864319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a995d09799c2682e7cb049c199e5365a141c1b2bdb85eef377fc6390c164297
Date: Tue, 04 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762217993
