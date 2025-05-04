Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FA914F70
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746334796; cv=none; b=rFwVXeW/VQ56qAjuzxd+ouqHPzxvYGggq7TWglW5e5QZk3s9psw5+iBNPHW7N74vAoYYNFUfvNPmL82EeSOGtSWBXjTu6vxI8yl08WaOixjOyRskBAhyxnUawK9kBV6qcg+qzzTRX6bCR/R7cguHSvNRB0O2gG0l4BtcIMjV8LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746334796; c=relaxed/simple;
	bh=IrXV1lQEvr080MclS9oNpxARX9lS2jLycieXRBV+bnE=;
	h=To:Subject:From:Message-Id:Date; b=iythscEGcTk11rc3YYCqMVZohGD+5T4lGofmytJBTLjgu8ltO8usRHdysWUaL3cHRkxXCkHCu9MN4enlddfDKQuCnZ7/Ml7y2guyZKvoUO16OESUia2qsx5gjlejteEdZ441fjbjigXqjVDK54MK7gsoKoduTefR0tEBovluEg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sisS9XmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sisS9XmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABADBC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746334793;
	bh=IrXV1lQEvr080MclS9oNpxARX9lS2jLycieXRBV+bnE=;
	h=To:Subject:From:Date:From;
	b=sisS9XmEcUDaPqDQyouzpyP5J7dbm5LKe+FZErWiFGrRO0fW/qib22jHpH4tdVKAq
	 uIkBJtxdvyIF55aeJ5Vhe1FsJr1ZDWoVo6X0cDmhIBMOV15eKhns0fwZOr99DFveMV
	 D7oFdadV5X2ejpJMzbVNt63+FCRMLTBys7q2N3a1rZvnU7s8Cu33tlI6WS9zoh15dE
	 oORY3XJlRmdsxEvgqSA/Gq9uDji1n0WCrhpD22CuPp26u3rh5w+Dd2u/K1PBy/2oG0
	 rbZzCIY+m0TXBTsUzMyFtH4biKWUBS0JvWgJ/2DPuzfUjwsXzU/EEhu09rfEwwDNWn
	 vSSQXEynHQ1NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95654C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633479358.10623.6467926844863300092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba714537ec53ea3a8c20679627415757e836171be042ace3f746b8be0fe51f6
Date: Sun, 04 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746334793
