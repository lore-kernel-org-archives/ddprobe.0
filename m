Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFFE27468
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749216594; cv=none; b=B2imH7LG1OkS1dvi2Vrov748Md8k+yKjHbl+i8O4iQToAWI0s6rNilDmP+iPyVnZ95tBappmwORjdWzVQiHYR6O1m8RP68IGxO7zqjmhmGHR9wsuPZtVeBp60a+4RfmCQ7NmcUKPDZRWGreAvKKllEG+qhQgtGeyA6icNAMuX6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749216594; c=relaxed/simple;
	bh=+g+ytIV7CLFEH6UW8IBUC0AiK/C5XGZqfIm4R5uiXQY=;
	h=To:Subject:From:Message-Id:Date; b=ZgOzqHsPbSk9UD5s94Fwu/FFGhCS4/u8FNOtg/+q7eiuv4k1WjApJblsRZMdkQ0MO97C1IWtxqRQDPcoe6dn1BWb/ikKlkJmJ5dSbbpqR4V0evljp2udl05PkLxpHp2UAuADht9JMcvGMvCPXzwfi5rTc3TWn1DtGo694riKbK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXpOZ/rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXpOZ/rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A2C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749216593;
	bh=+g+ytIV7CLFEH6UW8IBUC0AiK/C5XGZqfIm4R5uiXQY=;
	h=To:Subject:From:Date:From;
	b=MXpOZ/rQy0gjR8xm9R1ywzIiZZ9qtPBHPYkYQMYLJIVXXYIm3sQS6mCiN8KK/Xqtp
	 /6niKJfHK+7zsvXKPRHQUhA8/ijkG9JEMgK6MOZwo0ZIWCyDB06hNbd5a4xjLlUOSP
	 iNOGFfEsR+SfeS/DEwgYe7FyIGbAl6RISbeBzyJVkWRDewuWc9P1Aq6ih/zREhmRNJ
	 QfHB0vC5+a1Zx3Kr90HCZJXO4dbV5LKRVZ6xF6J4M4wuRvTzCvENny+vo8EdToiwGs
	 wdyjLTMFjjuNVAoU5hUlUeQw4mqbPwlNFmRxw4/FVxM34nlUvo9ElVgQRV++Bx/GUg
	 PLPFegceuznnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD1C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921659358.7879.2598115223491098300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b8c74f53d489074584ce6c378ea8e79a173b10a80f1b065e4445a4fff1acba
Date: Fri, 06 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749216593
