Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5D20D515
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729888554; cv=none; b=eUlGSKZaJrqpxfUtRyH6KLHRlo2cUUJmJ/mDLobu4ZryqMsG8sWOt9gwDSgQnTPfeil2uz8A4CfZvlEkMP0OGYsb+Ug58rRKAbo8ohH47Ef1PXoNZ5NSxHV5li407+GvoXbKUOEeQZtfutUPaWG8/dJpy0z6aHV+ypaJ+xsVXSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729888554; c=relaxed/simple;
	bh=cj2sWxaKPOl5256eoPjrdSWJTZNLWx+QeXSkvJJcMVk=;
	h=To:Subject:From:Message-Id:Date; b=hLt4CBvMWk9+isGMsrZ6Zy47KnLFq8D70VOiUHxnIi9BX8WDWqUOF4vhP2PKR3smQD9ICmM13YAGwjYpYIy+WJNhZ1dAqGMbBXkrsnzvm7W3JnuMoyHvFz0TWJOCjgArpRcjhpu7KYyiC6DGG8ceOV/s1ar72AnUr4htDw3vBP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkFnLHQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkFnLHQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B6C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729888553;
	bh=cj2sWxaKPOl5256eoPjrdSWJTZNLWx+QeXSkvJJcMVk=;
	h=To:Subject:From:Date:From;
	b=DkFnLHQLRg9aqbP2ZUmzcRtaE9DqR/55rm3hxf5rboZdPjryONHtW6IPf7TSLR/cg
	 ppBoSGhAX7ItgzgtwKt5pM78hPBbwS3KYZEYoCZ7PZ2L3UEOVRpYTwmVu8Z3YJD4Q0
	 RiDTEoNl5W3SIeUTYVVJn5R5FGK6PEajgyRdFRNMEjjxrRG6rmh+wVJN/e6Yamx0MN
	 x5Zkzg+oIBVRRgp/N8lFzqZmRa+/CQRjHS/e2xPjyueqFhWoXQUBJGVLsxhCTEgOLM
	 HSR4RNBzdIP9T4kceBez9jrjvWsCW1z/l/LpBfXDY7IkcNMbDtU4RkF42l/at3n0yp
	 Q1eoroxwPKJDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD7D149F1
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988855358.1754.5182603053998718706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5b3639f7a7db735581fb2a84b5588df120147a39db0440242cc7a53f53453d
Date: Fri, 25 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729888553
