Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA9A2D7804
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777408054; cv=none; b=cz9iQ4kTiWTSJoNlEtiDpgfV7wBrqVWUPWzQRzM63gaO6Y88AiYIhBXJMSV8bEXWKsy7F+KKSIvePF75KxRDZ+MsXPpAbgj53Xnev8Pome/2boBNeMen/zAxAosED9jwB+Blej65Bo0ZcjTb9SIPAjyf+weHtrNsVUEY75gbcBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777408054; c=relaxed/simple;
	bh=4+yX1pgxIcqcGMITw33SWIRybcKgU9OPWJYt3CvS8PE=;
	h=To:Subject:From:Message-Id:Date; b=OBGpwQ6ulEzsmD2i65QJYIDhShyuDFHZLoKNT1gAXfyZSFm0njs6iBemGQurH0CZjHPkFOcQNSdXjXxyGVXp8fxzmNHcTo5Lfh3dO01hWEbeFuAzdf0PhBfWhza2DhQ7uK2o17zxRkD1zRE5+zpnuaund0UoLVtWkJJ+WKDC+js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADQ8Xz9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADQ8Xz9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF871C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777408053;
	bh=4+yX1pgxIcqcGMITw33SWIRybcKgU9OPWJYt3CvS8PE=;
	h=To:Subject:From:Date:From;
	b=ADQ8Xz9bhIRywfK3qsmX95upZIQaXnEWtej94PYdrzJUYVQ2Qv50cwfMGSw9OoUrG
	 9/ulXKeJ3zu5HsAHoPzTMkJwVPobkoudat/ytaCqAWWHs6ciop/KnsvAu4/nHeradS
	 niowY357K2+UOQe+BwmYpWNnjID/aU79iGhrHDOu7lRxEZyhUlRcZBYWbE/St4jnez
	 2JPdGuWz17PKxQDRK8xvHbdu8CX+98HlJjV3a3GXFo5xekdVOwm622iB0JTw/Gk5TD
	 5xBuc8HRX8cLFNpOwM/8H0OiW95AjlmabvWL6FveqUBrtFZeolWqWk145i7gpbTNI0
	 JUpMxkGUIgmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9671FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740805368.31113.5746086960748772352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89c8ea66af7c156b25167c3362c7212e7fbe5e56f45857db458f63efb41d511
Date: Tue, 28 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777408053
