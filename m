Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69FC63A9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712459297; cv=none; b=M24w2PBcft/AzzX/ss9AUlUUFT0n/T9AMcJtXeO9oREUyZeBN0wXz5evUcdnEY1ocPf/h+MQDRYXEpZV59piFc/+9NbnRYXMlXyooucPYrsXYOiKEbbOWOfkJ5TbCJ8JD9jwGKM4Sox9Ma9+C3D1Ai6RtBjIGjhu/YE3GT7ePdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712459297; c=relaxed/simple;
	bh=/iml9zR5Es89Tywgfg1FPmztEvFZ25E4SeWmlPqr2VQ=;
	h=To:Subject:From:Message-Id:Date; b=ZfFHuaHxsgY/NcL1Hh/Gztc8Ba8j1P5TqO5XxRUAkAjvU5U/Ec/1Hc/SURRCkRns9ugIb8v8wC68nVUBrK9wLF6NXEUZ6Tryml2f84XvlsZqfcsrOXvkGYQO9SJB8E0B503F5/A8keEL5ZtPgAmKZph8B+MqU+Jr7Vdr0WHmiXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCWwe+Bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCWwe+Bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738AFC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712459296;
	bh=/iml9zR5Es89Tywgfg1FPmztEvFZ25E4SeWmlPqr2VQ=;
	h=To:Subject:From:Date:From;
	b=tCWwe+BnCR4Kff4WgPcWmI5LVwIcPR6lyf5bkqwOOPlEFkHQNhxHvsD4oRW2xZPbp
	 cDgKCcoXuP8eqW/4D5r7dG1ChrBD92Ees/ZG9/DSJIdrMXBP9CgarVDqom+9SrC5KY
	 bGH+6Ty9rLwMMAizHKjMZZ5fP9NknNbk2WZHccplGqsq+3PCLZIHL8Upy7T8S1I2aC
	 tflQBg0iSq3wNNWXsDknwxbuf9N7EmSnzLBJF8pCJyV8rrkMmBplBx+455ReOwSLPz
	 uODQjaG4ueiBwNqHGKONi1dLTciBuJW+x7VqsEaTaIBOitGsxwlemD4J6qG8W6ef62
	 4pFM8EjlO3m2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627BDC67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245929637.12768.16658299554851204770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb84e2d60c51e6598c47b67b514f4f2afe7ba9105954298a73052812c26d537
Date: Sun, 07 Apr 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712459296
