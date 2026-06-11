Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AF240D576
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781158594; cv=none; b=APhQQYxsGBOApsPDegsIChv68TEoCJ8VXsZvAKRP4G4nGjyYAFr0rHLIRqxUP8jeQybeYw9ldx9F9kBDPYojHzpW5ji4rFL68pvJGFbBnLMCOaZE4m5ocf6l8rVVN0bHlBEypHxSVq910LmVpLlWcfP6b/ke4R3t9AWRv6YPQYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781158594; c=relaxed/simple;
	bh=FURRSjOdXhLeVnEFj4eldJYb51hdnOT81WibUyIPQug=;
	h=To:Subject:From:Message-Id:Date; b=M6UD2kEN4a2MCC+6s1k4YS3UJhFVO5Fzr6gCc/b3AhK0EUfzLot0qJ149baCD5K7BdDEG7tM2oUTwgeKWoMmLr4V1sNkRLgIRsIbZ07xttFaPlha5ok6bl28Scpokz0vm3r8Lrkes9joAErJfbnJb5lgQYAcfhGw1eSLrEu0ESk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcPju1S3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcPju1S3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB55C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781158593;
	bh=FURRSjOdXhLeVnEFj4eldJYb51hdnOT81WibUyIPQug=;
	h=To:Subject:From:Date:From;
	b=BcPju1S3D55F0XpuRaL5PcrQblKQFhRC0pHiqJb0a1AarlLBE2A6QyMjvhsXT9Zeu
	 QOWZ3/w9rCRBN73K6AsP7NEkV5O19JyB1JcB4hhV09lyFkxPIAVfFJpoy9B+W7YMIc
	 fxWAOucI5J7zTDejat2b/+3/wH8S/o+Q1xkU7NX8T9HMSB/bS7P5hS0ZUG/75yZpUP
	 jMIPkjHFJCGgnb4dYxo5Qov5lubqipf87DkcV0wzMkloQ0jfCsyt+2LwE9sC9THrp5
	 5iJuF6GbHU9zHsJHEdU22rWwW8UdrXUEcw71W390Wx55DHQ/AaiHjZcZpHUq//Bkq4
	 VskPTFeV/NAyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBE7CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115859369.4066.6086305995917640188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec69054b75560300842ac4d142d092c3780450f2f573388749e7dec473e11dfb
Date: Thu, 11 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781158593
