Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34072367B90
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780436074; cv=none; b=FMWATshwD3sBo7rdm6ZUo1f37foJRCshNO6D5wpwTU4rVBEbpQCVmTHks/gbzUnNhuXv6qJiYtEBdc0l4tihlxh3u2nMj+Q6NJnogYYxwfbDPFCVK1ittRVc5AFUuuJrOlxALH/Qyu//x1Anu3MJr5v3ORfXAJSgrzxSKFhKNN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780436074; c=relaxed/simple;
	bh=6K/yORFAinW8Jbl7DzmU9+vCdU0C1t65Z0Qe2nRoqfk=;
	h=To:Subject:From:Message-Id:Date; b=eWhdM58/cN3nVZ3ggUJl1P2J6QMqWWvy5YzASXIH3Vaxf8IEGZGcPKiRU/7d6zPWeY0EeO0V641UvnMo/wWUkWt7ioFIQVY7VJtWBofCvYwlSXJacEnx9clJjYepnvOU9CM9/mm39elBVLAmhcEmBhbCNWODb2Fz+drPUv5siEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7uQGX7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7uQGX7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CECC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780436073;
	bh=6K/yORFAinW8Jbl7DzmU9+vCdU0C1t65Z0Qe2nRoqfk=;
	h=To:Subject:From:Date:From;
	b=H7uQGX7i1SvxI36eziVWLDoFbYeMj7VV5roZv+jx5U5ghDfGenGOk7aG3wqBihn6w
	 W/mXWz02PdmCKwNWhbvBU6MIsB9s4pY9TbGY6KaimeIjiDyw5Lg/7lmhy6f61nOeGG
	 ymans4a5LSYjCRrLaZQgefnI83IOG2fBqUL5KrhNpb1lFAzgiav75FJYcghcTRI8sB
	 ijdCR8+PrYHlByDVfYP+EmRSKZe5V1hrOURZ9iAyYjR7kaKI2DsxvTuV1F7x2j7r/p
	 iaQG35LAudNxPzu1UcXS+6Txl7jhYBcyz53LupeofAppkoYbO94fgTzWdfEvnMT2y7
	 tBmjlHfDjr4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA85ACD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043607369.23075.2779051563241910524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39bb2a98774737492646b2df26f61bb5e249f8dc08c1e87bd95b3580dd3ad54
Date: Tue, 02 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780436073
