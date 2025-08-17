Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F48488
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755390594; cv=none; b=PvBmwIoekhnvEVEFppYmSaWDpholqwo1e721S6+5qFleZUsTkeeO5ODi4rpgcD6cS+DtiUxC8DUSuOU3ID0k57c2uZMg2K1ulo8uir1i5JJ2Gthc+blcs+m09Mnm74PEZqGbWosWOW9lVQHHpjREQuFhwIjUkZW7ZsmMVYgThpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755390594; c=relaxed/simple;
	bh=amnT2Gwe+vMp5gZ1b15YkiJwR7OheVrMTL0EKh9Hpj8=;
	h=To:Subject:From:Message-Id:Date; b=UVkLOXaEmYIr2/P86gg0Re+tTt5bMsACITh6CYCXksHSRlGGjNQ8LcmZ5ZaPiveWvtXnCIVTyY9oiQOYmkv4lCsfPeORraL5LMBFXZHW7LblNq253FPVQz9DsOHyxODuhcUh/RBqHlM1ziXcxRoMxV+6vzs7LbrxcsTf2Zd62LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbfycIGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbfycIGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3920C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755390593;
	bh=amnT2Gwe+vMp5gZ1b15YkiJwR7OheVrMTL0EKh9Hpj8=;
	h=To:Subject:From:Date:From;
	b=CbfycIGK9HZ5RNHuIaAEEqmS8mS5EgUCQSWN6DvCz/843rS7fRxUHaDRUKam2e5Xp
	 37dBX0VWVY/ukcNGNSEZYKeTusU6ngf6kHGowemU7YZJq+8h77vDX4Vc9wJ3suSGBD
	 6uz6Bg4YrrCnIAn/CdkZq6ayl4w8+3nUg0rOjKry23Wsey0TIs+4c0E7POkFvOWcMI
	 sAdjbdpeSYvTaSayDcZx77AiEXB4bEYZVW49NqXVMVbbJPc0QGTnlURnb9V54zAQOv
	 DE9nhk01IwUqUUkbmBEUaI6eC1TH/MIFH/RbGKh9MARX3HukYPQf/WxzsFADmQ52EQ
	 RCiMIekzPolbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE2CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539059357.1123.5079930650291618402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca701df308cc702f505c1915105ae3cef3e281d209902ae55bb73730693d5f6
Date: Sun, 17 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755390593
