Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189B7A35
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708492697; cv=none; b=sZXl1S1EQbnTgFFNflhgBNn9w+IOTltzu+LVZxAQQ/y3EiBP825K6T2x02PxYgySivX1WIPOCg8Nudez9VQAyHH3J0DfM1JIJng78YSSk8r9TWhPBEk4wWzEo6oHL5gF9FDYJL5eo0sJ1j2EJZS7krDYij+08YebAqo1NsMUcj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708492697; c=relaxed/simple;
	bh=hI+7CjjsP/PAqPkdmvXLdKubtGxJWR6/e83SGPz3U6E=;
	h=To:Subject:From:Message-Id:Date; b=T89fqf8Z2SsiJZuEijVK+KrlXPpDp0uO2T5XXx/fS6JRxOSD4qRprYiexOr0eq3gJTobhX1163BpuHhtOUdSdeCt9pgOfXxJWbs3tuuq7fuYhKhN6ydXXMVnLFnn1jBr5u6ucOG0PCBnUKBidnEdZyk6rEh6jhPTx23B4eTOtBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8ON9Cit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8ON9Cit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82155C433C7
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708492696;
	bh=hI+7CjjsP/PAqPkdmvXLdKubtGxJWR6/e83SGPz3U6E=;
	h=To:Subject:From:Date:From;
	b=f8ON9CitoGBcTieCv8pm6tOCpymtpi4l50ZoctMXlYUATUMJdQ/R5GNf0pDzmmdUN
	 Or91KxitDX2BHSwV4fTe45rq8wFp9+Vo2lUwHRGWRSsZOV2k53aty6tgRlHvr8nwy8
	 GywRUFlZ5BRqmaX2x9/5Jg7cG88K1hPzBNhhPLmpQIa0IgBXB+9v5iLKV1dyuulmzX
	 Uy7JeSpItcZ1XpWVDCdQQ6lfM0cXIK2znEfT+b5O1ReAQ4jDVo6FT7vTmsTddejLKo
	 LERZxvVDukak4OIzut/mgjuRH+5s8FpY+xyCRTHNecSnyGPfJNXFQk2wMurev37mXa
	 Utt/Ryvg87GNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6649AC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170849269638.17692.7992368748875687162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcab65991c2f2d4d62693fa5b1b296c9bb8848c5ee939cae85d2852913cb69a0
Date: Wed, 21 Feb 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708492696
