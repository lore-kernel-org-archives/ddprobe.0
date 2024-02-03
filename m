Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CA94177B
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706942897; cv=none; b=GFDEWZF60sxeYKVpCZyHYdKym5U8ricTxuygOzPbE7Al4Uz/9jt/OgRNRKKQmDGjUJKatHtrwOORNG04bIxvsMZgGSjDkX2M2PMZkrc21Kbw+vBL4SeatbUSwtMPX3oI00HUAp1eSsRElhW8yWYqOzVDfgqmoLmYqqWPQyXzEB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706942897; c=relaxed/simple;
	bh=CA4Zlp6zZNSffQe519YRDhV3GYBPpSD4XFj9xGduig4=;
	h=To:Subject:From:Message-Id:Date; b=eUHSSdbRKjZFQjVjCkOFXeyNavlgr0YbB4U4jSWHLxbVleVw0WxU8AWqd2hurKNuimDsdyf/d2CQunZaoYbWDIUNZ3pTM/SnczU+VcbRh9YiGFqU5lHC4Pn7lOSFLNbKGveuls/c+SlM7iFV2OYFqdZ9mD05BXYPTp6y8jYNIow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4AOiZuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4AOiZuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77814C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706942896;
	bh=CA4Zlp6zZNSffQe519YRDhV3GYBPpSD4XFj9xGduig4=;
	h=To:Subject:From:Date:From;
	b=c4AOiZuqff2hkzdxrcxCMeWVSsBVX1f/0caAss7qqtca0BP3XC3o9hezEKAyDlP17
	 +HSlJe3vMCIR7CSCU0p1lRVXtXAQuosKUdEcD5/K4LW396mvhrKdZvYjPDS6bwiSsd
	 9z2229Z094tDpj/Oeu6JVZTvdrR6E97TWG5fYOOyxncJugI+btzvlBd2Vh1G2v4xnZ
	 UPBmB1fTHTAbvMHT7epdxUf5DSzACy+G6O4vzIjDzwv5wyy+rUj0k5xV3mPHugBrO4
	 OqqjQM61su0Y0Db80/DjNXWzDtniM5AxWBcK5ORiLoXAbXp0CAzF+UiR656Yq6eYI3
	 AYiq4U/C7+Hrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAD8C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170694289637.12196.11382992520097458869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198c609a51451df8f54638bb883357a268a3b973ffbca4221ce8fe3c47c2a21f
Date: Sat, 03 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706942896
