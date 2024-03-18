Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D963A5730B
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710790096; cv=none; b=OTYbCveQ+8LYdyZhENjZMYpbUpbjz/kzY7uVnXcOTyCtuYEUxRcFvrxO0PUPDrC6j9w/wiptsDvBHZCrXlRnlmDwdhqp53FlV11nIMsRlzdMrPP62AXwmLRCmODZMUKHabwcgF6eIKLJUIL8Vylc8n2JdjjEYmVYnyVf8KUmb0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710790096; c=relaxed/simple;
	bh=tJM54NX1S8A49Iu+k+dP/AoGAXr50wdGm1dFglhMtDQ=;
	h=To:Subject:From:Message-Id:Date; b=ZDI84KvQqhQn6KFY7QC+agkIkENTHakDu5hgwp0hypDOfQY4Nlh2F/2yL6iEirlyFQuqu4pTNKWHROncALTwzPPsYCpHCFIopZGos3Heqd92UdWzJsfiuElhSIl4MeiSR3LBaU1cGk1KFuAsXntnQm+KKaMI3/jDuF7yNE6op2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkPGqevq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkPGqevq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7020AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710790096;
	bh=tJM54NX1S8A49Iu+k+dP/AoGAXr50wdGm1dFglhMtDQ=;
	h=To:Subject:From:Date:From;
	b=EkPGqevqA+QPScLfI2AOAI3A25AD6F6jAcVnm8nV8QDsVOzlnzp643O//+pkOwRad
	 vXzTrd6G2qVIEemDFrImisYYDi8k7eGbdywlyYLtk5Jl9IXzC8Fvj/8CQTHIRmWtx4
	 dJGFYqsW3TgDTa4ZLj9YfdGCwOgwf4Am6fAvxczQJuSgjGWYKxwlwhdek2zyyQAVSf
	 Z116KEsf8aWRPjdJG50/Z0/lm7QohOGidaV+urD7NT49L2VTGFClOw2NnqAmk1OoNg
	 6laQLDYTZeZgg1uaMtokdk1O3SAvZGzOcb7N1Kns0/9rZ90czrC7i46uKRgpUzK7+w
	 lsa8+MoD6q0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA65C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171079009637.23881.3195887749079561002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b272be5a3ac183f90ed68c120eb5e58a52b7cd8998561731fb01a9c45ad3a2a2
Date: Mon, 18 Mar 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710790096
