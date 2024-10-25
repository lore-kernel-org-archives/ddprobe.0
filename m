Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F170E1FBF66
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729855554; cv=none; b=RrmN8j1ex//NVWkAUZ3keXMd6SQzoqjE7sNY1sPmKDWp8R7Ym3El6eCJPY/qNry0Di4W7w6AG4PJ49Z2cCz6B/sepuLKo8VCigy2Qu4v7VqOSvys6tzZpzZ/njrYnXItthQx3vz069zrVxYLGdd0wsDN45ekDpR8fK8iLM/kSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729855554; c=relaxed/simple;
	bh=9S3L/c9au6XIVfLMbPNiXINCkiZxuw6GjyLXS7K7kEQ=;
	h=To:Subject:From:Message-Id:Date; b=lGaSGsu55jrUdoMFdZHSTFJo57CWAwOaYBG4dYvDx2E8PxgsHa7AvFJypdcOdJXbi4eoq9wfgoAiFZRrJicB/X4p6jBYItT5nJd8odOR9h43oVMcDTJ0fzsXny1EZWRj45r0ayzTNBz3Xh9lE9a7+gBitNR5GWczbD2QuIZbH4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5GKqtK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5GKqtK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640DC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729855553;
	bh=9S3L/c9au6XIVfLMbPNiXINCkiZxuw6GjyLXS7K7kEQ=;
	h=To:Subject:From:Date:From;
	b=N5GKqtK44U2jTOH8S5ivqb1gX/e5r99LjX5YmsboQ3+ct7hX16GBOUnG46uqRz5SX
	 bi/DcEK8In0SpsdF1F70gQPdPgODddmmI0PnJ+o4HsL49qSSNI9H7Vnwo0OJdvTzwe
	 kmAbYjVngSbjR5NaSlYm1PDtZbvvRbELqjzWdpd6P77cW3f3CV/QPdeoxgnfkozSL9
	 fCIBofWFcdQJa5PBOOB+WYYbdVYkJ/BzxazF/e/w+FWE71HhG2JkGN33XUSdT/rTQX
	 ClVL51nCM/2/nSPmiIO47jaSyw+1yjdHeZX30SYAB2zV0b4HUzL+9We0cVYs9jMxy2
	 jMBMYLT0FgJvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B5D0C600
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985555359.5610.16693967346502169872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dfea62fe2da7e4eaf3032a65dc5dc7397f4ca3394078e775cf015c814158a84
Date: Fri, 25 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729855553
