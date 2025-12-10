Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36962227EA8
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765405374; cv=none; b=nbRiMpM0JXpGWcKvKR+fjOlaiF0/NfGjsZ6TS6Y4iBWk0tYP4GlqZAUiu53qiUFkchjIUBv1iS4OIgmT+Fh7t/aIsIP4QUzS9x6mBc7Opd8erbGrSPbm5phjlq6r7ege4fXj3rYtG7Rx+YthBAEkk274qmQpROW6HYFPZoGAU9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765405374; c=relaxed/simple;
	bh=bOLWcP1Kn95KBPaljcOp7fJ3c2hXoXkWE8Qqp0JeFEE=;
	h=To:Subject:From:Message-Id:Date; b=t3iKSpxfHq8Ni0YI8xSF55NxTKlIVPzZzMC+33n6Dim8o9SdhsI+g5F6/x9lRNUolymyKWPDfIthYVDN72lg5CW8xNBGpTgFsyRH81hsq4rlkipsYpGAa3rEiL6t/T7iBvjpPgw5Jdwptcd2p8wyKKPjBPqxcogfm5L3wDr3sTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE7QFB46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE7QFB46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2CEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765405373;
	bh=bOLWcP1Kn95KBPaljcOp7fJ3c2hXoXkWE8Qqp0JeFEE=;
	h=To:Subject:From:Date:From;
	b=tE7QFB46U2cgkGqFkY8yzMMdL4yfDfWSm6EedwTpDLyqA/ikx4YpQVK8VU3nQMu6S
	 HiiiQZKHxPs6BccCR5TR+6DsVBQ1NyrT9BaZcotlohwb6JAj6beVI0jeYITTeDo63t
	 c3ik7nE2uPcoxAEpWENVCkaZAjQqBHJkwVb16bsfaUOepT36Haro/SgN7xiurexJC7
	 otc1Ux/q3y39PKgtLY3sOldnA8wa6US5Ix//EQ2Ia4jE/mKbR30fskRZFQfzuP8ZHL
	 Wl9p+phs3COJTwVli8+GQqH1vXZ1St+hd4Q8oxFZ+EbBG0AcrzSxqb4kZq+w4UficZ
	 0EvcfsblDuwLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F57D3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540537365.20806.9534069908949073730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c3a406307a26d058a9c9c7cfaf143eda23bf87ac3dc32a7de64b17e8f27bef
Date: Wed, 10 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765405373
