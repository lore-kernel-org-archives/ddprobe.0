Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138AD200D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712391497; cv=none; b=fTf5X248jCWXKPjQKa7XQd8c8ULiYldS+6mRGPiHjvP1eBlMyUPm8Cp25xuledUbH+0C1m5B2o/kVj0TnAgdL8ycx6JEAg4EvuzxiY/f6EzGhurJfCjYIp21LgUWzqKregXvALKw+F6oehBDIstMwD5zruPGXG/wkJC8d9sjtr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712391497; c=relaxed/simple;
	bh=3ncR0uGK6K+MYX/6MWwgINPjeWXAu1p9Fy6hu82G1QQ=;
	h=To:Subject:From:Message-Id:Date; b=Xylr7by9P2UUJILygUZv++t7LlIoSSeYQakAbOipHkxUUfE49W3+Z1NImZQubzNtOxxVfdc+bm7iKCVjsUA1nUZ4o4kPpnNxI8eHkH5lB9fatNry51PknuqU3VjrDpoomrQV0DFLCuyovv7+rDCuPRSxt5nqRgcJ5JouKJx1Y/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHj0dtM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHj0dtM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE42C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712391496;
	bh=3ncR0uGK6K+MYX/6MWwgINPjeWXAu1p9Fy6hu82G1QQ=;
	h=To:Subject:From:Date:From;
	b=rHj0dtM7bJRpPRx257EMctxwAxmWXdgj4jIYXkZythZaZdRTJJddO1DBcAOntywbg
	 1cJIcOTO0O4Lf8GUfyOW6UycH0jJRR9AyFhtmweA5cYAk9DfPcxy9HRq4E/cThfVDW
	 ZoZLB3HUk8krtxCOV6l6inDCnKEN1IOnqhBn+mxbh3N1cCVYfci3my8n7fdofj451B
	 cL+qKfUwWYIXpdQ2K16g4fGu0cTilBE/+8qPYg5hsDzWlnxVehkT1kAtW9u/iI9bg1
	 CX0VzXabGErJo/Wewv4ENRII3V8qpmwX4L86vGmf+2RIlJOAXdbZ4Lnp3o8tha9q7Z
	 TCYDCwa+t4xig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F11FC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171239149643.7204.2325253704247510932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05372760cce85691781b7c4aaf8efc2c0d323c9064a321e7141dec890f6eb45
Date: Sat, 06 Apr 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712391496
