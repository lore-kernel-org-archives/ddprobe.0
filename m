Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A3938DDB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754102394; cv=none; b=h2yPa8UHS+YWGiMBvbXcN9a428UVQb2kZRMQ55nxeW8JpHveuGp3enyIlNwFBYitclxN/Qrj3vKGNoy5BfiM+ql6fyH91TadtbRUHwqWLC+UMDMU8k4WqUkOhfSYlP+nHshzWBvHccW0xl2o/kBgaooJoTrL3EYOGZI9I4yP1rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754102394; c=relaxed/simple;
	bh=mbAPqcTnSShJ9p+eBRU86X8toKdHQ/fddi9EP5x5YVw=;
	h=To:Subject:From:Message-Id:Date; b=bNqRphipioFY57tLt2WdKL1rHTfUSDQX+Isp3NZbpEchSpcDWkPV3ZCKWgc0d18gTNBAr9nHko5LL4nH2iI4wTJ/fWp38L/DA7JPoLvH4DEQqVVSVBd3b2ZSXAWgH60UlXqkQRUIoLf7W30tl5YoEDrd/Eh+AmaIBccwNohbaT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGohjLFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGohjLFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A78C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754102393;
	bh=mbAPqcTnSShJ9p+eBRU86X8toKdHQ/fddi9EP5x5YVw=;
	h=To:Subject:From:Date:From;
	b=JGohjLFyfsL96fY2lxG0nhU/klkvDp4LWGjRCLI8zqFb101gwutdYgpGBL0lodDOW
	 mFIjj7AHN+coG3EuEm/G/oiamaH37y6458zBEMBlcpDtUxMScBC9BVTUnZ1AiiLWj3
	 09NOtdcyQxxTX6LU0PpN4YbWPu8oUsqZoTtgAC+D5kn8vbkNouPghqTLSBkXrgzTHk
	 MGJZMsOUDDO3qjP//1t+ynoY7ZS9iGmNJ1Nuvag6Jr9Tp+4bAPSoBGu6vsRjz+G+DS
	 iFYzZK9Jxtk1ryOvZUS/DqMgc3ZdIVYFitFOczEMEcXoVFX99qY9LffehRkb47/HD/
	 XRsL/i/GNWMHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175BC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410239357.22663.4395845828007464923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd29df4e5b6a5ebfdd7f6e8ccad39ba85caba41852b6ced1dfb73b69d1e05be7
Date: Sat, 02 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754102393
