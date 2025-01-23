Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9202F3B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737637554; cv=none; b=T3L8wEQutlFTse0quSXxkix6uiqRMumBU09n3TW/g5fnR+24/Y9M+ra+lwcjpm16vdFKryik3ZBkzLb0pzzEbvDrIBgMlKJv0kwImN9dHiGU72e3Tl/FqVV4wNEejQnv9kabVenseGSOqBJTxrzL8vaj0UhhdCfHdhBNCNbZQbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737637554; c=relaxed/simple;
	bh=b6vKCBRIWEpvnnQ4mbchreyIzh6UsfJFzE4hAMg2rMM=;
	h=To:Subject:From:Message-Id:Date; b=QrRn//glLwpHkJq9ND1LljIlQHufKC17Wnq5wcqd/IpQY6b0PoQgQeU0umUYALAF1Qwlc81xD8xi411drpt//WdwmsCFc6PSJltdj0R6X3Of2hzJGKEvK7GzblMiiGM80D33w3nQAcIRtL0PpQgJQPZeleqpzmNniSmgxQVl8Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2BGZo5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2BGZo5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB09C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737637553;
	bh=b6vKCBRIWEpvnnQ4mbchreyIzh6UsfJFzE4hAMg2rMM=;
	h=To:Subject:From:Date:From;
	b=l2BGZo5U28+0UOkfHEjHAKIHf49QyMeM4CCJPF7EozvNENIykXloTxm+CbrjHeChc
	 4qK64WUzJ0xPOFTeyjUKdggnTCzowIVu/h87+Swy3+CyChRjUomGUlNQnqWyWqYqKJ
	 P1ilE52W1xlu5cXKTAQvedHVMhwGFjAJqrcx1tHsMSNUChozxip0yAGBjTv78IwsCk
	 Hdle0Vu6u9El+tQFJjI4Irw23vafobbTSCsXykYURF29+BK/JjerbxcN1ltkV3FYRZ
	 YvNwBgTHwSe/IU9DjQq8HV9d+KzGpSjWP+vHfaCzUwCoA+Z6WXJDsOH7f0zBzUPtmv
	 HsY3ATxRLmc8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920AFC0218C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763755359.6076.10472381621138362329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc02537e60c86b25b4662f9f9c87300938320dbbe76bfca004d837cb6fa8b916
Date: Thu, 23 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737637553
