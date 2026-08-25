Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F3113777E
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787657434; cv=none; b=h23p7WcMnOpDpujTKHDtyuIgBmRF+5RH8crzFbBmbQ+yT/NWBWui63eRg7hDfvEqeDmzm/zHGTxDfRVmCaoY5H+deRM7129PXVsppJrRWZ/8MOjm4DeDCTaupnHgF2G+MmmovvaVOFqlZTzfJ16mvIFZXArMOqANY86JMQ/Qveg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787657434; c=relaxed/simple;
	bh=c9URlIjKGJH1bPZd4JDX8bNUyPf6B/cwaj+zlk3BzRI=;
	h=To:Subject:From:Message-Id:Date; b=VKwFag/r9+GjKPCGAkiMgdMlOwO2DIyPlBMLOM9dlxI1ryPV868XUWsmaIFb8YskoNVsmCVbu1Zd534L1bcib+gP/BG4ddCZwDcEMIcl3WRuYFvmphnk39XYfleefVObUc4wDnlOKFO4p2K64J47VweLg+kt6PTIS0DlzIgug74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUAujQCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUAujQCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB7EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787657433;
	bh=c9URlIjKGJH1bPZd4JDX8bNUyPf6B/cwaj+zlk3BzRI=;
	h=To:Subject:From:Date:From;
	b=JUAujQCRmTwvkqemhJq1XR1TQRr6l1I1Q/fCyYk383nE+KCP4Vjpxs1iTn/uEHuh8
	 D86R1Wnmfsgwfaui37NpDdMyYVhJFLtM2q9aZWwFnvF9pjhZMfoqfZHyxufmLa6yhD
	 oar/oSZLU8L05yjAA6hu4mgxJMxpGl6RMvja3h5VSYXKa6A9SRhRA/4PxGVfy5UolC
	 JwnkuMgBSS43Wlmc4/SgSb+X1ZMf3ARmU3B5ySAthnPDfscY5JqtYEGZcayQ/ld/wY
	 f5IJAHYhywUJnoKAjJoMOtJxGQeXrDHfIg+uXsN93xcmzRe6c+qjtqjTsLlyTBx7EY
	 cFh7myAz/DbrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AA2C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765743368.30565.14002124248899945134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d650289cd7132e3b1920448827be9e30f13ea44dbc69954a04af5ef065dccc1f
Date: Tue, 25 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787657433
