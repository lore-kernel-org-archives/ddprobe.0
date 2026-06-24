Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC72494F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782264394; cv=none; b=qqCqKGvAdRkuWcZNA//wCnQ88ULJ0FcN1IcHvGhHDpsKo+BmWOM6VSxpSGXLpP3emtu3+ReWMc5Y8gGKkqZv67HU3nEWuSN/NS1CkET30f/6cPnK/v1npYouP05qMCUFp/taW7LIuYf82m+Aigz1T+ZIeItAeZNP/M7JKguh7EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782264394; c=relaxed/simple;
	bh=bAHfYT3nCGmrSWCujLa+W4YDwJdN2Ph4mp3Z5JXb8Cg=;
	h=To:Subject:From:Message-Id:Date; b=V7KrBdyY+k7qs8NxkVQB5Wh/Dtq4ryEggfyORnUZ/ySmCLqo/eUL4r/nhEkQU/V11yz2elX4hXnRp7izgFap+4lr74/YRKy7aOXQ1F1kTjH9Pbml3hmecogdtuhQWisilARQ/rU5jCTnREp2EcWQDyghF2HJstq3zbaMS7T+Xys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXyVAl3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXyVAl3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94D8C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782264393;
	bh=bAHfYT3nCGmrSWCujLa+W4YDwJdN2Ph4mp3Z5JXb8Cg=;
	h=To:Subject:From:Date:From;
	b=SXyVAl3vBH1LMwDwO9sZ93ciCkz4AKcVvwC4+N4Wcx14JkMTDB5BV3hPbnwrbiRW+
	 WTwEj/Ss27B3Xem+kJTnI12a6ZEZ7qDvIDzwJpWjKRpXiip+v36YU0EhmjYS4Y6jFc
	 seeolm1+jROBIZw5FPz7TcEGyhJBk0VqEpdGMFAMVcT1psNlzowzFPpvwgRxpAt1EO
	 Oy7wVt4QICcZcRRdIoxtcSG6SyHrwtVlKrd0APT5qhA63bENaQrflaqNJQnMFbxRjT
	 ZK+xVtOsvWHd3SU9Y8QSJlKG9l/OUTtm84fWkZ7t+IwXbHq4yuVBxblrA3O0CK0uWu
	 Va/Wr8gjvQ1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF49CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226439369.5377.3503745820596643068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81d2636f7b0036f5851f661801a3047b86d74cb8c71839e88335573e28a196c
Date: Wed, 24 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782264393
