Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E8D2E737A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780766674; cv=none; b=XGfCESzAR04mCc3p1Dyv3e+wXRSm5qkMZxKdAhupkXmYUUFN2IMR5GmgKJ2oxaM3AqqUJS9Nt9M8auzcH2Ib73YkpiexUNn2W2YZTtQyQYivPgm8VDr4Y68zh1oAfgjIv6P/b5r0icGdmLlwRXgvcEE2lpb5Wov/f/x0dCDBzRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780766674; c=relaxed/simple;
	bh=y3m/eiEkLTLqhFynIrcEFDk1Zgh7ph3ZaTgLb4uslZI=;
	h=To:Subject:From:Message-Id:Date; b=L8xPG8XRUZMKHor18638pnmUA+oOL7wOgrZ+yvvWT6FBwGU2DgFjS4vNYBJUVMC0yjy4gmEvcXHq1t/t+Jy3jH81PleRdOkO9iWzfUdcaZBc0yGJ50tZk7dSAIJmkiHn8dUtDdF85e9rILzli836QaUSO6mCHI2bJZAXpN686Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPmiVFbv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPmiVFbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9892C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780766673;
	bh=y3m/eiEkLTLqhFynIrcEFDk1Zgh7ph3ZaTgLb4uslZI=;
	h=To:Subject:From:Date:From;
	b=WPmiVFbvziD1yesAKQ9gpnZa56Gx1kkii8qayugsPJUXnVUPrOIoY93Hqtewgs9Mx
	 z+QGEUo6ZnhjcqktXHMHBnF/GHdfE/0PiPWQW2KONHdIH+Kb5exB2F7vUz0fI7jsYL
	 +sQqwbHwBxHiQyBrAu74/Tqevw+5kqebgi6BLzEAW+0qvXZoE3+c9ZXaBbzOwnTgL8
	 YDHH+Bi4yJQ8DGpAjUftSGkR+beZ8MNM+iu5/Vh0GYALopBszqzKbh1QKYernpSgT3
	 A4AX5Z4/8jrqGeH7/fH8Yop7KDCgu/mOqlY+0awd3oUZXOM6wBm+M/wx00xnaAm4gL
	 RrmF3TO/O2qSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E3DCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076667369.12276.652467473126609515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49a1140363a39338a48685f4b8825af424567d035ed909f9dc85a980542dc23
Date: Sat, 06 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780766673
