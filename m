Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD601C6B4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747451396; cv=none; b=S0b5tsouUlQWWUpI1gdGCPDBr0NKnU7TBeHNASJ64hrIjc5oo2mdmBBlTtq2gM8bIU7UtZbUBC9xMjcsm10DBi6sPJdd6Eb+mTV++IKRBhQ7W3rPjkN1n4gpaVMqlsmrMjvjTgxIobn5Uhp+xZtVjxclpK2bomYp52hvdRC4Ras=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747451396; c=relaxed/simple;
	bh=o++ft+dVC7DN866ipC7oHfrT7r7JvV3wZBlKn2IJxoY=;
	h=To:Subject:From:Message-Id:Date; b=TDau3KeFfGVWEKvGb0AG8UbSLfyIQE/9J8yDu84InWcU3eNTwnUMZq0WrNZDctVWv9JBYRbwQKbpWmbhcIe7ShDXgj+FmldhawSHS3n/Jl6uWn+xmda+pMbB4Z5ZE9cBsifEZyVaJG+weHOntuDEB8M90esnCwP3M+uT/8V4E58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnCt3bjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnCt3bjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A4EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747451393;
	bh=o++ft+dVC7DN866ipC7oHfrT7r7JvV3wZBlKn2IJxoY=;
	h=To:Subject:From:Date:From;
	b=XnCt3bjKh6Kwg+ooHiAwuELIlwFOCJkLJiIlXsGgsnY5+LI1ysIIENyyger38mRSD
	 HK1UBczvoTSCo1O/l+7hPaGBPozTBPIdcAQClH/4TidpyarVzG+18//aLfQtOOzN/1
	 DT9RIOXXz6qi40c3KxlIjRxwXTif9F3NborbDpt24qUMFrFPmIlWeRu1YiC5wBZZz8
	 vzi0s0SDEu+N3XNRXNZ7covykLPlW3jhSNfbJzvY85UPpJZaY74HJDx83zs1dy9XSU
	 DL+dRGg8K0kMjBtU1uYOVr9RY0XBvhPiIdWjXJvcNREO23q9YTjwjIyh1TlPhtJ5aS
	 dSQni+aNv9KHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524BC3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745139357.17674.12063368310530817605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61cdd5cd4e5a79aeb6ea38f0a36a72eb0f62ff9709e9f5c5056ded66ba19473c
Date: Sat, 17 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747451393
