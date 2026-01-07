Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377F735959
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767761634; cv=none; b=JdOO2Meqv+SSUJ1Wb0PJNRabN1IvK4oO5RBN0Udikd0US7yXQiUljgOFcCLychOikGFixH58HFg3xT5iAsld1HmKLp0IdAeS/XKyOAbR6qjlDC5ybeee+K6gGv2k7FRKvUjzkytUIlYVCo3icKGSmxMd270rIppUYnGUuJRtOFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767761634; c=relaxed/simple;
	bh=yXlciHCdXHNDj/78cB7yPqsQaBVQh/w2j7PTEsIymjY=;
	h=To:Subject:From:Message-Id:Date; b=UtrwrnCbo5DSn5N4DJixzXNBo6R+tjic5L6OSWl4YDEb3umhvYcGXDXg1ioiwaNrURCRRzbizxTgCVXbWwPyEyXxSKZjTg3aROcr3nsxyYEgcmiFnRIgtIR4kpe2ujECrZ1oFj/+pcX4JN9966VxoJQkgYidFcux+5XCkrcaV2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CH1Mq/6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CH1Mq/6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF509C19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767761633;
	bh=yXlciHCdXHNDj/78cB7yPqsQaBVQh/w2j7PTEsIymjY=;
	h=To:Subject:From:Date:From;
	b=CH1Mq/6F5l4JnAPFDapftP8Kcc0+IejOK+gzCfw+wqEjWUFKWQoDdzIBEs+nuWRT0
	 WUG0dlLS9gIToGWBP37iXJkWVWeKiAlx2R1HIvbdszKRLQIc27PkJTfWDRS+lpaeOp
	 lJTAEoG4apQehaohTOya3fiKNUl7ie3kstPo9UdN2I0kfL1Kd/eQ6JCQsapV5zczja
	 5WmkElk3ExE8A1S1OyDnYuuG/T2149BTQexkmu9FW53ELgGZknWk+Di+LpdDIsZby1
	 OabORTx/YcUc+iqMQHfAAb49U+NMQcjgPmhstrQrs4mr+Y3KUcxySKBkI5QFeYN2YW
	 hGPTKAOqy6QFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5A6CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776163362.18031.18431325677807101781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407e7e21f985ac4a97f95ac914b1ca377b2aba4c75fa022dd1cc7f796bc988cf
Date: Wed, 07 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767761633
