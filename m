Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F2114D70E
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725713754; cv=none; b=AfuCM7SXfmwuQPskREl9nt2PKmDBXONN5AgxnXCt+pXRdST8RR+rO4eLLKSON2L+cYaYtmJkrBTGT6WQpa2ajE1Vm6ctnB0D2eHsAZrGIRQVoyr1uau2adMC280NPDESx73V98oUysCg4CzjPowdwn+g6Scvh7gVDY+b8GU+Cak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725713754; c=relaxed/simple;
	bh=B1tGPlbR0G7XKHIN4ilpSyeLJtgmzAV+DIVpn/ku4gA=;
	h=To:Subject:From:Message-Id:Date; b=KKVbdDzpUP3ypycqmiHvHWbaAGRl3fIG0E/jfqgJ98GR+kfI+MXtXj7irLgYhc1vK7LDHgMByMMgHc7NV7zGyQ+n0vCpVOUMbiPouzYx8VAD+sTKBM/0+RY6B5XJmI/i9yMpI3kxIYm1BXwDMMnTOZTxVLGXru9hxR5XaaB9+ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQHOBRWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQHOBRWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C7C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725713753;
	bh=B1tGPlbR0G7XKHIN4ilpSyeLJtgmzAV+DIVpn/ku4gA=;
	h=To:Subject:From:Date:From;
	b=aQHOBRWpBqfjDCAPFVEMthA44iOqbOvp9809J/i6s0JiM68U/ZhU7IP3JVw69GpRm
	 pExSobRuOzTwpHSuPgg+SvysIBys+gxLUxHh5LbgQ8SsNw2nhdu6iph8j8oMqOHprN
	 x64IY2N6zU3+yo906I8/JYV9nlga6ShUpOax10cLz1PcBS31ZoXlHoQrrOoHQzyqk6
	 Rc7D6Klg/iRB786vW+/aIqg5rZKI7UTmsoOE+G8+N4tr5rMYuQoa51ky01g7a8XiIa
	 PrNarGhbjs39hUWf5bKrlQ5GyU/86rn+GhwdIQYwpev1cc2aNojBOWjrE1gzNpVYgU
	 h57TI2aCy3YUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586DEB64C5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571375359.25689.3324431649711120557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db83bdeae4266942b74f2348a32c706be27fb7a04b626f16567bfc0b574e304
Date: Sat, 07 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725713753
