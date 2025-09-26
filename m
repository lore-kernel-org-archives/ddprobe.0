Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9F158DAC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758886796; cv=none; b=QY1ao4e7GKWmWFV3DC3DtOrEcRO+CdUdfL3/470j0u6f2xzm9Xzwnn/klozlpGE03OpcHz2xSc/sGlj4lUd2QJwpHulkREw5ycL53diOZ0tfUmh76NvfOtQpNjCo79HrrdaAB/LK0efIJL5r2/SR6f6PKOCOLz22H1KgJdx4JSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758886796; c=relaxed/simple;
	bh=A2PVKmZVvxh7oUy174rKisqVtyaEjV9mrG8nHWwxu7c=;
	h=To:Subject:From:Message-Id:Date; b=lZFLjVdTYSe5XZWrfZ8yIAwaQQrgwBVLMpsFeSqr22nPnJoc3WTofBzndyePq2ri4IunS6tOyXojoW5oWEpoejB+R/cOWs3RIM9B7KNeD2nMm8bPDrtbdzm9Oi7vAugH58EF/yLDFHKuD1Ac+UKmZY1zUZBvsNW+bpJ/8uyERBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC/SIHSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC/SIHSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A885BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758886793;
	bh=A2PVKmZVvxh7oUy174rKisqVtyaEjV9mrG8nHWwxu7c=;
	h=To:Subject:From:Date:From;
	b=rC/SIHSdQYkMu0ZNUdSarR8Wo3VSN9fFA0RlQ6V/wv3YMWjLX08F4jSMveC3TbC6v
	 wkp8D072K0nAURJiNnjTP/Y8eFMjXJI1sQ9ReCyD5SpLvNBChwd93XT8jG528LNC7y
	 qKFj+Ub2vSdlMvNow73Vr3WiZxXWz81sd18ACaPmsQj0T8CD2LoMe5KMY4chZ46qPy
	 Pk8zahEkZKQ3pvBmiNrt55ng1Vv2UA4SB8+7k1ihS/MqzHi2vhP9f8NHsEX+8d9IyH
	 gRGtQNEmxmlQlZ6DUOE0NFz82W5tOZ2e6SLRewBlDH9s8NC6GbNG6+IKJX7gE7dN9p
	 mIQemHmXyixbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6FCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888679359.21133.1895020485137782906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4306c558088be4246516472a1e4302fca258c40d907d5911872d5ce92a5ba978
Date: Fri, 26 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758886793
