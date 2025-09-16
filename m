Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0B92D73AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758047995; cv=none; b=DKzykHhJlslIV/45hXvpf0ruoLF36E7IKaqIM2gCzvXE++hzwcICaPTwe5eie8C/t42TS9xuCR/eg18pwboIlZ++pMV2ejAM791GPi7r4XgTkqd22M5JSFm7FjbXfhrkOvXPkidjE1OZ27PYgc39ugahogrFk4HDu4ne9Bgd6Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758047995; c=relaxed/simple;
	bh=+40KbCnLuc2EJKAsRNh0/a9ftIH2jKVpd9au8Tg5czI=;
	h=To:Subject:From:Message-Id:Date; b=RnB2XOW+lBmCaw1+132k4qcvrJlMS1fuV4LegDd/tJckR8Nnsi5LwPcve2ncWnqg11UjB6ACIr4JwhP0rt+xJWecJm4JhMDM1Wd0PWuf3mUuYErqA1pEx05O2Mrg2a55ag+O8Hn64jZmE6yPNLjDiviPCzBbYVrybmOaU8/2RHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUn5DIS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUn5DIS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5104C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758047993;
	bh=+40KbCnLuc2EJKAsRNh0/a9ftIH2jKVpd9au8Tg5czI=;
	h=To:Subject:From:Date:From;
	b=VUn5DIS9BwGymuMjgAc3bSnvxEPES3L4CyohETiXRjfVllfp2FFZAqojLLXFy/eHj
	 GYwgm0XWvtPw/SgxWU4h5DXsAD//mHrVPBydY9vX4+nXJ2iUn8ug4afKpr28Jf0l66
	 A4h84dK2GP+bwVU3yLB/SjjlKr3gFakX3cBhcMMu6OlFp4OQ3uNJ+Bx3ab5YAdoOLk
	 RqoU36zSdORPds7MsAtE9UHxmB6ZwqXrA59ROgmsgOBFJgfultrpFIOowfL2c/+n/y
	 0b3/qF5Bt0osh/vly2xuTracjhKC1Z+vs94HWQajkY9GFgnwCEqGzl85WZuNlqrn1q
	 pr4zinlcbQKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F88CAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804799358.7325.17934889288968281638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d129c6eb41232b2612af763095f7268381fa9673db60f06b3f762b8333417e4
Date: Tue, 16 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758047993
