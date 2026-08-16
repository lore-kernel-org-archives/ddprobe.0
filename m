Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126A4B0499
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786884034; cv=none; b=m0N1V3BzWejO5dpinMtOZe/Rc6HWeN0rxcr7Ld2l9NUfablwE603ciSBosl74vXxZHMNihjFBGfy7KBr9vDHADlKCJHG0QbBlK1y9bxYcMC1bGPmSAapVXbHMO6KCfMlQj84XpkfGAHxZE4MBTIKRuTFHkXAHaKtJuOiPVnLt6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786884034; c=relaxed/simple;
	bh=p7BEg22rSOpWPT/NDyovN4P/JTiaYufaqw2ThqcUDT4=;
	h=To:Subject:From:Message-Id:Date; b=R11SjregBa0Px9eSx9YjcawUEq67exzHDcTwKOZ8GjhVynW6K8rPpaTRewAK/GRSfnj7gR4D8CDhGFASt21CT3hxkuhNY5P7z13N8CjsYXNS6C06irbP0CGlYuUZGhC4uOALfmK9Eh6BkWAFdiPNjspJxJskzGj7fOVCCir1wrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLvz6R6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLvz6R6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3571C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786884033;
	bh=p7BEg22rSOpWPT/NDyovN4P/JTiaYufaqw2ThqcUDT4=;
	h=To:Subject:From:Date:From;
	b=LLvz6R6M8d+kU69B5zB6kOq1fJ0wHeODY+U8Yqapy8HcHsIZamytwLsGOa7b9fVYm
	 fqwL6f4R+OLKR2tnFV+TzYP6l04VNG/cCezq6C8Vbj9ZpNt5KeauQq4ngmPwT+6GtY
	 yTVrI53MnXPhm+stvboJJ/j0d3p4jCgPQtF8lOUsNlz7XHIZjm5TC6c7S3I02Ycpy1
	 9FOrfodhwrENHoAnP1/m4jcbNn695de8yQ97rC96O8FbcJ4Eu1ZP1NqJFy//lPEzrE
	 izZBqxziMyhhKh3OCjR0XqGS+I5ravyMvCARJmSTtApbBPWYG/myDEpOj9qn+Pyn0l
	 aD8dfvTOw5Gaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB01C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688403368.15942.6536322946144344184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9831d26ece91f44d1cc8c61989190fc919dafdd8242f038d055113a9ea5d1dea
Date: Sun, 16 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786884033
