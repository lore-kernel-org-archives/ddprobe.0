Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44341E0DE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773535493; cv=none; b=HYSl/C1E+TDtnITsHmRLxjvAklutlCwct+ROaRXunOT2CLa8Din3ReRLNqAZ0nerHfGPNuFFK1NG0M5vaImNOiW3bVNZtCJ3S/wmgISd5Xwn3gqTIPfCMrACw7K23yyGL54Jg/J41FAFOw5F8EodgsB3Os/PHmpzchtTl4GrWPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773535493; c=relaxed/simple;
	bh=IZ7RCoI3rLbadhcrxvd4xFNv9swPNiMjQLwjXU1TGEQ=;
	h=To:Subject:From:Message-Id:Date; b=Cflcui5whWKs5bPlM9lUOA1KNMqL9dMmxRLXsWMjSSTq/8h9vSz1vPdD76NY8Ow/APP1MNlOfqEsGiDhvvcarrmOMnz/9pxbE6nBk1S4R9io8eGUBb4XahoAzF4tIVJhYHwTsd3gQMXhlZFGskvB/J2Ctm4OYeBRDuTx1OJ9hR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UANMsNzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UANMsNzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DADAC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773535493;
	bh=IZ7RCoI3rLbadhcrxvd4xFNv9swPNiMjQLwjXU1TGEQ=;
	h=To:Subject:From:Date:From;
	b=UANMsNzVDwDZofNcTtyzUzYIUkEUo5lnkepD4lTvNZ2esh+uY1rtZggp2M3QEL1E9
	 GgRWrVy+hz3TV+EIkJFE2YW2GLEjs7xoa7J1TD+HUNza38C96W98i89mtK0xJfCygi
	 dEZRPshqMti3s2AA1CdI9Yh1gGrEP7k3AhbQHOrExt0cTENbbM1D9dMB/zhzndqqCe
	 vbdis6f3047cjDBaxDx6lje9aKYNEFw1LmxEawYaKUUR5Z9t2GvZ2XPoGHvYBsSUWC
	 ObA0361tuKzdPq/kBNu7TxginRhk6d38E95D6KuDDLKsbzufZH2sd57shSDzL1iNr3
	 t6+ftLAPMYxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CC10854B6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353549357.31706.3932027625594377371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b420c40f61a691d93872a3936ae63440093adeefcb0251c11da863a1586b8d
Date: Sun, 15 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773535493
