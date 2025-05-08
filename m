Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266FE42065
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746698995; cv=none; b=IY9dCPby+qR8qd/r04sjrwJ6cA6AE2w+zDDOMrHGaytMqrJWWV24fM3TisNmbE7kwFhDkxj6WeSxx1PFvhuxsGHOaBw4B6UErty55qPHvNSBwvbW9ouJAl5eCc07U7YxHVkyPJFPpXTI1zsic20qawxiap9ZuW1huibZ+kyHVx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746698995; c=relaxed/simple;
	bh=ob5+UnfGmHIcolQjVleXXZczPWwCHITOZ1+f0hwGKxo=;
	h=To:Subject:From:Message-Id:Date; b=uVXQuUKDPC3vSzWMUQStecZvSRtHZX/fIpZCwi0R8BbwmLjo6yzmdUDl9qqOT7hNp0QHUAEH/OldnByjRXalx1b4WA+61MYLfenXtqjy9GSiJbHRap2mhbtQSd+BrI//Hg6zE3QASPBIPhB0VpKY/ea4WlmLfCU5NL21Oxyj3GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goJQZORS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goJQZORS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD10C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746698993;
	bh=ob5+UnfGmHIcolQjVleXXZczPWwCHITOZ1+f0hwGKxo=;
	h=To:Subject:From:Date:From;
	b=goJQZORSWqxZzfmGyk7+D167vD+lPiVPisIWxjdjAPO2xw86cghrdz/nSsJbmDL2C
	 sB98p3Np7ryoAGOOGKK9jtVeiycYA1N8jO7EIS/+kzDEJs5vcpeapDKw2eZ6unKx/4
	 We6dVyABcBom8ZoSlovlR8X9eElJAqG+FTKU5J0NHZQgfecpBHtpuv5um2tNDTwB6d
	 K0J8hjqWDSJFGdXagdpwSvolWDG6KldDwwal0OwXCgJg+Dtxcm6W7SvwHQDC8TegMV
	 eHKuf/xITlezqcB9yz7fRQ6vADI7VF5Tfn/cFtX0ymiU4Wm9LgKwHSzNQS52gWKRzR
	 Yh2FkPpPl13jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF1DC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669899357.31019.15252626522137090654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339a565beb41e3c5c356623055bad2d79fc333fa02272c1d0546c401b77b2241
Date: Thu, 08 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746698993
