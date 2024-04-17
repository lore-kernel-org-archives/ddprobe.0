Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C1E16FF52
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713376763; cv=none; b=eOAK2H4jD1AWrqqjSjQ9q/E1yuowmUmaE6Y7WKULxreSgx0vS5UUl8EYJTJfGOZ4oTL9BrlJzD929AR90fyO6Pd68TIr27JQ89BUqDXOfZfXzmYcAoTJRM9lKk2iP1rVuOWUgf2lKMOef8ctw50Pdz8gDiSFMVU1gJKSiaXAUbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713376763; c=relaxed/simple;
	bh=ErjesdQRUiBX6rSbkOyn/KEgKgfLjIehrqu4+qnucTM=;
	h=To:Subject:From:Message-Id:Date; b=Z0DJfBBuraV9FfVPuW8xuPZZKCpmDxM0B74U2PeH5vjVUV3nJX2R3fXqsqYW/+wQ1QCEy8A4/9exDpxHem3CS71ytFb+aGJ6fbY5fhdeedsyCK4RH6z7Y4vB9dtn9MDxJdbum60FUM9PglAJWrU8MWmxvrTqEE+xhN+WkMmyiEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCor1q+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCor1q+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CB6C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713376762;
	bh=ErjesdQRUiBX6rSbkOyn/KEgKgfLjIehrqu4+qnucTM=;
	h=To:Subject:From:Date:From;
	b=VCor1q+7pVNBE/tZpttJ4cFaIXG9B8Errref4dj77KshPvmu+xMLFViXn0qkSCIFL
	 2270/U14r8jaHe4HhN3mPwJJSsLr8r7BypJc7xJAimlPdAdXc78XT91t9ss1tI7fSd
	 A5/Meh3NKtNZSmfDcN/fjswbaXtYSv+L8c/2mEnD49Wp0hUCH7z9jQtptJAUs0uOTF
	 Bixm3B9ep9/cq5hebmoJuYx4gwjOEaYnNEf+4s0GqnKAhJCTZYyu+CeLql1mx3ASot
	 SxSKa+QaP+c2FOp4NXA6lQwDAHkwUH3cgmXdo9woeikTNHmLFFKW5/2pWzHT/c92Pj
	 l7DxifLHzy9Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11F4C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337676278.27063.13317466931008254896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66698e79203eda29a50c5df31c2467e73bd1d5dccaa0dd856c76935f2e94628d
Date: Wed, 17 Apr 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713376762
