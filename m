Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2471F941
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745780994; cv=none; b=YoOsm2oUS0zMMep944t1t2CaVZhlk7vAsruhzHscSBKLg/znsqJVWDl43JnsOmNefk2C5sSV+XWAOiM2Nzg3xkp6XOw+XISEeflQNiwdKOxPvBzkf1BGYApxnJcAzEnR7bbr79m9AB2ydQ5GjyZvJnL+k9oOi9giDwobPOfwRaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745780994; c=relaxed/simple;
	bh=UkY/KvBgzqfBylEWl+A85RzHNZxFyRb1qzPr7n1cnxg=;
	h=To:Subject:From:Message-Id:Date; b=Nr6fvg1pzmroKSddBMu6iiBoekBKi2oRuIgL+1P2cvYaIwNlways0iheQ1c4+Ncn5Ez1DJoGuFkiNzDqhe/ML8nQvIMtINsfOv3EZ8JmSsRoCsyCUCZdfNlJ1xKsMqESQgrhDvjdehAMkGDQhRnDQaWbgfa3DM82BDccIhwSQp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAQ6vEPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAQ6vEPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1225C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745780993;
	bh=UkY/KvBgzqfBylEWl+A85RzHNZxFyRb1qzPr7n1cnxg=;
	h=To:Subject:From:Date:From;
	b=eAQ6vEPSd2+r+Pk0dJOhzQ/+vuemeCxhGlz1cPdR+0C790hLVpP0YnoTsJzrJ97qx
	 aAHi+6nZX87ZpD33q19AxrQ4kx3I5L+vvgHodVca31jG0DMF7/PdTS7nixOMGYkKvR
	 ms0e/o1UMmj5wQWvtvdPf7DrJvl/i8CFdvgtVuHLqBytSw69pOSaLjwQQIg3dS7wRt
	 5p1cy5r7N7Sm3JsU+9qPwp+g9mJDEbI4AWdJsZNzRNBuUSyhGICyuJSHZgjQS0+E78
	 LUnbJDPlLIt5T/hM2XQQPBDID7DIsnhUx1sL6WCS+hiydCA3qX6+0j5InSxZwmOeCk
	 qeOQgdFNrS2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6FC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578099357.17063.8914487783885930577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151c533c3fb913157afd3a4836003eca2fd1c7b6ab0c3348153c648e9fedeed0
Date: Sun, 27 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745780993
