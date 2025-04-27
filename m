Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4539B8F4A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745759394; cv=none; b=TwVJC9algFcZ42aH13N1ooj8C3lqqiPIBiiAIShDmyJ9+pu2o1UtywVrbYIiiJC2fCsGp1TX3F+0ISqD/dxVkdjY5CthdI2Qrj9roLGOSbWle+Dpdk8KzsJBH0vprXxkpJ4PG3eQoZO6ESXo95+4j+a29u7UN8ZM4U8x0RTWHSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745759394; c=relaxed/simple;
	bh=dLiHNR7Sy/hf7BNR4BJMkrjEMk5lP49HuYuSH165hXc=;
	h=To:Subject:From:Message-Id:Date; b=kCelHe5EJ4d0U5c4+UKhzDRCcFNVK7xANOWsH+6pe0OMY1NylZwhAPEhVXSKHVQ+56B8b7wlzJYHbEBTXZniBlHRssv4TkPM6YvpaABr3wGduf4eZ9aHPNm87Il4SNhLo9WSAIbRO1Q5h6S19HsvxVJ+15eQPWkJuNozEn9JCT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWIYtnP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWIYtnP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745759393;
	bh=dLiHNR7Sy/hf7BNR4BJMkrjEMk5lP49HuYuSH165hXc=;
	h=To:Subject:From:Date:From;
	b=gWIYtnP2SeBnRWME75ooZYeA3bfPZFfnEg6fkrleJGkFDq4+xNKeAxah8xxxr2gBD
	 Qx1s0MneN3cYRXpDwkE+96BAM+DIGxvegr7S0a9WJKuIWWujtEazTDuDHRl9TmWL74
	 89Ekcb1JupjH+y44ZNqewMPvVlV9tddN33S6cGl12D79ct+KBCen1WGFjO5Qx//yLD
	 KlKYeR/TWtucCq3GsXXE8+6C7QZ+mRdqebpFHq7ygV/zqvrNJMPn1SNx0JCR67hxX2
	 y2+Z+lcEsFTOKZ+XS/kmliBm+JWfY2L5Il7u22DdvaXyN6ZIaICmWAF4QIEF4GPnBc
	 /eGM/ZaYbczvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94559C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575939357.22688.16436997538447939877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b40261431a55caab9dce2e94952f42a35fd2c864cc96e7c857bff7890824be
Date: Sun, 27 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745759393
