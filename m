Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5202553811
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712917163; cv=none; b=rm6mbMIuE1GtaULpih+M4jbE5JhgDXu6g7xcK3H36BPw96hwSAETYLlpL0zwmrSpEa+QVddX7RlQooSRAH+MzwDftVWxfYNZJ39pWHkK7HC9WDiQ3EfCENivl7GhQ+PF+3gtmhDF4GN0crdTm0bgOihdV79f4WV3Td5R7Ugg+Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712917163; c=relaxed/simple;
	bh=ltTo8tCaNBxSe+XrmhGGX97hgmjpR3p1ng0rwTAhTjc=;
	h=To:Subject:From:Message-Id:Date; b=bcSgJnRY6LgmuQPNPm756CTByvYXslqEu3AtKc7uuqIUUH9sgy9ooGm84S7PpO5RzvtVWQ09EGiqTM+Q9t1AUjRPC2/BAKQ+TWdSOpYYFKBdIwE1/9DM20d1s0v/k+p92HWTV806RbLRaHcKX5pnhyIWdzGVrkZFnXT3+iEWbiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpp7LIuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpp7LIuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3745C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712917162;
	bh=ltTo8tCaNBxSe+XrmhGGX97hgmjpR3p1ng0rwTAhTjc=;
	h=To:Subject:From:Date:From;
	b=Wpp7LIuJp5Oyu2CSHDeGBem/ugnUGnRFa5lq4vX4hx6v3V5aQW1RQQG6k0gWiC8wS
	 FmPxS5KNkBekCX1yZUduOJnJHt4sOzQS0nYNK1YkU9RdvqIRcNP5p/GKdGZwgs5O24
	 5+lixdnpgg4kBGX6P1MRXpdbkCBqqEgoj+HKIwUfjjcy/R6jON/hC04vyHHcDprzFt
	 oi8iHMYwKIePH1OMY3EKfqTzLrJwTX/4eBAGpsfvf5+dFE8xjsLWLJIYtE9LbOs/SX
	 x6vDWeimNhdvlFYPdFQM7sevYZBsglJhQR3lQ4kxe2fkei9zMnM/7iOVKYTl7/3lZC
	 dMV109mUkq5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCDEC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171291716277.15747.7622045274013465616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba4c91ce20275e15afcd34f7dffb9aa9e7fc72056a2b4fc3891c1caeabcb9c2
Date: Fri, 12 Apr 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712917162
