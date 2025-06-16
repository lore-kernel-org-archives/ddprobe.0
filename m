Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E30B2E11CF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750066794; cv=none; b=tJw4ptVl8hY7Opk0xsqVtdSQZjv7Co1mByrXfP3ZoSweLqtO3lWy4sTqR170bIFWA/B6n5SeUo63eBFRXIq6u7eYcydeHY++Ofs8Sh2y7JAAnZyRUc8VjdC03LoDX8Pn1Bs1ckev+xQ9LvLxIFHau2f64yeql7Q26HpYG67ugZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750066794; c=relaxed/simple;
	bh=iAfUvE2SeixemA6WIpJ/uuphs13BV8/7gM0soLR0ZcM=;
	h=To:Subject:From:Message-Id:Date; b=cLN4/zU6VSU2Wz8CXizRXB+uRgPbv7Z9Bi8hWvCXVplmXNRin3vZyMuR639ODi0CmBIOU36FSV1j7+SJDkaVlQMANurRMgcjvFLU7inGSAPC8ZgiRtJcm29JskK0hIVf8u+ZBG1Pa98X6kCbJo7XgOgYh0TmPBlMtk4knzz9KdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJfaB5Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJfaB5Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEA9C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750066793;
	bh=iAfUvE2SeixemA6WIpJ/uuphs13BV8/7gM0soLR0ZcM=;
	h=To:Subject:From:Date:From;
	b=CJfaB5Za1QX2lSeZT6rEhW9pSLZmMq0ohEmRSsuY5/MeShTxDGVl7vyKxyCn/zY6S
	 u6bk0LoRG2ujBg6SxWSgHfoYPR0tGv1egwdfBSE4Vg+bYhZaTSxQDXvdBevNBWTpCJ
	 IXo7Ho3VPzQomBUjI+6jwVts4yS5AAEWwNCz9qAPEQHZYUqlOaPIjMXEfd+lSCFvug
	 OOUUq5+fOePQlhgVyKQyNyADLovDp12OVk0oWu/CAGxu7JdouEnXd0AqHjfDU0KhQ4
	 2Rj7BhsoU/09DS8P6EqY0QEIsFVFHM7jbAaTEd2SRln0FGwhj3rX5vk9wQGWjlSixU
	 p2z7qwKR02W/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCBC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006679358.10823.693786486907629247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5847c782a588b3b0ea0080d77deac6f0ae5675e219c6a0f34db7083439b82d
Date: Mon, 16 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750066793
