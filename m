Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D94C7E0E8
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754839794; cv=none; b=Yo/LnD7sKJQRXhAyrvtpGQlfS9q+mD77GwPkjO4mTpC68tS+h4mkNCAdtAKFQ3NSuWKgePjVM4XtM4jDBP4nEP9Wo1VbXmz2wMmXH2mimLg+h4AmpOFtRaBduaV6wzibjOTFWGMtiBVmmYYUOmptbyAQncSY+hvTsVqTRbuN8so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754839794; c=relaxed/simple;
	bh=AeW/V1e9EHmIbz0jAWuRqTA3hENevuJJMZ10IN0h1No=;
	h=To:Subject:From:Message-Id:Date; b=chXmduLt8M2vxJUWJw2GXfZPxITYbQcqg7iTB1hwLjRZ6hzxfXq9YiHlCbxFwZI1E7H2dCxDECUR8BCsxD1qd2NZ8RKsJFe4XL/4KYisc135kcIjNdRnkfLV1VFgFFp3lCcxDqd9FVaYIT77eX0Futy18C7lM/oJ6vkNLpdfMwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhEAbsae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhEAbsae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C5CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754839793;
	bh=AeW/V1e9EHmIbz0jAWuRqTA3hENevuJJMZ10IN0h1No=;
	h=To:Subject:From:Date:From;
	b=WhEAbsaeNfnvduanHJ69iLOHWNK4SCWWRAfiX6RfcNtmSoGMIT5oGczsXBUIcL4KB
	 Jm/rX+12F2iOpNP4kRnPAMD/SOlSzHGXLRiid4jsFsS7i1nKcGmOWygXVKu2Yae7l3
	 cJQFZv5RefHhwqPegDn7jDiF/3bg+qLMpJoYnyPqO+HDp1wmG+tnPsVNcB+eysKydV
	 cQ+3rJjgI2ai4cl8EheT6onQPI9OHraUCtzFZti0CGRGAMO8bEBZdO3uvH/Hi0IDl6
	 rsm+si28377XxuzJsRD/kCYg82UA4TCVXSaCpkg0CjM+M0AO7aG3WkCPI0mIqgfLqh
	 VePQ+byQvW9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92093C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483979357.18437.16026051883688642248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0423d45ad45845fb882efc0dcc03bf3e8f673c6a1941339be60fb4439e2953
Date: Sun, 10 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754839793
