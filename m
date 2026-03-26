Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1486225A35A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774569294; cv=none; b=GqkziV+83IJEvBrXqYHysyNP5vVa3TFuNASzvcRVAMUg7yqRtPTl5HHSd68bGZqp+nI7ANpYXE2BfdGgNqEdiXc8Kk0uxcsCGujkNyGKaPse9ScA07bXrQf++DgbIsLipVCT+1wovcYP4r6fpp+iAVW4oMaqdFvCK6N1qysQJqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774569294; c=relaxed/simple;
	bh=wZxIM87IV27om3/BuN0WCO18UULK86RGgRxqn+kmzSU=;
	h=To:Subject:From:Message-Id:Date; b=VSRlDHAGMv6k43uTg4IweVrJeUtKcyYmkHpKZLhoA83fn6wJx9tSybniK/UZXUPoeD3ABGhm1muKQZb9SYJ2Qi9INOva4GEsPZ1zpytAoi2fov9+Dr3DpwcoHI/nWyKJAKhNSjpidns0eFTyV95XwqkX76rePe6BqQgqdiZUTLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q36XO0UD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q36XO0UD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB86EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774569293;
	bh=wZxIM87IV27om3/BuN0WCO18UULK86RGgRxqn+kmzSU=;
	h=To:Subject:From:Date:From;
	b=q36XO0UDQJERIOm668iDaKwAesOKrVzmukm7YlaMbQ/wewrS9uL2S1Nek4aPMyrVA
	 I6gzL8OP4oKipGbZratidLdpmx+LymxBcCOS1EZ+SBOyjp1Dpzk27itLlEjDBNDmWK
	 x7d6md4Xl6IAm+NfMYRntUr/Wnug7LZr+4NloZI9dzKKWjeTzJEhUpGfebzUojawm0
	 JcuFO0dxbHv22nTiMlBYop7OZdziXJArQxEXzYivCdG+frFJ/Fe8qvYi+dQhu1ea+M
	 GtP97ClY2k/q7Zbwlfdozb4OmkAvskkqqmSwcZNsmP+CiSdNEwH99heFZufEOT2MqY
	 9OPhemzdH9Hvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992AA10AB82D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456929358.17003.165421923562488908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f5d33ded473a349242f025e02b23ecc88446c22762745006045e009d8e1f61
Date: Thu, 26 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774569293
