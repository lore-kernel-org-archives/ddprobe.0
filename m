Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6F8433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747139995; cv=none; b=Bil+CI5NZ9o8O8ON5Xw7a2CtvSg6KFPrqGVe5go8b7Ag/NsgRCHi6EomlZ9aan7EP92YcBGJjamSzBzycn1PGqSlBGbzMcdDTXU931tYiVAh8cWXwAPKraURo1wHwE/gUJX7iyeTwnlVlpNRlz9LpjWm17zocstGMS+aK6Nmp3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747139995; c=relaxed/simple;
	bh=hNdskkLra2B+eJxhdVXKqs9PdTcnPzxvDmqKiJrsOiU=;
	h=To:Subject:From:Message-Id:Date; b=Y9tAZ/uiFojh+hxrMXNdoZUDBEjjSQSM9F8HYX5egZqPm+9j4SDnP/AV5PwTxeAvlB3NWVenWDAu7fr+nCGPXO7UnH+Zy1CpzJt5Brih7MuvDMAKdzhMnM2ES6T7IBWd7H6vN7L2kPElVOM+Lx381ZxID0mb8mPFYa+boZM7rH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC0FF4gE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC0FF4gE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F22EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747139993;
	bh=hNdskkLra2B+eJxhdVXKqs9PdTcnPzxvDmqKiJrsOiU=;
	h=To:Subject:From:Date:From;
	b=FC0FF4gEvtsMEVxrrrfPNE/Wf40bP4WSYQ4lFmHKco50M/lYaFdZCrajCE0OePsT1
	 NfCV6SBQ4P7YEQNns8FA8ohRv/oOMy9treywIwHLZ4zRuJ3Cb2A3PAAHrlGzPMgNbx
	 ZYaYH/5siznfrRnslZgvU8Gi73moI6ew3xC+bmunXorY84ksNlnG7AWQ9+IKfAMrzu
	 ZI+r09VF1aR5aquFKEf9FeAlG90ygKmZrpVMOQ9sC/H/Ssag7vkc68RFn2xZnkw0Ix
	 OJU8FEFXZkY4EtInSgShk08xkKOBU0GeDbJQ2c2Xw2bX6bNqXqs8GxkFQsgWOiphj6
	 E9YiTaRzY+7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC29C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713999357.17417.6032740114423278076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e88021239790355cd0eb21f8bacd91badee447d60295eb41e99830f4a2dffc
Date: Tue, 13 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747139993
