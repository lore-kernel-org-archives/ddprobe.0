Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE13A290A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711914496; cv=none; b=oiJqD5ZRrCc8bkT/CdWVofg4Zu7CDkRJNUrzm8NiZTbbYftkVX/SXwPc9VN3p1YXfxsneTflxFZJWkGE3E4WaSFArqdlyG0+YSacZqJIO6zg+MEsTIF9l5hT+AOw0m2wTYNSJj00bNDfFMtf+lhDxfoZwQWPCwoZCS1VxfJEyng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711914496; c=relaxed/simple;
	bh=VABvyGZQPzkuZnQ0kxlHnEDeI0IzTZjmesMIpWdcXgY=;
	h=To:Subject:From:Message-Id:Date; b=Gg0Clc9ShbCltHlSGVov1Hrnrm5gvHqLLLmzq0QRTN3hjw5SJeQM1QSJhpGtcdcNvd3Niihayb9G7Drej1TkAO4Caw4QsWbZ0Wcl6wJqie8+SqUxuaCXJDEk5NJjcCzUnTxS+q5u8XMyru2BeopaUEARJpssLv4SAdRRqB+p5Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlIb2F1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlIb2F1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DC6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711914496;
	bh=VABvyGZQPzkuZnQ0kxlHnEDeI0IzTZjmesMIpWdcXgY=;
	h=To:Subject:From:Date:From;
	b=UlIb2F1+DIBj5mLEwtkqG18wt8DQonuig+ySAt7dKV3E7GHM5b/Rs2lDL4TLhE0//
	 bTY3IjL3rTAIsYY88wZ8ZbjtCmEjhB9FvrBMoz4elEU/YP3rT0tBTMO2bTtE0xM4Lp
	 qXQ34u1gPe4BffFvtfM6XO5lY5L/AHxo72lDX3GJalEfLjJw/uOgST1SDdJmcfMFdQ
	 uyHTF28aMC4FGBdmRNpVaxr8XtsmYh0Z+kYrsrkv4JOW3m1aY3jTVlb4o+W16RV+6n
	 aQA25eHIaImSxsyZsj4UrlM5hgkbOYKNmzglZQVjqQC+aOnNCUn9qJ1GZUBCtvWee9
	 446Ux5lrQ83AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6465FCD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171191449637.24954.2644570711340771572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d58a47e0419621d2e4502e61302bb9f6597adb618d791f0e52d5c237bad371
Date: Sun, 31 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711914496
