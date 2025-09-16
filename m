Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193ED29617D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757998194; cv=none; b=EMYNjlwru6gIjXAfpnAjtPoLhkcgAJ5NUm125clDv7nzb5f+DoHLjYtm8eqgC3IUXwMw9/gixEVnHSVxmSRgIP98lWG9J1sL27XY7Pi1Y8Bd3bWPeXH0EFFPmbH8oxeRNUSjVzOoG1QF5CXvffAas6VBvpINYq7dkC1Vr+zuasg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757998194; c=relaxed/simple;
	bh=nbiYozbE/cpcG1U6/zqg3fMmmpzZniGEDg0I2SpW9SU=;
	h=To:Subject:From:Message-Id:Date; b=cXo4PhxVGa6ChD9L/ffPHVNhdXfdQFR9ICYCRWphzrGh9PSiiU4lS83RpCBiEpgartQJc9iwHIJtb8ryhBxy54yyS02/hFq5znOu6FPNH8mmAR7gJYfj0JF7kLCf+//iCwzlp31f+7NAC6VfcAHDX0ACryxewmswQ7G2dxX+Dt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3F5Mvqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3F5Mvqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC20C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757998193;
	bh=nbiYozbE/cpcG1U6/zqg3fMmmpzZniGEDg0I2SpW9SU=;
	h=To:Subject:From:Date:From;
	b=h3F5Mvqu3uKeMzB7M32WqWVByG0ahgADrkBfPq0gKKnh82vOppIYGfjaiWZqHg5cF
	 TCh7G0Qt4Jxt0m38JW6EJHBPuzr46jBLd1m3HBndUzfZW5mYbOehtm30Nmq6FjOl1y
	 1qgBtF/jIKsm9xPwJ8AeJmZWnq9hpQXi2dy7hoETxzBl1iar7+LuBj6soQTTM8PYV4
	 Bnwy973Wo31cUb20RtuLF7IC6tShgrNQfIgyUHzAH2Mdd7826fYpXIgBb5jL/KplOn
	 xTDp1jqcVsMH6x+/0aZzJVMhK+OOW5h3ohTqp39tAyBQ0wcsVzrb7wQ4IEjwuZf5qq
	 i3kjnFhzeOjRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2ACAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799819357.8564.8641742186897930310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058037c8324b8ac84c13c6e83f0e8c3162bd45c0965bc56217b67a7a2d1a1c32
Date: Tue, 16 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757998193
