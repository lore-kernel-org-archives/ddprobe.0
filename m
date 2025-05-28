Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9E6A33B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748432394; cv=none; b=q0UbiN2cFE3x3MYfYzMJ2kkLHIFDY2YLTvLbFxeulZTHUpuycypUiRiV/9ig3Sy+h5w6+mFgXk0si615HuYv8VuvIHR/FKRJbfI7v8rn4qWTan0qCaZuAy9iyXlEqCzP0pOl908huYxqU8oZgivKYIQ4ZZeUGdcPr2uUMUZYQvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748432394; c=relaxed/simple;
	bh=BB3xOiSB8EepOQ9lb7SZlpt4s+pxmpDSPzT3nLl2ykg=;
	h=To:Subject:From:Message-Id:Date; b=aIW/ndZnbtrZIeAvP/TCd6qc3I8lm9Fl3kKnFg+UP98rj7r7xXIKNsFJxBbAIs+7cbIdypnstSYcwzgPDLSr7PrNxo8esDmzcs2xUEvncHUQi6S1FO+fSdbzrHJDPgXrCXEeWbbxKrTrgbMHMBbx7kKrRYpoStLd779dJZk5EQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGho5WHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGho5WHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1740C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748432393;
	bh=BB3xOiSB8EepOQ9lb7SZlpt4s+pxmpDSPzT3nLl2ykg=;
	h=To:Subject:From:Date:From;
	b=oGho5WHJgdcyuobsx3SyFva0ff/rIHjiTGmgsmNOlLPe6th1QH9gSuFj428f41DRa
	 +CXPddPv9TnpeiBmpbuuwjqfBFRnI/GMw1uR+YaiuitD4u6AC4V6TZ02HBDpndqBan
	 uStD5XsAs0OSec12jx+xyS46uSi1/qSqLHSdmtSjmWhS0aO32eK/yYUNxzLkMwwWDb
	 5BhDwbb/rhn4wRk/O3/JLbHN3ffRehr+8BafjoA+jT4ghIVfrkxY8/NcfXriZ856Ej
	 hFFIHKUu4sl3MW3QQauG1Nl99BFtXXRNeGqyEqKR0Jvi+Cs0UngdRhghvUvC2iFT3o
	 of9mL9PK2TGIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED2C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843239357.9927.8259101164685945666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c816f2655b9c1284b70973be6301b23ec70bc84daabedeb39a3b3e8739c071b
Date: Wed, 28 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748432393
