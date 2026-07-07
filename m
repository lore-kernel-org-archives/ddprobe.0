Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32154379C24
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783393114; cv=none; b=unrtAij1sb3kA677Ej56emQ+NASmy4i2LhDmwNLOTsi4glNyFCUokWNIO/9WMBDs+eGog1wLK2deY/omNGgizEWeUbSPmdmbepJs9DIUXOLc77HVoqmN5kbTd0/crrrS/YFXlW/cXo7SczxCdMbUX7UEj2AnwqO6znbW14L6oSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783393114; c=relaxed/simple;
	bh=ila+ibieqGPuuZxiuSkg9BeV3HGD6pEihVZSrZHRezM=;
	h=To:Subject:From:Message-Id:Date; b=rzxoAZpgVPXDlS4bs6VtpR2jAVPGQSucxRrXs9iHlP7dy7aNl7ct5Ye3SbUA8g/xmrLYGBTC4+rXpZdyES+zu7Qadl97r3O9663mWYh0qDshqlqVWAvSBB0W1IFEl7F79kBjsRwfkD6sZMmjm6JfbVUFgXGdtV51+fcFSztwJ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAqABLPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAqABLPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4F4C2BCC6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783393113;
	bh=ila+ibieqGPuuZxiuSkg9BeV3HGD6pEihVZSrZHRezM=;
	h=To:Subject:From:Date:From;
	b=DAqABLPtDlFbkeqEencQjA8NAhtSDwk05tbyk16ypuRaPhqiXOQcxhfd8Gvf96bA8
	 wggyyUMeplq54VskNLszqIJyBgoWeZilWcFk3YuwXdyCk5nDiwZdw9NeCB4170cpky
	 nvUGDQFRHhBr0gb4TZSo8AwRb1q1ix+0bxzHvldQlxARdQfSbkPhRbSMx/CXgqt6B8
	 WapJ8N9T/1u8gk1XIsiQTcBHwnrU0JAqmDFhn6vECCADc249/o3uGILAv74JVEa5sy
	 gspASM6axL6QLpIemVCG9wG3nQmNh4P++jiAANVfba1SJLa4pUF9VzKHK0LKJXQ5EI
	 nQBpKjZjZovDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F0C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339311368.1317.15704420835498800324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2152491b26966a070e7483298964c5b941337b42285d862de892ffaac5f0c7
Date: Tue, 07 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783393113
