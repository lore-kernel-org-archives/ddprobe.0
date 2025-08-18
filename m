Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A7E275B1B
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755554994; cv=none; b=Hn2QeJHFHhvTrSFk4MNkbynFgAwx4xtjLafit/9Z8EDkPdRsMa73x+S2XBEQJnMea3jCCwVDTqZoZQdbm8mMrOPaRnZALBI6zA4yA4CivuisphdKkf2DZyv/PWuvQq+6NBBWkzoFjmefvdhtG38ctd47+HtrXCGe2ciljPuSSHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755554994; c=relaxed/simple;
	bh=mnllhgCgYWYAAp6kIpgK02Bth5cAKg3Oi9D1r68rpLg=;
	h=To:Subject:From:Message-Id:Date; b=TWlI54srbk5hsncA4B695a8V731qiA1dND7+NOKkQo5HS1ZrW3heGHWeI/cb37LgrVl5+Kk+2WiMarrFiLeFCUVgjsYLo/mNR7FpHYheom8X9Z5VHgaSUGodsPprqXkHI2wr0lWtSPrX8PCoppn8Y18RTHWsJ+pHvOaWeqoyaxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggUsC1KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggUsC1KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755554993;
	bh=mnllhgCgYWYAAp6kIpgK02Bth5cAKg3Oi9D1r68rpLg=;
	h=To:Subject:From:Date:From;
	b=ggUsC1KZfF3ib4f+vDq0illtzeDFv7bBBVtnWGT8oAtGFl3BhM8Z0JZGoQMv/lfQC
	 RYE1HnKzG0RrSJwtsCOkD6oYOQFtxC/gq7OFOWwdV0sH/9jDcQtwQnewQCj6WBB1Eu
	 zhqWROATUD8f71Z4G3vKKkpa5biHaSmvoLmJ5+ZgKTwDfmazE5JOZMHyAfAKjjqeI9
	 P37iYsBWtGrlJH+RHLtRJDOfPdaTpFHgTE6zttgKj9yTMZAG2RlyVeIBefYf/itx6k
	 By6YzNHWbpq9nV1wwoIqz7eZtUHqF8iWcIBpct44V84zY0/Y0ljHLa9+BS8yUS78P6
	 12QplLUX8vRZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920ECCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555499357.32196.17477199969431764266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b865ce97d764576969bcd47e1c98ec6054979a18702534786edc3cc816d7f262
Date: Mon, 18 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755554993
