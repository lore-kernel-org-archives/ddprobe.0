Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADFD8BF3
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707029897; cv=none; b=oEDIRje0D5CBKrCe6YXaKsoHcpdvRcROOUTgdEtmsX6QuWMOCvPNbrHRzzhZoACxklPoSf+YwRq+oyJwqZdaAOCCA9OmXJFxhv2vAyMsXiTBPfzjbS/Ria3TFKahxd+IJtGKC8tfbiZOO11UOpg6UhmyqTTyLe9sde8pxLfZtZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707029897; c=relaxed/simple;
	bh=1ZrvkQL3IauaE9d/YNFrCNXmF2xMyrQsuMJK9q2UstY=;
	h=To:Subject:From:Message-Id:Date; b=u/Ppm1sqfeeKjnGy8MULI2oUbz5LNQKko4hoh9lgXFw2RfnAzI3YgUUfARA5luBr6bh4MzWTWcXPpCMtK7AcX4KZSCJMgo+hUqXxOkvgeYcIwbeoE/MNuk8FWySH9s9W4LvYIHH3ZtUVNpgO12GmT8FGobT4tEwlVkthsEqllEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq47OxXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq47OxXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EF2EC433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707029896;
	bh=1ZrvkQL3IauaE9d/YNFrCNXmF2xMyrQsuMJK9q2UstY=;
	h=To:Subject:From:Date:From;
	b=tq47OxXYv5bwQgJJ3ehqTM8lDclzh1/f7/vH5oxJrsw+9Bgb52+V2YipQFMgM1ZVm
	 E+JahthG7aVex+oOTd5abs4SUfLyj2eSfr1A8SI29RI/GX1C5Ea/CC6BUIG8f3VX+8
	 KOEWG3aQgRVG+wkXVvX6o5xC/VoDxjEtI2255oBZx8O/jw+2Sv4Z9YbSJ7B+aoqg7g
	 cBD/UZ499T3IczsxUjebAN/eJL0UvEizWrGAnAzxhVpYsMkGzAQWLvHrIwf5QiOuSz
	 Ke3yJOlCD6Y1AOOb6Vx0vM3lns0REiuKrZ1PNvTV2LfL/Fxaa4DZjliLfko9R7AER1
	 rPpOJy/0NrpzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679ECC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170702989640.2529.17327170102940808733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6f04a8ae01d1bcfd8e989bec5ae791d8713c73f8568be4cb444c2b708b58b5
Date: Sun, 04 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707029896
