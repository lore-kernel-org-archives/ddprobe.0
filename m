Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B60A279DB5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752242994; cv=none; b=DieIpYl0my2wgTZ7AmXpzZAramDUjsLrATOxXfROI2LRjekP+43XioAR2r1c9MRX0BiRaAAtjQBtGdVGqdl7CXG3Dw4RTw+y95dBRW5teAptGKrYH5YiF9BWUwNbSF0cc+d6fqn9MqqMMhaAE2PLPSTbC5PwSNUJeyfQ8bdQu+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752242994; c=relaxed/simple;
	bh=HXagCiuLEh6kL05xihW5p87fc2Tn44Qb+HSb2SI1C88=;
	h=To:Subject:From:Message-Id:Date; b=WJVI83xw6nTlax1GN9xd4j/nAoZ+UJ49BveR527KWBQpnjYtfJ3x19K80k8/xdTP/toJiQ6y8AfF2pdOy2BHLyY48yH+bOd+b7nvx1jhEiskS2UjGuoTR63obf/JM9Ui7dGmvom8QE7fmEBSkijzyIdi3YlZ4zElIjnCgIujci0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6WAiaJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6WAiaJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0268C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752242993;
	bh=HXagCiuLEh6kL05xihW5p87fc2Tn44Qb+HSb2SI1C88=;
	h=To:Subject:From:Date:From;
	b=O6WAiaJA2Fk+UkGiwkLA0oMyvuxVHnUPY6P+ExLLcFQ6QYsYgFyCfzt95YXpxZPyn
	 L5fu++i4/fUSNMLnHNxYHD5tYjyyggfx0id91h/JorHF6DOi7nruYorT01DWm5mtFy
	 JMHqgFgsngy+H4acWPW8KQGkMx/KvUK5q9Cp8R/SpGkXLVjhaW8sl0RpXkbY69xcNW
	 60MP0+BOMTtGRS8tiggI8IqHY45UWgTF7vgFiUaBDp+hycUG697HzWNNsTqM52zgqi
	 uGHW2gparWVaYO4aFlJeiIEEKUyWQUMw2HXhKW51mYWrQ88KZcSDSGO7SRZaRqOEP0
	 N6/ltO1tDuB3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2BC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224299357.851.12114327727005825948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8198fc634ba6dcd4255154483dbadb278f135b179fecd264a191c930719c579c
Date: Fri, 11 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752242993
