Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A17E1C3BEB
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744266595; cv=none; b=jX7ac0xVNq5+AF5dJ7SUGRBLf4HWPBhjaaI0YGW6XZIxRK/+m4TFYFPndcXQVZ182Kwtt5PEVyO9sNc4zElbUbC3Xx257oD8l5ocQkKbHoo0cL57NYKOJ4e/NIhMqtQ6ayZTrCBsWvU3tfM4Pnfdm1pHxWqwJYRgFKXLVv0QPjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744266595; c=relaxed/simple;
	bh=KT2yoBxcchV5h2yPsyiaIHghCec28y4cithmUjkiIBg=;
	h=To:Subject:From:Message-Id:Date; b=vBL1G1YzVMd3AEVfD/AIuG+U6JCoMl6ExpWtvkwEruTaxUu/WUxnLI3h+8Wa910BckwtZLh3V6Tt4GbzBGLpHIBCT/29xpCVQp1jSOfJtIjh/RzRLquyqgOu8zlMuvWPL4HCmpmR5cgafk/xFFxLv4LMtf25zWMASVe8jdJDgjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyCCuflS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyCCuflS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B416CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744266593;
	bh=KT2yoBxcchV5h2yPsyiaIHghCec28y4cithmUjkiIBg=;
	h=To:Subject:From:Date:From;
	b=dyCCuflS9s/LCxufpiRPmf13v25/H6fqFmmJWB5OxcFpE19msqpcBwwf9ZaOkoTZK
	 82C8R/RvXNJuTHcsAcpoiKszwj9GiMYVN2SOuh/b5rU6vRpSPlH7dYF6l6+9HDqBNn
	 oZv55vJxixpMEW5UXfNKCfaXscVx3HWM03CmEnHKlYObPDMWThYEIjOWcjvRCquwt/
	 YqiclV6IzCstzkkWMyaxG7uijh8ZtEKod7ImvOcpwZEf/kdMFCYDvVCQodCHBVKgdq
	 tHP8rNIpd4Nn+oYFkcCZAk/LavVLUqi8Mr7sbys37qxnn31JHGyNaWzNaTcytRDifm
	 ZSZueIIDj8kPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95764C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174426659359.13337.13579663179959764351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4255145a1f11544ba1882bff567e691c96f2e5f03fdc67f8940c78c435219424
Date: Thu, 10 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744266593
