Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370325E476
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746620394; cv=none; b=tBNAIBmfEmK+vgZPhIyzkHswe+gcs1jkxR21Uck6HgzYW/DVR3ZQU0qHKYJGKorq8c0hR/j3IwZsbgAa8FfLEqWIRvJ5rfOSj2BGjGLZP9A/3/I4oNh132+Wd50+ucxUAGu1BMACOuB/lb0mGTGgVPNKHL52hyDgKfyr4Spqnlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746620394; c=relaxed/simple;
	bh=w43CWrGgFiqqw6bwkMWl1kbyl/EMUD0OEiUloXfV8gU=;
	h=To:Subject:From:Message-Id:Date; b=WSVvHpeiMEv0Z//Aqad0RxZHS8RmySOu+1f+0k0i82Uptan448L7rsrqCLZ9pR+MYzeCr5XCmspSgV4unqNasGhK2PIV/WrKp/QeW190EPaZoErzzXePQalT4DZZAQqbchALh24rKj6TzGtfkRHO1hQwj0UQ6NPh0DThWJrpIKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6C5dGIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6C5dGIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746620393;
	bh=w43CWrGgFiqqw6bwkMWl1kbyl/EMUD0OEiUloXfV8gU=;
	h=To:Subject:From:Date:From;
	b=m6C5dGIemcpcEL2YpqB6bQnNZSjfJhQILm+/7Xn3Obw04/Q//NcTgX0WN3yu8pavG
	 jMSHTrkG+84UxK/sbRplFW0+lJb5DBdRN/xyB/6enva+Sj1er8VSfDqFgCCGRtco5K
	 /0+ogc5y8Ugd+qWmA2ylLWomVPrwnr65o9ao8dr5wkMAVxY+ru8Ef/3UU07nMz5XLd
	 APkqRTAHZ70Ahp1NliM1O6JMp4xupgnAyNe/u0zkSeXbRNlnTNTBS+2MsOK9olzOkW
	 8pA/8hV2EUWdeaLuv9JukEpC3WiLK/o42zlWXBI+wEdOsj/PiwuzMfO/JRx4wf3rzG
	 C9ZNvCCruPDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15DC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662039357.8983.10685600238959195133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8da0c5f944231c7a35f53b95fe5e3fd0e09086a7e022735e56398252ab6ab4
Date: Wed, 07 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746620393
