Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EFC155A52
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737416154; cv=none; b=BjkpKpwTsZwAhSkU5qSH1zMYaoX/AbaXtdjA+1VUrzfiPOfr/Gja88KShDUfSx35okJAndBAHI60KTceizxKnBpzTso1Sk4dmsfovyCt3zp0gqfbvHGkmdg6vTHF6QXS4f94zgoDTg6vKWw4nbP929p6d9AfycVjMgsY8zWetlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737416154; c=relaxed/simple;
	bh=MO2cTPlqPa7qYuQ954u9e5rspIoHDNC5AkFkKhvy08I=;
	h=To:Subject:From:Message-Id:Date; b=tXCp5uBW9WgKgMyEb/iAxme3PmFQgdvJvn6TZoIFN9gOOIV57TlzW2B7q7P+7VlwqffTdrG9Sfv5Bh2JA+r4t+sLfU82qsp5OhAffAPI4A7RdzSz1kz18/Tn1eYc+pjfwbI43zeigFLzaFcnbB87YgZMyI5aCPd7gSCjQBjHXVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaCQc2q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaCQc2q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF943C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737416153;
	bh=MO2cTPlqPa7qYuQ954u9e5rspIoHDNC5AkFkKhvy08I=;
	h=To:Subject:From:Date:From;
	b=jaCQc2q1ye2JgHLP5gC2FPZiA/uj+yYsbb47gfoyd2vbLOCMLh1bL99gSz6AUJG1q
	 7CdtA/xJ2tRHIOsJTTkqjud9XrWJW1lc4o/6tspNynOQnQTeqjGc+GPD7HezaS2pPn
	 DoOfqZWI8zZy9a7r1pN3mlfu+uNtJyPMLR0SEfS3EEIMWGLJRSXcQmYWAR2TlZjQLT
	 j4mk5w9nspZ5qNOEcA6hlR9j0CmsFbor+uDb8mdib028scAaufEgQrHMt0zu823lM8
	 BY2xjUxMjNk1zmTgqiK9Bvnn6E3jC+LFNl4/SQ6Iy+fof2GK5FeMjopRyjPhh5ETmS
	 qhVl9/unI64kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA20C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741615359.18197.6625690478132738252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdf0d5346edbda6c95d8977ca8566d68890e080a551cec5f0a85bb68b0ff3e1
Date: Mon, 20 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737416153
