Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD22C11CF
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765400574; cv=none; b=mrEeRvqLvZnUNxjGqfHP7pJDy84XeTwHAltC0BzcKnFaWiuUPYAFoPQLpR20EP9JPlSH0WqD8e6fpr4c+FrBa8UTYZQhh8Mbu7XZF8avsSmqQ/gTxWsXSLWZQB2AwA/j3OJk2G4vrF7TdkvNs6ydC4/naqq7UpNy9U2EflYZZ78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765400574; c=relaxed/simple;
	bh=tG6Y50Pha719U3cyRuKNPZYWzxKGNUIHVqMRZ+1zjoU=;
	h=To:Subject:From:Message-Id:Date; b=rsYElGQbVlPchDM20YfkuWfrORXXjQsZf5Fpgd+AxMjjdcZW5DGm+ilaUuYlpyGmc+znrTH8I5NzLimi8bXnxyQ5iv1LVs38ftRGUZGByxzJLMe5FRrenXI2Gz3oDddTeT9XMReHaBe1kNvmFcRKPSrCEcPoh/D4OXThI1AuCeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMbRTtqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMbRTtqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE2AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765400573;
	bh=tG6Y50Pha719U3cyRuKNPZYWzxKGNUIHVqMRZ+1zjoU=;
	h=To:Subject:From:Date:From;
	b=fMbRTtqO6yAPXESxUyXedtKufa8vdUjcXEnZ2KlL8GjdSIJxu5Vdmu1XgA0xtc2EK
	 RizG/bcOJCysdGvgTuhFb705Dmo0uUuow9IykbVn466Uh9MjoWgE4QD0nxCoME8upj
	 TGwFdoVP99UPTZxaAiRQjszDS2SMdcSVh8cqI+K9kouphX1wwofho+NLRMvXgibO79
	 904OsvmwyBFEDWHky+3NtVs5bV9LhPZTnc2s/W3rxdicTw6F08ixk04X/Qsbf6gX1J
	 IN1OKTHuxe0D0v/MLb1pXmoHOVWbwr5ZZsFUknqqHhn4cdX+jArXRpbq1sVPDv549B
	 1PgUibFLIEAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95190D3E77B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540057359.16132.6733620956293455201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac77951eb7a8a1be3286488c95d89fa13699fcbf578e479edf8536d6750f4026
Date: Wed, 10 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765400573
