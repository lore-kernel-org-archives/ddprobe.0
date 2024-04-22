Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E9145FEC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713782423; cv=none; b=IaFctBbsCqVwmBIdCjhXpItVjp5vsF2bKzXrTptQXW3OLjq4aYWBofzX9twB9QR+chdtpesPzfuCDycPQK3kb0VHFwO4YVzJbLu4x3OlC5pOvu+qZmjfcpOu3L982QWWzpH0US96resD90jvFKOxc3HxYuMSbTo7zNnjcwLBAo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713782423; c=relaxed/simple;
	bh=nEUOK1Y2CwvE0krxJthQV7eCJJytkAS1KxFVaBe63Dc=;
	h=To:Subject:From:Message-Id:Date; b=ocEYt3A0lMmWhuzj7YpNbJyjo61PEmUHsC1IMdudPJHsTnQufahtSv2GkpcoBom7CCM3OP2ffVczxVP6MRjXYQaq7hZZByJSrqOjp2HQo9vY5E7RNps10RoPuVnB4vMqGbYaySiaNWW0G/sYIT+kE/6uxoUAwyqW/2lMPyUmjkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ri8yURoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ri8yURoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC2AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713782422;
	bh=nEUOK1Y2CwvE0krxJthQV7eCJJytkAS1KxFVaBe63Dc=;
	h=To:Subject:From:Date:From;
	b=ri8yURocjr32B8sfN8bBZAJB0kErMmOuuCrimqns2ZCpwVTkDd9Ym1OV3evV7NIVY
	 NM7l+k02R7ZfD0SLmbQSfUzPxI79sRiCG4xtpHWJ2tx1Rx9d2x+we4N9hQnRaCKsfu
	 ZxiBOdOZoHobAxgVWFKQy7SqPoHvGRrTZyZRWPxtcO+CkXiOKmMX5j7VvNtwrtuml2
	 8Zp7DGeRG/LzZy2P8e4JR3a5eO6c/4NAZ9RQ3l9iWP2GtkIkQgN2QmI/awFIh0nLul
	 YPHw3v59zxPSGI/VXrXBt1GpY4ks7RmB/hyhK73mXKda9dKsczXXsjEKQ7PZOTCOGn
	 keGL/55FfsAXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BC1C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378242280.21030.4652715360126202190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcfcda8bc7d800b3a62a98b60a0287790739399fa7f29e19340d3ae828f00f0
Date: Mon, 22 Apr 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713782422
