Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF2747F
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748477395; cv=none; b=Y6WrWBRMILkA8LLXRLtOA4BWrFBxDCRX8fIUuO12T/LciT97YfYRAqdFE49IjZC4LazXno0xzwTT11cWM1IEvE8irtP+uOPQyKG07R/tNb2mi1DZYM1h+wTEorsfIHBk922jDsxUsqKNfBir6WAv5KUgK1ZmsjkYv47lF9j4vfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748477395; c=relaxed/simple;
	bh=UPSsrqvtwMKyOVrFLbhj4hBlmnAt7H3ZJctNdWsqyqs=;
	h=To:Subject:From:Message-Id:Date; b=c6HHU88JZlYi9N5LKN+cPA93kBGA3/aeRcP1VXpvpg6KDyUsNwTRGZOVpJ77nn2dX+uh3LQML3ONVOOqjQr7n1No+3B9jPlzUQvTaRtdpFdro3hE39yxkmjT+8dk31eQmjn5Q7p2isWAHHh4ERViBzcNKy3qf2P/D7NrV1LnqAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV5Xu9yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV5Xu9yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA42C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748477393;
	bh=UPSsrqvtwMKyOVrFLbhj4hBlmnAt7H3ZJctNdWsqyqs=;
	h=To:Subject:From:Date:From;
	b=YV5Xu9ykOJtPidp3bdsZqz0WD/zXbIpbp1qxY9jIckErNSU7wDLO1qCENSN+gjgj1
	 c9J7HoqV7sjPJfbgw40Jmju2wS8HmorUOmIi6vOFnq7bqd4OtsU3LgcbbjBBIgoX0m
	 styLIYidw3VzBWmdYwMwHrnytXcZ+YwnjjtHpPOdY/WuP4kn9bWHG39738z+ABmdqs
	 sJKspMOMmvou7peD7/Wcf8PMnJJQ91GldNujH6GbSdnmWoG7kcK8z8d7rUimhMT6cN
	 SiIMurfXjw3yTeQGfOmX6QN528XJePKgOpOdmI9yUV6mfqpj4NAby5bt9HSR363bhx
	 NIPScSH4aZOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB03C3ABB2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847739357.902.12300713613537350177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4064dbb5045244c97e0447d1058e2b473b5314c812cfd9853f0a17664d96d061
Date: Thu, 29 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748477393
