Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1315228F4
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729392955; cv=none; b=DqXQysFaGfSvoFwKQm9qXbiG2PAnb5JUf0V/zsqc/E4xtJPkynRK30GgDoot1gedZtk1ejFTCcomgWT6WKKgl3aMiQXsYb97zelzfg3sRoLg9P10gpgJIfKYJR5Qd+uSpNOxxCtrlBm3p9+oh8IpdQ+vQCIb6j6ivgJxmWb+V5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729392955; c=relaxed/simple;
	bh=RCpytPzJGvs719qL/qdRpadS7uSsj3hesyD/ArLXL7M=;
	h=To:Subject:From:Message-Id:Date; b=SDlh15PB0JlHCfB23Ym26t7akV/fvhQDdCZscFeflY402rx09UzVoNqmhS0s0bVpI/9bSqC/+yLX1E//kLea7DTqQ/61CHm99Y/nw2OrqMsTMP1Qd9/PSZld7SHO1K0+8/RinUOPErtBuF7eGJ+WuJvcibWSc3FfyH2ICmyNWXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOAL17p2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOAL17p2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A7C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729392954;
	bh=RCpytPzJGvs719qL/qdRpadS7uSsj3hesyD/ArLXL7M=;
	h=To:Subject:From:Date:From;
	b=UOAL17p2rV0z5KVAGoS6zuIos4SbZSwzcFMc88JMVPgm5PRUsOF1wLYx1RW9/xLM0
	 RJbqLoGe9XC6zuLACd2k/xSXW/2h3i7gquNOG6ZUib7qjgApX0UFx3A/U6u8Tvp3vF
	 8OaUdNWCsM5ai+sYlu2Yeq0ofqakRV+Fw9ZsfkNBCUuweepcJSc5rMfx7pB0Ar7CY2
	 OmF1e/RqFanIMVsHI3eoKOZuY63idAd+TwqBoBtwNRQYtwMttlga7lSq9SnBnGixCy
	 ctlAD1QilX20g6BM3e1pAj+LCiY8W9wnBCDySloYddANTnv2xZNGNO1kEVamEmvnGw
	 EpjCB2ACiKXQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D1D3C931
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939295359.25085.9093273654162213679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3ed2ca200fdb582bde04b6c4b7a123e97dcf1a46b253c83645ae8a042706bb
Date: Sun, 20 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729392953
