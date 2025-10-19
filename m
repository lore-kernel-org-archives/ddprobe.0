Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E788B2E9743
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760900394; cv=none; b=sRRca5Zskmz1YYD3YMDSMFnDniul2RmZFpxNK0fpGMot8pBUqs0YQAbmkLyJEUfo19booM0MMSnXFC34dmaZ6TuIPq5ZnjnIqMJ2YcIRw9i3JA6I3QmegwAwoGFool0ITiYxxM38Uccb0+OVX+B0gzcOdjNRkVsMhH6xCDG0y4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760900394; c=relaxed/simple;
	bh=BQT28QZgDRmZjpN23RMumnorkb/8Hhig1FGsNNkO/oE=;
	h=To:Subject:From:Message-Id:Date; b=NOKRMy8Fxaf47tZuto/lpR4+3dcCkJcQS01mFrje8iQADzqM0j/LLCsV68+OxSKPhbQUYU1+nImmD+eLcKvfDDnpu7UywB9dMH+STepo7jfA3BHFMNB2Qo04JNPN6JrBQ5Z9X9eLjfkPt9MqXcd5D9wg+AQrTgXR3MSG2ZDxyNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLpsjl1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLpsjl1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760900393;
	bh=BQT28QZgDRmZjpN23RMumnorkb/8Hhig1FGsNNkO/oE=;
	h=To:Subject:From:Date:From;
	b=qLpsjl1ssAqtka/3iz4o8GX9zv5lChAqh9M40Gt8TXsHoDqq9dgS8FJSSz8IER5O+
	 HKjcp2xLMriAYJNtGZx/C0kYXXrZ7E2/qxF7kIvMdSa6auz7ivNs/Y+Mchb2L3spOS
	 52YW7TO7yb/pjjd5mtDNlEo6EhWLvYUxbr3lIhuygEKG1pZ37Oh3wQBz9XwF+P+10f
	 jz0nWfmqOCvdvuMJ5Ij0J76T7r9SKlwcMerdTO9EPDJIlioNtszMyG+nE2hKP9CAe2
	 QtwsIlYL//rNJSWdkevyvdhGbrbj7aMFUdzmQzKeT8O+AqDV0nLV304uYcpzbS46Nd
	 eD+YXu6wUWGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442ACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090039359.14493.7775568485030838615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2efc03a6b1d913560d630218f2baf71b2ec345a843d976371bdfa363ce4069
Date: Sun, 19 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760900393
