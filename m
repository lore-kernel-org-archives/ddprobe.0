Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BDC1C7299
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733058954; cv=none; b=E6SwZAIX5T3qSpeKXh4DypHCUX85zKRyZwsStwy+INV/Pm/ydg5z1WEgdvmfG4EYdhF2Gpyc78pqy0edT3zlRHQ2PaSPs4Dzx8lWnyGIwNKpZohiAQhXlE/IyFD8qE41RWUlVh2+0MzqzoxzIOugG7uK1ehikV4/AplrJtTerhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733058954; c=relaxed/simple;
	bh=vl8R4EH/se7qni7tl9fa4LE5icl5WcmvforuOc9WADc=;
	h=To:Subject:From:Message-Id:Date; b=YAll3CynvBE0RcgwyRWWJP39qQ3eDJF4MJK+3RHpXt/fHZ7rnxoExK/nxKN9lQAp9vkPe6hT94BIoQie/n8j7shXM8MdVQrCFFRHTQf1Y7AUD05CcO0pGdMThMP+VywB/AA29Fb7oE3KEEw5XVt+9joSc7TjzNPR7xQWw9gtDaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7hyETmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7hyETmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91F6C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733058953;
	bh=vl8R4EH/se7qni7tl9fa4LE5icl5WcmvforuOc9WADc=;
	h=To:Subject:From:Date:From;
	b=N7hyETmCpxKPTL8qGKx9vmG56gR/TncZCkIUn/5/nik9UM8cqpuM9/7NtIdjT89Lm
	 ETz8zxVcDSibv4xt8GnZX124BMhlzORDpzuq+3lOGmeByP/FcSHtha8hi1Tr0lgzA2
	 DDgj1eAo9PgfA8uJwFoCYrieBLynuwPAw28bKQQq8vV9Qj2Cw1uIS1y4G6e4HgjdDt
	 8EMkGQZVikpWx8qRRYmBEvclnSbNYSTFAvD/NLRHsHT0zAhuzI03as0gI3GArxcEDL
	 j0jVd4J9tn1UUVo6ABxWF0J8rv0+7mTK5b4PqhhOr5S0bSLbDsFfMP6wA1NXo8fQAp
	 8Wi7p/mxHW5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F969D4976D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305895364.11975.18067878404493966260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2559cef3c48047aaa294a9de04a55d5552dac8e85533ca8f15d33bf61c1c7ba
Date: Sun, 01 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733058953
