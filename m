Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39883255F28
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779936754; cv=none; b=rLEqwwxBBXB9B1pMOAMqH2V9AUl7GtzTdvBP3RsF3CUtwCRPmhgCAKj7ZtIP5pMpchF/lMj7ktrgP6FYq7zDk9Z0iApc+Mhp3Nfv7BGA9p0ud+crjqpGgwMqtPp5jsNqPocWtC8kruRq7G/5vM/eyYcAMqU2jklx29P1a++ta44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779936754; c=relaxed/simple;
	bh=M7y23GgYCI6ktIBikZNeMxSnlqwX4ZcjO2C/ENz4MJE=;
	h=To:Subject:From:Message-Id:Date; b=OfjPYUuEejpMkGscI53Mj3ndyxMKwJrgBYVCayAniAtl2RFiYh85BC9c1iRmKvbuZi4lSBfe71vrwgWoGaACwiCGB0eceHymyecrRn8koXBgDRkg6YGiM9wQnkCLpnT3HHDHSs5X8U+axeuDpmYoD3H8hTkgjYCur3Z/FIrR6RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZOeZdpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZOeZdpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB716C19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779936753;
	bh=M7y23GgYCI6ktIBikZNeMxSnlqwX4ZcjO2C/ENz4MJE=;
	h=To:Subject:From:Date:From;
	b=PZOeZdpDY/X17Cmv+Xvii3DE9Np7Ehjt84spLLcTH9QVXmgDq7TxP6u+MpC/ZFsTq
	 5yxKQIhg2kPfFWeH3kFsSyncY8zJzGNCLzX5MGPlVRu7oOZrmoB7kb0OX8uJe0rsVg
	 R2edwTaft7RpULTUzURlw0NVygAjFD9tkPQ5SHtpDRI+TsrGITeOww++NZf0zS5+Z1
	 iBwINwE+l7CyuTbCvsJ9dwIoBz31hoI8HtTdsPWlRaZk6snOTfXmUbgZwAF7eM801K
	 pGsJXnMLUgi1Bhmj39VkocmNyZ1UNNl+BHYOsvUsW3GqizC/vtOIX0p2mPfyqbuq6+
	 WpA/Dc1CgeMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E3CD5BD0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993675369.31923.2466128898206977733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7fcabee7ca63e83bd450bdab36f8eb37bafc11ca9d6324c61454596b641788
Date: Thu, 28 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779936753
