Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472DD191
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725758154; cv=none; b=dMKahz8XPgrthwXyCjZfbl34A/QdtnYf4AOju1HTcmwDK9kXB6vHzh+umHoRRHs6wQSdWoMREshh1FlrDlhg/Vqy+TeS86grVme+eHXEb1DO8Ao63TiSOQ9M4NbPa04dXn9YgDaNDu8IB9Ii06J391kFdX6N8ZiiU7PwoGywxmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725758154; c=relaxed/simple;
	bh=GA+Xv1u/Dw1wNar2eAFKgfb2rvP5vcKPIyWtUBbRAe8=;
	h=To:Subject:From:Message-Id:Date; b=Dywn2yuo7F7QLcpQeZN3kRbrvBzQ7PISxMzPl8Kq5N36fQlw6HnP1/BrdrF9RkQHwZffNKFfBiiI7pBymKzxludmlHGe8IqKJZTVWIv85oFfCy82jPKaLpOGLoEedC6C4Yxucuejc/4w7MuJ/KilqLEXI6TwKUm1JuSoh5iIm3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBgHuqSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBgHuqSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10B1C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725758153;
	bh=GA+Xv1u/Dw1wNar2eAFKgfb2rvP5vcKPIyWtUBbRAe8=;
	h=To:Subject:From:Date:From;
	b=eBgHuqSCBTX6jLYqnVoC5lrIq/FgAf49vaB4zbE3mWyNrmBTjMYtTZRWtI3hhXF2d
	 pMfponQY4OnVzs6pjB+FvJDmUan3YIEPiqqQqPONk7xDhz2iKgUenPo0DgOSk/xfom
	 ksNFhW6VO55D5RfK1xUtHq4hBKGRSwX+njbCl5POnnV8MGUDOn0wDkMiBcUVfOF7Wg
	 Dg94gAavdnZJEj/hUAFCNa2nmHhT59mn2Pm245A4cGK4PtPf5GQRHzdy5UYXlRkW7G
	 I8wUs+v9cD+vXlsPV2HFWcpk2031271PPQ5HIpjI0vwK10hjj0oeyETvoFxvIJaJp+
	 UXE+lJysGN+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D343EB64C9
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575815361.18238.2418861167356512178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a4634e015ed260351f6de785fa3c537fc0c479557497ef8ea94b899f6c731e
Date: Sun, 08 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725758153
