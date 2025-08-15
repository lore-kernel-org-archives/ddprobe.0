Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086A255F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755247794; cv=none; b=H6JqOCJmQjUccwtoCBE8DfZMDoDQPQcfWnPVgfn2pyfxm8wb/50d49JFSEUJPztUlCJ3TzRA7pBgRfA2llcPPXNugXFfwliF231AHBMoEtpabJL7eGkhHOs43UNjzAWRV081pVL97dGRkpm6cr+YZu2ojr+6LSxe5vLIV8q9dAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755247794; c=relaxed/simple;
	bh=HFvIh46D4aOasggNBLRNE4IGkkezcT5vNOT4FjcRaTc=;
	h=To:Subject:From:Message-Id:Date; b=P6acVOPwfSOG+xb5cSxH4gmzMp3Jb6gNcMT+6Z2hPH7O/EWfnV97nFzWQETELTQ/ZCo+TFMz1iKtekrp7qIFasODsjg5XHlOeUaVmHDlVxcDMqZZDO4f2ykHATvPOn59D/QuvQ0yYEu8N97xYqs1yE6OU0b2q4Y1QhJ2WkawBS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDhhbAf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDhhbAf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D1EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755247793;
	bh=HFvIh46D4aOasggNBLRNE4IGkkezcT5vNOT4FjcRaTc=;
	h=To:Subject:From:Date:From;
	b=VDhhbAf6pME43nW5u1mYPN/YWoCRi66zgqJ0kU9/VUw+ElKwI/MDzSGG93gB9l5DW
	 c+jII6v70PaHYIJq0z95CMjcZatKcGT903eNIouuq8kLzLbxYdipeimLPlr1lgc8hR
	 oRwZy76kAo4194On7gcwGgYtdz+afX4/5rgDWdTFg0+pC0rDMBN6+6gep1MXQT+CLF
	 icUBxU0A53/gP7BYr+Av3GFcpbZOE4eu7U946cTgt8/qDzKWXUyeWPBbazuIqtGRCF
	 hJWBERRoVIHBF5gN5lK7ANNwesb175sAQuUhZj5eTHEj0QF4TJ/9ZEPnBC4mnXBRMQ
	 DKBrRFc4vhBSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077BCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524779358.22920.16241519318597183341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5dff2a0f72b460f2503fa3cd71c9ddee4cb567bfc04f8be99ba6fba0e656ee2
Date: Fri, 15 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755247793
