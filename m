Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E6A1624D5
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768033434; cv=none; b=L3MVsgv7NVgBnVdOQ3QpPoQ2e06mu6+mOTu65/1Fp3PaJQKGp5EMfJK6sLa8hez+PRIaEd9gsgCWP4Wu3zVZY12d1LvP2zcFE+oYZiWWcdjygORWql6hWtBWD05WCPYZDAVhh72RkM4wRmqicXXBdfMeqV+FRjnBT3+bjlFfo04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768033434; c=relaxed/simple;
	bh=setzpMsyL96IIC7h/qvNoha/il4f/oRJ0TTlLOfBS14=;
	h=To:Subject:From:Message-Id:Date; b=fiKabpb3CJ9z37f2mpoo5PCk07spy7aQmorLMDt2w2r4nfsAYpI4eV5XXkfTU63TKOTezgBj0+KuuOnevLJdYJWsYAFKp6GK5Nu46CQ47v6s9oTesqjGoCeiKMh9PxY3xAtMZJiLTal7eSRD/u5g82pDP0A8rojLM333d+yCN2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKRfpPk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKRfpPk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768033433;
	bh=setzpMsyL96IIC7h/qvNoha/il4f/oRJ0TTlLOfBS14=;
	h=To:Subject:From:Date:From;
	b=NKRfpPk/kiGfYmYvmOmuNQjFjErH6XiuTm5m/KAQQyTcNKhCCthI5XOrOw8gyE61I
	 wnVwcxjuUg5GKhVL5FToa7y9gcvBprb9X7acI+hv9D509A8xaM0p5GE02r+RdK9jqd
	 hJAFge456mJe7NsYhM726mSfMcp2dx0hDiMfgYD2139IwfxhGyxQnn72cD35vpfGVL
	 OzWB2WenRf+8e683HFXQ6PdqDKtm4+Ux3n1tEB53UEunoA8WtaX2332dGOXIk6y9Vu
	 TOW/lhnpzuqqVPGPhYPXwfE8SCBiAVBOVBpDt+e1EKTtvH3LKiskSy6NrGQHYPp1Hs
	 OUpQ57kgnYecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2DD277D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803343358.15338.15241252502119192483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c906afcc397271ea6bb5435f424ddab61a7c72f1953215f16fcfec90dda6b4
Date: Sat, 10 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768033433
