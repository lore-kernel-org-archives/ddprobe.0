Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FED7464
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758014394; cv=none; b=YFEbfHQ7swx9TPzl0qUmAKMNyAzDrerWFqRI6cBEWT+M5wkt7wz799Ubz7nyLsv55fV3F0bqG1TGZNWQUR5pFXJgc1yn3F3yiA+2/45p5XFW9WDYHPfV1QHTFf0onYjcK8432POlwHkOCzRtGUOG5DnFRmWq4QHcNISZFkbyxhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758014394; c=relaxed/simple;
	bh=iXzhg3eoi07eBXK+d7n0qXi1bgTPpLuSDxK2ONOUtNI=;
	h=To:Subject:From:Message-Id:Date; b=ER+mWEsVEYVoByOtn+7/FOmn+hBsBeW56z9dYcCSf/6iBj9/JolJwDkwfmcBsZZGHlTpdoEn7ohxn+xXiMo98BdvKh/abTRK4gRREAq2WnWg/E3q+8TbrDpzHUXMg6v4BAMAm6ruzWgeJnnYJOhKaAd/YghpdFOtrRHH0D/ovTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zliv7/OH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zliv7/OH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758014393;
	bh=iXzhg3eoi07eBXK+d7n0qXi1bgTPpLuSDxK2ONOUtNI=;
	h=To:Subject:From:Date:From;
	b=Zliv7/OHmBRHXdbEZD+DpcenwsYjP6mKrzvIy7nN/lLdtrRSwUqSG9SaZyZ5sbHCE
	 zeAHqZDXn+o1z0wCCRvFCJ23mFVw/GdNbcBtWAUz+fQjESqHjyfC96h7ln2z5v+Gyz
	 uw2XiuMGCnLgtqkOTqYzdwNU+33LluSZ1WN+VmMW9X8Uk/C1yaUn1E3XimXFoeLjR8
	 i1pu0pHng2jzHPrM+R1kxkPw4SGzm+JciAvP9T7kXE+ziO57MD02T9czDH/D18HunB
	 PHwSgTSXY6VWvEoCiKDMVRL+Z94QctI55n9Qbpu6cArZBBGvq5s/alN+ORzJKlwj8U
	 K86kySq1OcnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7BCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801439359.7818.12707697338797228260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2c4583bb9a76fb8327ab5e3efde10f063f7610a8927fb288ec5ac6876fee11
Date: Tue, 16 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758014393
