Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0BA1096F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779625954; cv=none; b=Hkbx535o1HVutEn+KbqlWGPrP7VipGXqa9vFtwMhmB/jQFsXkz/Dfo7csCuoHVz2Dk/W68L3C2Zxdnmib8I2OF9I1USPCr13zPhJRtwMszt5a3NGOvG3YLtrUlQfGpJZnjITd9IPCvt1cvimOkw0WdSe7wzJkMFipll0V7P7rM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779625954; c=relaxed/simple;
	bh=KfwiHRC1YBtYKc300AGSJeJR6OkDsvC37SH1uUlgnpQ=;
	h=To:Subject:From:Message-Id:Date; b=eFQcpSir4sBOymG7Of9elAxAPVFmmu2WYUubnoK2ispoO0kzET2EuJ3bL7t+Opcr29lfMocQnRVpy//3YlzjYxnw1zo5XuLwRc5aM/5joRyD86x5gSB17b7jUKnvkNOlev6n7xwKmM3PmZtntxCokRCS263SIBnZ++DCst+o4TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYQc6BSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYQc6BSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C505DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779625953;
	bh=KfwiHRC1YBtYKc300AGSJeJR6OkDsvC37SH1uUlgnpQ=;
	h=To:Subject:From:Date:From;
	b=CYQc6BSd2sKCU6gtPNvr1Y8YXkzkTXfLCAzTXCouAtznaFnEyZGzsPyLoxilInxys
	 0OZSoVG/exV4fJ4USrmlBBLtIMbBeck7Y0s7jylbFa7ITLGt3uc6iiEEGJm/UsqfCp
	 xpRkSBI5F4nGeYUaUEGxMcYFudeR2gWSgumtiMl7ZmuwiWgTOmLQvdZ/5SReI+eH6K
	 UFjVj3dxgIZTliOwz2SPXvQ2mS2NN8EjyjbPG3ProgE3ZLTgom2Kk/Sk2Pe0I3t0zR
	 tykmBUJGh0OiszWgJIUKZyyQQjLPyj2uwxi/RaGotIYuG4azBHJMcYezpOkg1QRC7P
	 +0txqg6iQ6L+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC58CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962595368.17726.11494111612869592487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ff8267d352db5834353a45c742f4b73a25b6e3773dcc1a5901ec410dc2fb3
Date: Sun, 24 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779625953
