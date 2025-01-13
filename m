Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F5240232
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736789754; cv=none; b=VMR959i116gt3Y7VnKQji+SUh1aaDpBLFCzP+pLpBrq2rj16Vt6YOAWTc1VwtMx1Lv76kQXWrshfQYszDvwWBOv6r7ZsTFBfXX34Tj2A2vtXta23D9Q9Wgv5ohKaOfx+GJcsWO/Kjz4OKh4ll83w9/SLULUhP5Ead4V3wVtZdbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736789754; c=relaxed/simple;
	bh=MVFyq0eCJJyU2B5an0OBxvlxRzcgCKat9E5zjkSGuGw=;
	h=To:Subject:From:Message-Id:Date; b=JfLDKtgdPj81oIfB+TnoUacLa1G063KzdGGLitq2lAO700BqplahdITIJAC2FGME8oGUp28YPFPPbGax1IzzCW/uAgF+riK77cHvXBkqBhk7W1kHp/nS4aOcyX2gDiXadnxo7S89a7k5tVwaxAxaBW4h1lk4FH/uL2E26QyOpPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovFwH6nP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovFwH6nP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A672DC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736789753;
	bh=MVFyq0eCJJyU2B5an0OBxvlxRzcgCKat9E5zjkSGuGw=;
	h=To:Subject:From:Date:From;
	b=ovFwH6nP1NAwpMYyCC4h6FzyVfyE6LPPeSc+BCQrTsYWqwGVDPy83czG5z42KVX7h
	 RIpoUE32e6bqoRrgKFozt14J+kpzldWsdrSI/2EFoRNbt6iJXafODXv0WkMIKkx6zC
	 p8H0rj/c3zDC0Zw8H6cqaWIynEoBxg15ZEC0jT/DooDaKFV4iGAfRmgBI6P1jaSb7P
	 RONSbmsmQX0vRo+S5PIC4BgkXACAouzJqdoCyX7PuqOlR5hRs+QxUz9g8Rk8TtS8ci
	 smIvHXdHGj7S8SCJIjRDphDRlpHgW91gi2Rgs/+wSJ/76enx3opDtnaqJlsCC8tAzJ
	 U5OJs/u0tg0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92753C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678975359.18261.12771203504445665671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff20ab264a8226eee81225f84cf2e3cc46e3766e7c7dfea81363399ac724d7e
Date: Mon, 13 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736789753
