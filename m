Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BBF4F0527
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792412434; cv=none; b=VLxmg4c+v90ROn51e8/Vid25HcFgg1NLktJzbsI1YPX7IFaPeiwgxyHFmV4WYipmTUiveI7G+9KHK4/2Rd2RjFfKZDR9QQmdkEpvcCXawtKPLU68QMhcd8x909Oq/WytuiP7gi6fJDjbrrC9aIgofJdVTTyukT+nNyjyewJg4yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792412434; c=relaxed/simple;
	bh=Z9emOsKydx5AizhsblXRBvyz3I0dhIErRi/hKZ3/ePc=;
	h=To:Subject:From:Message-Id:Date; b=b7quDCUzERLaSM4OeFjj7Mf6KH9zgrycDuRt0bRROGk9w28VJNxpX3ecyWoJSdl9unrlqmeefySCByzi1DSqRBJTDta4eMBw2jNHF9UJ99ehUqwRcU+b9095KUb8VU8bC6Z59kU1ySv0JTGpdIu6yz9GbuPBSNMKQRag6EWKlgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP/ZVlaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP/ZVlaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A0CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792412433;
	bh=Z9emOsKydx5AizhsblXRBvyz3I0dhIErRi/hKZ3/ePc=;
	h=To:Subject:From:Date:From;
	b=QP/ZVlaPNANslEHLbS9hlTVcYdc+vZzFiQGHBtCa91HBpNnv886+dnxHUQ72qzOD/
	 DCMohDM5TYoQ3imxUOXAljBNaaarf4SwttL5zlruuaAQnR1/xu8z0N4vBaB3Fq5puU
	 KZFjTHGqehFla1cn56Zoyab+7g49VBQnwXNqyLOU4FeIHovMDtd1sSXWx8tAnScWU5
	 FB+b/yQv0cKW7PSrKQPQWCx5t4w91KsTwQ9rQChFbYL0+oSDrI2uX9u9NzIwTfrWxZ
	 srxIs2yRQ2gi9SFpDiqM+qlAJNJ8kyc/MH4NeKR5lkZ8QxiymS1A/nQHHimnYLFAjx
	 CRjevEZtYzZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4165CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241243372.12589.7942186069055502444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1386975819f8b4e3c596a1f22f97f68fa6a902781608b3ce9146d171df7022
Date: Mon, 19 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792412433
