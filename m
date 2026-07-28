Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1FA42CB03
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785239434; cv=none; b=SFesGWEIrBPj37sQDOV0H202C20e3GXkGoTpxDIRfTochEup+uVhEd9KQ3NVinwgKg1rWHOtPIzgJCe3Y6QXXlZi6z5AALWSJnFDHrgJ3GksUv6TXBcaSWI23ounPeZKQoXtDVEFegeqr4b+t+LTnrKOrpzsdG9r/Gd+UpaYqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785239434; c=relaxed/simple;
	bh=y87aEryvyrQA/n1cTlObscBsGMcR/EUb36zI8UXXpLA=;
	h=To:Subject:From:Message-Id:Date; b=NHq4x5TweZXpraEHfx0Up+OD9qbWBIMowmwKBEU4dSwx7SqoUxfT85/DifUlGUMQ8MrVSt25qzvxl8WOFcZuEDJc72WTWJfxIa6vaW85uL78mAoDGzqzVq3bEMl7t2wb1sZ+ZnFlXP1suN57gsoI8PBz3HQwOHnlmMmFojcpdh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtFl7CNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtFl7CNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58E4C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785239433;
	bh=y87aEryvyrQA/n1cTlObscBsGMcR/EUb36zI8UXXpLA=;
	h=To:Subject:From:Date:From;
	b=CtFl7CNX4BdOL2dy03KX5tvCAE72ISRPXQasQtbQMplc413DBVG1Jxb20ZW+AYz0o
	 33g5JMWejuAQEXtZG5cAeC7lvPtrcowpcsiYRLkA9CPVlOfLgfc4PFwRpFYMuiJDUP
	 1Holwm4ZvXLShRRp+OAjt64eyy4U3OF/9ExCnr85ar7TP0oqKDU/q+KJkyOWItpLy8
	 VHOTgRnbJysCtcMdDS7ojtSd/e7hV9qX0cDLhdEFNH4hQvSncF8uHS6dnJUEZbe/9i
	 mbmgSclBA932wPmMyttkQnnjNlSSVPS0nxFRajr3yGb3HtOFsc5YaDWr/YwKwFeWxf
	 b1xp30/+KhCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0579C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523943371.23375.4007176711902380887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cf18908792689cc647fa53989d1177bf0ea49f5e1c5d29912fa23b99136281
Date: Tue, 28 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785239433
