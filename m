Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159292C3247
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759318794; cv=none; b=eB4fy6ln9UtUM0DtpkTk0TObuUvyhaqIEB6AmKGBo5RIcTlbCK0OrZs5bqAoFNdtZ/zja/5k78MM4j/5JcMsuzhve6Cl8aaVpS/Kc9V/qjNeR5EQZpRmCQWf7ZS9FeZwz4aRftTpFUIH0qI0lPRTa6aQD6LwiLBd4/sYT+yJfOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759318794; c=relaxed/simple;
	bh=Rv86YmA+yOgbVopWiaV5SaCD510gp0QSXUu9zMAREmg=;
	h=To:Subject:From:Message-Id:Date; b=lbFFjoMzK16j/Ab6cUqq+D0CBguW6Ay4HgL9O7ZiRHVhIKySqeKJ08vhdd0JPRLTzNC8QTs3MykKlFGTNTaDJvWqFUMW+nK8ckt0Y2F5NjyxvWId16WA9GhdKv7Kpys+GIbqJipzVnJVbosxkVl271TOvJNiKNvxuNZXRuP1N3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROE6jjCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROE6jjCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DAC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759318793;
	bh=Rv86YmA+yOgbVopWiaV5SaCD510gp0QSXUu9zMAREmg=;
	h=To:Subject:From:Date:From;
	b=ROE6jjCALxWZp8mn6IrL7gDPY83dsKhf7qMbRk2EjeMWVDChO+PJuY7YZOqnjONcF
	 mmZ1j3j0MR+qLPY8a1Yq+HGX+KWj/PM4fURXrGahMMWRrHgJsCdm7/X95x+B3G+8MC
	 vU4j3NZ0pdWsj4VMGdr5dSDeJ5lnfYTap7+0P7GTqtipIsI03LUw1HslM4FSO9Heh9
	 FjlwHeVD2m+QAi16kHa1ZW17n7FlSBLQiByx2A6e1ijQklfjN34d6yaCWn19mrLNrv
	 thjzmIQS3S+2G6723QQRlAU/EkGlP2hg3wdLdIp1bVbCbH4IA2mdFY+HZGPXz4LgtS
	 OCFXchsD++O6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92760CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931879358.18686.9957951603812075904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b94579b7284a027067db2797300ce8f0dd02d33eeabd4cc8f5442742437e53
Date: Wed, 01 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759318793
