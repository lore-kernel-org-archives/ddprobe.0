Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC50196C7C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750490394; cv=none; b=Hnxr6Jwr0TRE0Dk7PfEmm8u0kFitvnMUTBwfXYxMcrPEgfur0p7fjRcerJcypz8rcUKzuCX3xxufSGPWP4UmJ9HLYSptzI0ZE4js82a1gFryC42UpxzcD+F/8d93P5Tu9ALcwkjdl8PqBp+MQn1Klkr4HXdmcKOMN2hE9eGRhcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750490394; c=relaxed/simple;
	bh=NgCOgSQvMdBHT5ua3kOtiE7sNJTN8UylxMM5a9ayFmk=;
	h=To:Subject:From:Message-Id:Date; b=ZVbkuxOKQL8hJ0qhRlJRYCX6/riRo+ZARHf4xFRBBHk1e+sM1Pcr8ldaNrfNWwOcb0y3Ykr4iEWAhMerC6i5sfo5G5mYJNgje4k90XgCH5LErkhCpuBdFRoJ2VPa+F3HxZggFFDQ0c2Ch6tjz31Nkse5qEj22siNe20P1885mW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OC5Jc/Nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OC5Jc/Nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0486C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750490393;
	bh=NgCOgSQvMdBHT5ua3kOtiE7sNJTN8UylxMM5a9ayFmk=;
	h=To:Subject:From:Date:From;
	b=OC5Jc/NhlREIDsrQFopIwgPr6tcD3uLz4s8+bZg3qse/X5sW67XA4ItfooP8tzWTk
	 mfKep2JZ5SqwgLIMLRyj3MHgpffVMf+7dskAueyEEhPizkUGwgtNqTmESwRzWdWV8e
	 bz39OZx8/XAhoTYnGcRX16n9WTxSvJajZhJyFYZc1A7htIthddeJWjX6ohUZlMiHX+
	 XHpXJshn+6ypY12N1ggDROd+uobOgnQCZdKKLKGUE9LaBIB6IiW6jzKXEobysLC+SY
	 E+3cTQ3YqltKoi2a2wD0ZbYqAa3eiV4xUUSmrr73thVytXnKYK0GMi0k65FDFMwSIS
	 mIHkzKrO8yA3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF1C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049039357.12761.13728965825886938066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd55c367fbef78bfe01e2566757b07fdc5e38aa3369d45bb34b3e6fc8c415da
Date: Sat, 21 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750490393
