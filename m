Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC1532E733
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769768034; cv=none; b=pUBQN6cXeMboat7x7Tq1I1fX8QH2rUppDq7e6Q6RyznS2qxqlgUHulUzs6V8iuOVsQOyQB7OBRijiTNFjZhQTh/vNHmSYlU8e350H4QXqXYwBTw5kZWE0r5LQLo32Y0Ch58ySGOvcglI4iSuAN0bJrhzRv8wgBFyaGXc6Cd6yEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769768034; c=relaxed/simple;
	bh=vAHCDoNoDQZRkAKqU2JzVZzTxHo3M3OKboal61lnz5g=;
	h=To:Subject:From:Message-Id:Date; b=Xu4UbP8zWpgx+Tc7IBC9udkGe1HefNyYV8x0jkpzdhg2/ORHR5uioyDOMIwvw2Fi7AtCeMzTNOQwyansHlraAs7zOuaofpxPxKQy2Qqf/Bmy5vyhzzh9Kb0t3dAdujbMstfEMB/6I2HwLfNyfG7R9Co++eOfmm2040ZDlxNjjag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYD3MnqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYD3MnqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769768033;
	bh=vAHCDoNoDQZRkAKqU2JzVZzTxHo3M3OKboal61lnz5g=;
	h=To:Subject:From:Date:From;
	b=TYD3MnqHv/5xs0tes2VfDdHoaxTVdIRKW0YToUt6Zl2Cn4o2b1KylTgtab6brBUDJ
	 Z16IiBaiIS8kII2D5wi5Euz//Z801PwZQvWk/xno4653RIT0KI1s1HpnnSXW3miwuv
	 6JDaJfyX04hB2VtPI3Nsk6ki87QGUW8v1gLF1t0/4y0TOXKJgBs/jCnT4OP2mP7Vdw
	 KStI3hgxRxQnPyx+K5j4QZLptfnuQ+cbBYrEsLf7VwARpCqGUi/ydFszTXSPjlX/vF
	 X4hVTVr94unww2UmoUGTnF27n1E85+ulKlCmToJKVHiQIF3iv7r7vRqc05rOMyj2Kp
	 UfNliulhEvtMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637DD49C93
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976803358.16324.17911973388991373155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c932099bb4c86c98ca5d7b833ede96f4b3ff66809bb2a7a4b8dfcb0487ebe23
Date: Fri, 30 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769768033
