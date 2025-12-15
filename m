Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9922D7B5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765760574; cv=none; b=mU4w8SeE7TFMEeSi0llWFkNOGgFkwk4vRavKVMsewH01iubLeaFPG+3VOXCFv0JBXW6MojkjEOFUL52JMpovpkmQ2QG63QYVJux0vAoHzDQqKnM8y3UlZlfg4m/0ZDA0Km3UDxuSUa+azJ3oaGREA+6BBD3jY8UQaRRuRAilBGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765760574; c=relaxed/simple;
	bh=N6mqwEPIOPi102o7+l2JFaRWW6AJjnn+rLGR0iKRjEY=;
	h=To:Subject:From:Message-Id:Date; b=TY9FyvDpJXAkqUaFrYhkRyGNxJ7YDZ/7lX7RKfC3A8NwmD4x2ihMjhk1h8UXJ9j5Xgyn2DJu9oVjFxR2a22upk4X+MZ+dJbDoSjbDlg+2nx91t8MBovk8lLFKNffBq30/sRx35ZbJP4BgtMLd1EZ9R9LkrrN2nejX/ss3BK/VOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0MNaxgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0MNaxgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8812C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765760573;
	bh=N6mqwEPIOPi102o7+l2JFaRWW6AJjnn+rLGR0iKRjEY=;
	h=To:Subject:From:Date:From;
	b=g0MNaxgtj4hwqyebz28Yc3Ojyk5m8ebBpeErHKED2HZjLRevgcS/UzI6lxB03Ori8
	 PgQwXYS2LmHTkbDHFGTHNBzOJckrAnNkDIAcD0vHGvBY18XFfLZ8f57LQGbjeyamWS
	 CH+FbwWzSHuQbaNAf4mgdhsWQhVEYVpF2rt1+ujtPqfpPTGq74/iipO1k5r/j6/7Tz
	 V+EmnouolLU/8BGZHTunlkmWz3KISHTsuYF3KKEzl4H+0EX9R5wWM305nDHfeeIxxv
	 ssTtccUCc7+OR3bKnzPbZ2Mg5Z7hFfWXSZYfXkgLRzIal1Sfg5ICiWiKfnNthGC2EE
	 FMlobdbInTGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96715D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576057358.16555.5365421557717906894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4a5d07c8917d83fc54b8254b0ecd21c1f0cc310df80d54d95d28714733cecd
Date: Mon, 15 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765760573
