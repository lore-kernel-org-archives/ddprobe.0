Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76C01CD03
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712314096; cv=none; b=MQlwovX96WU7wqEcGuBRa90zh9qDnv7r3pxe3JwF4g3EJJaPjv5VEHAl6XduzMXCkazY2TbY4yZIiV39lUjmvi4SljJaDtgx1TH3c16bCs10NNbkcRJ/p8t9Qm/u65OI0BoTt3T45bJPNr89vj1ZdiOeQrMzBf9w9b3k6TaKOF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712314096; c=relaxed/simple;
	bh=Pr87NlvXBZrugstJZUoW34a+5V7f7qXPTh3ecl0ddZY=;
	h=To:Subject:From:Message-Id:Date; b=dDgbHsIQ8RFtJrC0radBDuCQVxAkX5Sa4Ivncm0LCR4EfbdyRdBpznyRXn0ILJ2WLZryIzLz/63cN1Bnp2VYhfqv2+y2+mLPle7UV+8bm9/mB4VJHb/l42U27fhQoidOqVVCQHGsB+45/FNEupXxYEbSXPjx2b3xMPIZYvgXSc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kit59xi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kit59xi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739A3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712314096;
	bh=Pr87NlvXBZrugstJZUoW34a+5V7f7qXPTh3ecl0ddZY=;
	h=To:Subject:From:Date:From;
	b=kit59xi/I30b96CwkZryouS3A+svRPa/Du5RVHMxURcyiRGU0qZmURYz8fQPsAyDC
	 QV1G6gxJwNPLFdA6+6L/RMVe0zOHwNXFw2EfA6wNTI3SgKBfFPK01fMAjaQtzaP3Mc
	 0CnloSvqtnxasQvsBprgsoSwuFAJEUP2T1iT40zYJI4NFXo9dHXCN2l1nMAJYzynQ/
	 jJnKndMQCwRub5tw35b6YiOtdU0HAzHEE0Cd9PQAzJcw51wcEfnLyEFHaAPOt5gEcj
	 tkc10anl1z0rT+94D67yk4jqQ9uVWd7bQO1+SUR7L07x3JiaIfRbUHuo9agh2j3aPf
	 3sa129rZne8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654DCCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171231409640.26959.13792952548797010147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e8f0b833e61b49b14a41429979b5272c3556146210baf72461dfda045a3ec5
Date: Fri, 05 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712314096
