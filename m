Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585391CD2C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726919154; cv=none; b=HVK3IAhxuPGRjhEiojh+kpYeU1CX2ffx3jy2ud1VirqhIaYMurJH+N49yw23tR0gO0sVATuGFRDbV+A3+iZuIBNaXtjoxYLlhsKXi2NFkYm74id+ktOL1Z7c/LiNpjirQDkPC3zjZypaZRSUdJRZP/JFj7G4KAsV5t2WSBBnuuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726919154; c=relaxed/simple;
	bh=yV+lTIc7tPlrHyx7r41VhutLX5BMEqOFbcr7740cIn0=;
	h=To:Subject:From:Message-Id:Date; b=V9KjvdZK0heDUtFExdzh4ZONOZaq1U8cIQQUhsRyjaufAzf9NmQDszqZxYhjP/wjZtLahvqV6+yT6TrTG8x/EX2Frp+HCzerGdIJYwRxsAMNEdzPLDNRgNVxYBbiCC+/1b9r2PS083ym0NmTM2swATArJzFb/HDjxIXz9Rek5PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmFqC82f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmFqC82f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA84C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726919153;
	bh=yV+lTIc7tPlrHyx7r41VhutLX5BMEqOFbcr7740cIn0=;
	h=To:Subject:From:Date:From;
	b=pmFqC82fmL1msGqBa1/CHj2qqpUp6WCcOyC0cN6i9X4OXhBY9IWs+OWGx1HN8KEOb
	 8w3ZliREeO1NrWeO/0uVT2BxI463rMy2F2i5Gq9J8+gqFtTXNiA+y/c7w/lkeilzL9
	 EjaHwyV0pthwrph2eBWNuhnQ2fkzXuLpV8rhabNlU+ui3TQJN3MqTxpLRjOxZ4PFhg
	 7FqptfgrJWPEP5xBRV0tg8ZxKP4H2ZtJ6SJ6Mu2AV4MH87j4YBGKGcJ7nzj3QQOb5n
	 e/kgpL6DAeiROs6ErCcqf1LwmyrbvyZ7ggHbXJJ0CF0sNySYS7gudV19CPRjKfWK38
	 1p6pmGv+bZufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B89CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691915362.17430.5350287446369958056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9adeeae91933c4ad4b408c6e95a05201d1fe430855baea9aabe31f44250a74e7
Date: Sat, 21 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726919153
