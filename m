Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B14723774
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750567194; cv=none; b=DAd1v8RarSz3urQcI/7XD8Jiz28Cvbe6Ie3Y1q3kivONJ3XrKIiDOw2ag6D0eU1E3T59UHSIEJxTU/hNzZiC5A8aUhozQVVC3t+TlqjaOthzr7e4Paa9y0RLIC7ao8xNQjwSypArgS6suBKzwqtOMt7Hx7HyuSCfDb4WCePw8Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750567194; c=relaxed/simple;
	bh=Jy5YnbrmvjwNRvtz+WV9ZQIU8mStrzAg8f9fYJrVFuY=;
	h=To:Subject:From:Message-Id:Date; b=XL50HnTXW1SlWDCjNNHh9KFsDrPZh+KGklDsdLWHFiv8L245egd8Ms+AY7ez3Dq80lFyI/7CT3/MkcbpUgX3tMnvmlmb35Q9cukNy/IZRYSTgHQnvvbfmm6BYZVhugsXbp4c4+LJ67AO+F0kxpJ2XqdyOMR4niRKqfuuew3g2Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXvC5CBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXvC5CBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750567193;
	bh=Jy5YnbrmvjwNRvtz+WV9ZQIU8mStrzAg8f9fYJrVFuY=;
	h=To:Subject:From:Date:From;
	b=aXvC5CBQBnf9xHnsObZZmEe3b3bm5YLO8HBg21nEL9l0SAYqxR9xiejBIPL8WWHm5
	 cwiqJ8iuQ+2KcD3etWmncw/Ft4e3Kd07jeS4GVI4wHxl9qtFOr9aayJYxx/9IDYgMG
	 cXJCj+wopx+cRmR4XwgfNfhLETNTzetfnaepcUqqEjFeYKHuWXZteviOOxiJSdMm++
	 0PV1+VccvPeQH4iJqkg+0cPRuRi8u963+Gs7GpxbAIoi/4amVidd+dCSXNIVulvUwS
	 LsW11Bu8MiXAxV3/6v35EPXNQ3+/RKEY3XriWfzMxW6YShGxxYLBxgaX3vF782htha
	 iGagSu2+ygC6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A2C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056719358.1833.15928031992629824249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37c2eee786e19badd8f2e641258dc29ea15f99d2fd30fe1f4e8ee396b3b0a0d
Date: Sun, 22 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750567193
