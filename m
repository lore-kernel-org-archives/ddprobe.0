Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CBD15ECF9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720705643; cv=none; b=azmq0RTD4Xxk/U4kf6otsM2SpaHxJyBQRVT53zJsx1sRdo+pAMuAQdUFM4w88rZStCKeGlamI1xGmoFZwXqDU/DC+u+bxETbpAmtGDHskPGi/WAntSH1T9JfZAdBn/azCXp+tYn9IgQcVjqI09aOO46rJk9F4n4mXQ/vx2KL3Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720705643; c=relaxed/simple;
	bh=BazEMRK/8sZ7Xw98SFu9zlwqBWzQet67OAvafREzruY=;
	h=To:Subject:From:Message-Id:Date; b=pP6zMmFzMXek2tP7WXJV4piLSU3jYFJ4ltmiZyY4Qn52gfLtFE9hvkCS2CM6WKJmQVc62f1cIvFRvTi+9JtC6zWayuZ8y6lK2oBaafWHQSJd5x6MG9E65vjRAWINfiNY2aTMicKV7Tfl78z8Qqbr31O5h4UfZ+q8TlmWEkcKzdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5GFNR3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5GFNR3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B68C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720705642;
	bh=BazEMRK/8sZ7Xw98SFu9zlwqBWzQet67OAvafREzruY=;
	h=To:Subject:From:Date:From;
	b=b5GFNR3WztGY2qYyAehE9DorcAMejM6WGZbPshdzqQ9EUqkucyIKWkQ2XZsBJ8RMe
	 BqWrLVOwy5nnNQ5QueHIe0jADepXr4W4Zie5OX8omvqPfD18t+hAXc7b+ILSREAW0Q
	 46Q1E/t2Qf/913agYGU8VFsTI0XNNgKCtHvExFBvSTz3qPY18MsUzJPROD1GXpXdZl
	 zzJgbm5dGc8JBgKUFBVHa6Dd1DK637+1CRUuS8ybmdE7Bxs18KYXjgGNmwMh/xIno9
	 u3R6TluuPNAUpInnxcLks8IE/8zp9wrpImOZEUb7iOGlI5zgeKyJYtrN4KwHuufpdc
	 UOYYzpdWXG6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF206C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070564277.20302.13205098769960816317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3c31836994f628e85fe8858e5806ad04fa7a0de54af79823307037bc502add
Date: Thu, 11 Jul 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720705642
