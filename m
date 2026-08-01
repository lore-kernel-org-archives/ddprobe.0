Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536BB78F2E
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785550834; cv=none; b=WBZen5xwNfQxXrTD2UbVcnx9biNlTnSMYAW7dzCyTUZingE6iIzSGGAVmeYRSGKKGJ1vSTDnvmsqnxJTAiV0rvGszoqcHF1Fw+5+iBNWrB9XbwJbqf6rWki/XkbRoX+FWujHhHctYmGOFkTGmGM06vxRVoZuXtPhORJTzVr0RCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785550834; c=relaxed/simple;
	bh=qz0yIpIZBlg1AvmDZYgwHMIEY4aPbqb2SC8t5y1w89g=;
	h=To:Subject:From:Message-Id:Date; b=Aqt4Aq7yaVLpfhuwvRKZX77/TcW9gXOl/X4gtcHP92xbukoLdcFambZeWDQCtSayr7xGQ3lIFX4uSss1BM5DSVa0NchopceX1qWSMzhKEgK4usIqpSPB0PSQ2csH5qMTzyRCkH+1D9kNBEAkPldVERABZOUM5S7RkDGguDLCs30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJwfZkor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJwfZkor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1CEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785550833;
	bh=qz0yIpIZBlg1AvmDZYgwHMIEY4aPbqb2SC8t5y1w89g=;
	h=To:Subject:From:Date:From;
	b=eJwfZkorDx6N1bN//t+ZhPHVsAR6hj1yUtAxce2zGsQDSHlcUgmgkJN0FpFw/0RH+
	 boB6a28J/madqP/84ecN+X6rO4EP3FvyNLZACNWKpll9vZM4zsEfHF3nee8hNDxWsO
	 dwWO88RSh26NKL3MZga3nKIsqK1LkLZOZMtGQqnSEZ3heCbJKYD62JXwMDDv6NA/dB
	 4Cy3h2ZG1s5Nsa4Z8VKpMSqeYBNTQQOOielLXL15Vcmpb+OSq29skcF7Llw1O4eExK
	 spddc9Gt9jWP73LfqIiiFQLaPggNgck2JPkH92ysi6LbkGvTuRAIDnr7ok4JsQVx8V
	 XOMUDINKInYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF26C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555083368.5304.16495324644836776674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603154b4aee21aecaca37b3cb1d5580ebc178f97b7a88fb5056d0b689027691b
Date: Sat, 01 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785550833
