Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E119BBA
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730755554; cv=none; b=S9s5bXv3vD7KySDN1nXIpBXQHdvjDigVpJweEHQ5qrGYVXh/B0OvZxdjUxLPuddWWvUuPHiXE1/DJUk5bk3NoX8kCLPfaPSkAsuk0mejZ6HrxGeeozLrhUF/QEcyism2MJD28eYHiG76dW+DpYZsSwdLl0gv5wiNq8mVzgQ8PC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730755554; c=relaxed/simple;
	bh=7bbKJ3TgXAC61vz+Ro/ROSnc4mpCQnjhfl+E2xbZ5SY=;
	h=To:Subject:From:Message-Id:Date; b=H9rXPl+ONUZuELUWELUZjxrTudMIQVVsr5nLcg0i7xVbq1bJc01jotHtpOvn366dsiL38G7v5gxbHoPOhzUZpK0ASco6KwoMa2iYqUH5A5ejwzCjyYpQYIYGifr8TxCyWHnBurxPyg8w8ikMVth1YfziQ1GtOQkaLwmO/JpLbT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hskh+WD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hskh+WD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C31C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730755553;
	bh=7bbKJ3TgXAC61vz+Ro/ROSnc4mpCQnjhfl+E2xbZ5SY=;
	h=To:Subject:From:Date:From;
	b=hskh+WD3tlExrkA5BOeUPnOSgct/8ovfLE8w3u+IIadoUgSylRI1ogT2XKG/Vs41h
	 Nzi8rUMyPPaPFbMJNAZOnDxhkH7DDrnethBjElobWO2l48hjjC01fQxeAqLQPZQd6G
	 GmDEPAteY0qRzV/G7fXAxX409ZsHIgG5gjmfoK0gIiAkpN1GoOPWVtoKPcBigsPpIk
	 OI9Ji15+/5kI/oXlLWXZYtB8tWTOYWrbgFBGLBWka0IIuhJlRhZ7/MJILUwwNb8S/P
	 k7yQS9hj9c49inIHJdzESWFVbTRdW6dxptlhprzYSGD++QGU1H1M5rxVfH6KaJ/woy
	 JJ+HP57G+nlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C14D1BDF2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173075555360.4431.5069557371256940186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8418185e3db0c30ee58762dd20f104bb14f096d58866e7481b0d751309dae808
Date: Mon, 04 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730755553
