Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1888A2B9B7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767067434; cv=none; b=sNMejjuYunJqsLEoqZn2JrdjK2VoEsfiHcnfIzzZp6wM5IW90Z/mRDZJ5thmK3BkLkADsusfJbWhx6Aaik3QSHQvFyvLPyf1n3wXAitYs6kRQs9kNHD5GuS1NYpajakaKCCTJoqBV6MA8N3PtNo/5A/h8wMagLp1bCit0HYDbE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767067434; c=relaxed/simple;
	bh=2RzIT4VCUzDz0a1FulV0e5l56BnDjJgMEN4XAcy1DS0=;
	h=To:Subject:From:Message-Id:Date; b=OISmcBRyciixaFFU8KXlgtMcxtwPKoYhBn40Nhzqhw8sJl2xEYj8Lox+MCE+a2GkE3OM8azq2ort4w1prrudX231qFOZ1jPir2+s5H7dlgMWZ2R0RyrvUjtAcuBwXkoSfaE67R8ZEhYZ8wF2550VJCARp0mQKouJwjymT1WoVg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey7TU/He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey7TU/He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767067433;
	bh=2RzIT4VCUzDz0a1FulV0e5l56BnDjJgMEN4XAcy1DS0=;
	h=To:Subject:From:Date:From;
	b=ey7TU/HevHM7f7DmRJIoeV/xTWAgQrChij8JJhu57UooKoSxVAyFRdh470K16DYbU
	 +GzpV4feWX78wxu+Yvb1v4T2j5dtKTsnnlD040SGTyzgMZnZOt6/+4H4SGDxIvdDJe
	 bPpX3fyaxX3aqOfSySgqubaGsDRknotzdZ7vb5uGhHUk64NUn5h+x/Uk1AQu9Fqwvt
	 xGQBumT7eWgiHMRgS1wMAokaFDCHVuhji96eP3XWoUowzOtnP7mXlwpG0WmA6neJsE
	 8sQKuEdXbUwDhzrKJYdeaD+tHHDstOGx+pCZ+fPqxpd5ILQSEQqoFnxflKRhHBiDHD
	 UyniI4I4ttLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB4E92722
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706743357.7950.9291905239740713585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4aa1074ed7c358ce5c4d7b919e2ba96be271a051555fe31a22ea011638bad3
Date: Tue, 30 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767067433
