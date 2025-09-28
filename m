Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2842E1714B7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759083594; cv=none; b=YEHkaDC1jww1MjITqu/OZLb3s2OHKSKDCutwxfVtbzvQVDbW4IDTdwX67pKX07I+d6XMjZcNhirJb9/CjP/u8JjFpc4JyQEJH5vcj9khgtJ8rrz8qKEljh1FSlbF0WXRR4K60/IbwRrxhXgP/0X2ns2cCcmn0o9hLuqUJqk1Z+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759083594; c=relaxed/simple;
	bh=i68OG1f1F51lvDwGB2ZDAH0UZszL0yqfDiHsmIHAOEA=;
	h=To:Subject:From:Message-Id:Date; b=o1AEdshyt9JcukiMrzyZ46Q4ny2R1zoLX9XHQDhIvalcdgYMu1ODrJcNt0GIN8Ya+rWIvHqNjMkEUJhnoeTQzsYsYYKhxe+fT12UhildGBYBf6+e03Mfp+ixBYU/D9PjiigmtMZHVYiqW8i2/kgs6gUuKbwqlMzTDjBk4g5NrOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkXHDMwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkXHDMwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F3AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759083593;
	bh=i68OG1f1F51lvDwGB2ZDAH0UZszL0yqfDiHsmIHAOEA=;
	h=To:Subject:From:Date:From;
	b=ZkXHDMwCJgg+36HgOEg9JWJP+SbkBvYouaW5SuOKe+C0vbDM9M5oJjeIGIiDLq4tH
	 qverJN/40chKmGSoIsrDA907wyqTf6+DB0iG4mbqkqSLwhFhgiZlQbPoSC3xqt6p+/
	 qJtif1ElYBe2Kkv7xN1Q0CsISo18pQvALdqaIlJkSutoc6mXat10NuvojbtKwGWHYv
	 Hv0SAPs4rDUFOQPyzQuX7SegdofIuFZAqHjmpMiJ+tkZAOr7AQ0Tin4z9FGjsV27cm
	 UNsa9RbwNPcYknyCvFx9fU9l7p3i3TG7EzfO/ZEG3oju4BzL7PeZI+wYM+eUxxv9Nk
	 +Tp4q5ha6Y8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94431CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908359358.3489.13522729238664608002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffaa9fed69367e56cff1e44ce64bfa798ec98092c2a5e87927cd6ff97a10d05
Date: Sun, 28 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759083593
