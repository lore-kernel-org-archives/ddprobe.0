Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C129D0E
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745099394; cv=none; b=oSorMVGiA+YIgBwxJlasDXlXK2pvHpyZZvqzyMPeTormerAfo0wTF20HFiH8fXPr1kymny20d0xhhrlvpzNKrqimWQsXZAAcE7AuHyP64e366xMkI9DCmQxaLd2z4MSU6HU/v522EP/2xoS+zR4JBXCwYuOfYr1/eway/FQueRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745099394; c=relaxed/simple;
	bh=qMQg0OXhvoPid77lvSUyzonSmuV4KlOrvHEUi4zlDO0=;
	h=To:Subject:From:Message-Id:Date; b=EMSZdwEalR+BV+a2YYteYHbCX44yQwmB/rbwAO4RYDoIoXClCrECyGo46JAicMBuIrg0xCkvlmLbOSoj1xwHsI01oWn7RYiWFbXuPME172ZRqSPWfhuFJBb3ulqZYeQGo2vN1Dhvw9Qef1/qxcSP0PcuezwZnVZ9oCkXBQc/GgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJrj7DlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJrj7DlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EF2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745099393;
	bh=qMQg0OXhvoPid77lvSUyzonSmuV4KlOrvHEUi4zlDO0=;
	h=To:Subject:From:Date:From;
	b=MJrj7DlXfde1OYkYkQzoqLw8LPh/kzhd3xPWg/mbNjg7cwtnmEmCzTdY8BeZd/Aqu
	 JMOEaoxyJ+d9nWmWBcvDMkNXtKtkoAwZBwfEq568ccQmBFy+iJXvqT8nO+8ahrurUZ
	 A/zw4n9XVNbXmyl/Ka7KJyxrXxouY2ycaQA1U9nZ0cDAx2RD+K5e6XJVnUYDb4e1QC
	 9NLbFdK/lOscQH/ZEoOjUOx8vL/RcwKeKAuSIF4a9iXPZTHYZQzUmjIpdaqfT1d80Z
	 vaK8JUyBFarZb3c74NdLlDOpJwfD4fe7E6r1T8xwAln62PAl1SBa5yVCVD71AzSLLK
	 qJY40G8150PAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A4C369CF
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509939359.28518.2781621670872400481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a952895f2d85aa1f818b26a176f6df07944775308c870a432a2d7c219d88d85a
Date: Sat, 19 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745099393
