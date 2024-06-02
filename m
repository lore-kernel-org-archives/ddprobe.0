Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720DB18622
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717306523; cv=none; b=DYY5768nSt50WWU6t9ThqbnPs+Ypc1wmcXI7ApZVvBjcvxpUM9Kn2cNgWo99tywB76ujQzeyXyX/D8ID9quCn0z0tpEq1Jfwkh7ZafLBkfP4HUzgQjKEbAphWaEYRTtLYI9ClfCPwTMtCQAX+VN6nyAfG/MXk1/RJFoDgXXYnVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717306523; c=relaxed/simple;
	bh=uv7pCJweyUD0izf2p1QHU8b1URR/jWIkRwFJ4e+dnLo=;
	h=To:Subject:From:Message-Id:Date; b=XwH/qsaPDQfFeDg7YzDI6qHP6HyADw/fTGmOGhsZ6H7kG1LlpPwcScTcWuvFxTODyisymabMH21u1FhRh/Wm7U3EfY4pzk5XgMWQ45ZSefHjTxGiWACro2B//J+j5zr3pRvm0g22plwBeZ2Rb64s4OfyVvdkeuFV/Uw3AUvPJJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDcO2yE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDcO2yE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F28AEC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717306523;
	bh=uv7pCJweyUD0izf2p1QHU8b1URR/jWIkRwFJ4e+dnLo=;
	h=To:Subject:From:Date:From;
	b=FDcO2yE0BJsle9BrzWKc2yDWMATx60W3RryeDfxc1ZvLz2Am2A4hr4/GSkXTdb3Yp
	 f1udoK3jPnrkBiKPzUpqWv93gUqnD2j+fdOLkvN+8oONu6/c82W56xuZNdeF2cFm3G
	 358NFhBdZGs9uca9gvakfYvA5itY+thLbQEcJIbcNITzlihHz5QsjFlpJukqCFlcdj
	 wB0Szw6hsJQ5/OanfCGTJiHuun4G9s7Ay/KIATfdIN4NLrtDrxumbKmBhnHLncgQmi
	 LWLywPhWom+8+YczZLnvjk8MQdnW8CbUjyWpZ+6VmEokXeTBibjcr8BlSQBtD4MN/E
	 mBTcRCeUGBNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDA4C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730652282.4829.9595220310951590771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215c576a655f28d7b0571743af1b28813a8e62dbc8c8ff52b4bfc91f4164fef0
Date: Sun, 02 Jun 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717306522
