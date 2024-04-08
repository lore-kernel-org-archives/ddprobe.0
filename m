Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10F51860
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712547497; cv=none; b=CcAaO+uPFNImPJngIv7K2pglnUMlOyziUH2RR6W6AHaqM+yj4uRn4HMSmWK2MQn0OMFdFeyhhys5JKXCH890dcacLuieClOO3LX+OvEHa15Goyrg5BnaTEZLZq4LPakDLqcJAWSKzVqEPPHv1X6IfpfRpP4inmXuaI9SfZaZgxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712547497; c=relaxed/simple;
	bh=JLz9Iok/uppQxCP/l5c/m6vI1hc/RfJItVFxB99d/1I=;
	h=To:Subject:From:Message-Id:Date; b=ej5933gkslSUarUEoGrySh1vU3CcAyjvjebYttwqhy2p73mRoq3Y1Q8X2QNcKXqx7OAFlBlLJXOMB91DpR4dXL5i4stLy/Nqtvg+psSilXYWqsUVCLKEWqqfo3le83FjY3+aQkmJeyq6+9lokvALeMs3RuuD4aw6Nr4ewKsLMzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReR49bY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReR49bY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848FDC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712547496;
	bh=JLz9Iok/uppQxCP/l5c/m6vI1hc/RfJItVFxB99d/1I=;
	h=To:Subject:From:Date:From;
	b=ReR49bY7/aMrljWHqEO+3LXdSxoyJ3ePzmrhC+Im/xgH+Q3acwyfb7XP5+YHFDR7N
	 CVnAfl90RZbqTfVrJm3tDF+YNIBbQEK8l2yCFEWxjcnvByHHqibv1ZjHzIrNudroiR
	 Pj02RRyrTapCkNnpSrRuPS/lplznyQXAkTvbaR48ZT4aJ3wn8N04ResP/9zaj/9/OI
	 btbXDyfwFbE2y1+pQVYlhtjcVRukq3fWQ2moDF0vZ5jKyOK3qgwfK1gTVYeDXJ52o3
	 eDU0+9k3St6kpBX3Px3CTQxf5TmRb+MGqpKO65Q8ncuXAVmwTgmdgqVo9S7VltTE+N
	 IKBbheq3A1hRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA9DC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254749640.27857.11130474431536777408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66ad00681467786ccf7c3f563ade5455a39251a68fa5e9f6b4a20d1efceeb10
Date: Mon, 08 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712547496
