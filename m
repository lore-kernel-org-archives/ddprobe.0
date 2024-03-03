Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0101F29CE1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709480297; cv=none; b=n9tcosP/IoQScTtxiHWsrt3w1RepNDgrsUdAUaEyrWwU6OpBAOPlzTmxllPl145+5k7e1PEfdxx7aDttW6Y0G1kYJnxPIQNlEDdmT/Vpy6TPFRXsdC0tA2ODQoxsJWKX/Qj+s3GxdexyvNi/V2W143ikHwu9FZAVRpEznRQKi4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709480297; c=relaxed/simple;
	bh=JUdbkC89vluMga2ToAacQWQQu7d5AO2r7yz0J1Stu8c=;
	h=To:Subject:From:Message-Id:Date; b=FQgJoNB1CRiWZ6QjlE54feMtnMZyfyrlo6RTdYgmb1O5bdFnDBd/HZDez/lFnOMIy54chKyJe2BKAtXNLYa2CGGa54RNhQgNuOKfbWhfeu7caSuj1gCR1HyF6R6g3BPLCMVOjX5HqaVS0Ut9Ec3PkAlTO/ytkqeclc9ZCm8Y1v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKyeucQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKyeucQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85964C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709480296;
	bh=JUdbkC89vluMga2ToAacQWQQu7d5AO2r7yz0J1Stu8c=;
	h=To:Subject:From:Date:From;
	b=ZKyeucQQRdDLejgm9C1czcOOuICBZBCsMFU8mchmefXtEBver5xLixPZvoVj51Nem
	 2aGcPM9ue7yPjbv+esECIcybsXD7tVNSKaelVlg7l8vxgEtRjF7My3MOyc9HZT29sB
	 MlwoWfxT+alwJcyndXjfn0ZwOA60MjtShXLW2aBPTeq1W4hpjyMwJ4pXZTLF7kGrLY
	 xfI2VYNqTOTJKWYzb5omn1e5yUGY6tz13b4Jz8MjB5odH2nytKcw5+3l5YF5istVns
	 DqrCsWn0ZIlUiu6a441AaZar+xRBB24/z2ZCj9F+YT2zt0RJpeiaB2kIBABfkln9qT
	 uItlsBuMU8dVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F8CC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170948029638.9748.3112408499989408618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310f04e4aeb2621996a43c65c56c03fde4d08e867eaa0984fc195708352a2fe3
Date: Sun, 03 Mar 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709480296
