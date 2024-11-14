Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CEE1EBFF0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731567354; cv=none; b=VWxu7EOxIH6JawNy8eb+3v3FnBWRKehk4Z319W3QvJ9PSP+7jg2u2cbm4CxtU9Y6XKxqAwUG8Qc64ksji/5fjMPznYDdiVd3g805C0pNlfvk36BBD3fcd6q7c8CHVO7wNEk1od7YclSnL19Rne/wYY3yag8KaulQrAq2r+pUoOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731567354; c=relaxed/simple;
	bh=+Lz0G1lSGbusxNmLucd6HbxFfVml8J2fQ/Vs9YuYnN0=;
	h=To:Subject:From:Message-Id:Date; b=qv1gHR825HCXonER+/8G2qSm1C2ReBYsdZb+ESe/IS+yhW1Up+o5p423bav2RIB51UBqrN3fJbEQaY6+xra7usr/NGfJnDZy9w2cnz8yEUZwauq0fgwDrLM0etxy+X+tAU2YWpET6QkzJIl7BuSErsGsoAzHamuAx3xpYJ1XsoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyn0kEdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyn0kEdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C6C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731567353;
	bh=+Lz0G1lSGbusxNmLucd6HbxFfVml8J2fQ/Vs9YuYnN0=;
	h=To:Subject:From:Date:From;
	b=oyn0kEdDDD7JL2A3AlMV5Osj2pqwI6FB2vBdK8amfaHqyZVDqflQUwtgwMq/J4sKL
	 wbJuY6osnxf9c5uGn/HYnf9T9bIBDJ8FUfgVE8NfefQ/J/mMHfVf2+q4NLu5f7AvBA
	 a1Kdg9YnYzDCYQpdwPVwSL1IPubW97GGh5YHyrXG0CfPu+Arb6d/2dakrIareWLuKp
	 DR14CEAxc07zt7zBMGSi+748A/c8AA6v7/9OybcNjg+XkSHejfa2oxB4GEFwt/zruX
	 2xlaJ7ITfMnTj75FtOZP0fQFplhn/OpnEondAizSsVh7GhnuCSJqtxpLxquJ02ciHK
	 3QTXwMqk4CJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CED65C4F
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173156735359.22456.6943364155381909212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0703ca016a0a0d555cee04531b76e4c99fca9ef8bbe2899a61c27565ed380ca4
Date: Thu, 14 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731567353
