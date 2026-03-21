Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE77175A7C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774125894; cv=none; b=AwVBdG+pV9IBU4f3Z/deD3GYKCmCxOzu+eEqqlpj5FbRKgjso3N3AknkWQEtiD1yPB8ZVHsQIVjbbk1fsSm3OupSJXP6Pz6wEqD6T5h0o7bmjuclMKIaiAMEePokaLNmHZ4zzNLPdBFCXkdm0CeIhQ+pErlL7e6Bx7CgTbekJgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774125894; c=relaxed/simple;
	bh=fcJ9uY3Y2AxF9CsN5EyZ9cLKElXujWQYSSfCeluvGGE=;
	h=To:Subject:From:Message-Id:Date; b=TxW7FBGsvaumYHUT43wLTGyJYxporPSOMaOrLutIA0vp4D5F5MmUby5/AScaAlrM48yjchMTrXq6iFAGwX4NmoUy0TSH91bsXLY+7BrQQgcODRGlKrKGo35jKCSyhXNWBje8PsOafkar/WiAEkMSgcpushcH9zvFLazr0x7HNG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfvKu66b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfvKu66b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44F4C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774125893;
	bh=fcJ9uY3Y2AxF9CsN5EyZ9cLKElXujWQYSSfCeluvGGE=;
	h=To:Subject:From:Date:From;
	b=RfvKu66bpGl+CnxBdJG9HmwFReTfAFpjVBXtAVVre1jqWVG/EXtqedCgA9oxJjLNe
	 pcOS3I2vSIBKVY1L0OWCceKVY0+8ce16eN3T83NYOss1uaoKgGZ9LDa3ID4ya2SsG0
	 687jQAmhIVsdFgUh9GyRvGvXud5SKYKFAt0S8ZaOUHyfC6HRrWLOdJ92dlpCVAh69y
	 hP2zcavyu2rmqAu6tNSo+/dQWK6j8GTYhPmlKcNA8dDflCtiXuR7/ajA5j+h1+M2Sw
	 DHz0oTgd1HORCtkW/nmou5VHPGMP2LK67fX64UJ+u3+f4bGj5XEICzsH3dFKCYuJH3
	 gY1ac0ayDR9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136F109449B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412589357.5345.9271522058302968823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b77d277c186113b631931f330a402ebd369e3a257014700fc56c4b3d99cf19
Date: Sat, 21 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774125893
