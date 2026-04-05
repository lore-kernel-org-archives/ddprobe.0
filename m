Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EEF1F92E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775382334; cv=none; b=PmOHeCVYQAs97e/EZZMKtuWFPjvZKzsw09NwgrSnU7V5tAB6GuC3ChTIIyx/YZuLpqpYhwPgYo1aB5rOvVoTCEPTmXssy0X93cuTqybDAZTbG1qtu8m31eAgApBw1OqLzJciBJiBdQjfgUWLnBdzsOq1CaoHOOxxv+j2USfB7PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775382334; c=relaxed/simple;
	bh=x55Kne/uXYnuD0C/JJIuTKqT8QeXX/+V+Eq3HwORR8Y=;
	h=To:Subject:From:Message-Id:Date; b=VJTdLGp2DAjm5TH7hvv8gSefG7S2GG8X/vUvX8erPIqDRsWPbDsUS+cdiGGmE2KQH2uGafPmtCIcfkFiY33GPJGOjh09kGeSHtSHYa+kwBHzfalODSLhhLsqOVcuEvgYLidwDaZWZP4Jz32HjQzVg2wKLAVf97BK56wS49xQyoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omykjqG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omykjqG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AB7C19424
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775382333;
	bh=x55Kne/uXYnuD0C/JJIuTKqT8QeXX/+V+Eq3HwORR8Y=;
	h=To:Subject:From:Date:From;
	b=omykjqG+vFTLyJXDxrcqCfZ/66qv9zwuywq3M8I3YoxprGv1+g3pDtjAiz4M76Wel
	 5pKB08RIw15dR+HJxfnty5le2YketEHxhT+HTwvNRvjTKu6i90E2NBA5EYD63/QyYt
	 Th+J7wYIuumwIIi64l5vSPzd97AMrp2eVJHhh87ymRuIPlclrGHhEwj3VuHxGSiHNm
	 sJSzL2NNvIK/0IwQzYXYmPSVhseQZMgv88bhTn5/h1GRme8Z0GguSAJhSg58C0ZOSV
	 Jx8xLrbFr/LuJvUUkfg25B+8TPi1gD0pJX9aMknkUGJuDVSHZKiZaXPfibMNpC9rd+
	 FSZXYZblTq6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE729E64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538233369.5012.4177192105366300062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013dedc2379ea400a7823024ebe1d67c28dde6bac1cf35eaadfa009234a53751
Date: Sun, 05 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775382333
