Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1556B2D23A6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762576794; cv=none; b=fRnKC6wHEavvAYu+o35TN/SCZ2Hx8R0TW7gxWOXa+zzYyGvmlrn+UYz+MlfB5tQTxYN00orbMMO69mjEsG5xU/Hw9kz/2fkUVJRDisnBhEmJDgIAaC/vyEhXM95fWUFCff8USdEiTQXc9hmg7wZsGU1xSkliUOgGn3ul3yMo+Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762576794; c=relaxed/simple;
	bh=lhqKVzT2tczht8d14R3jXQK3XFGxWnSMpXjRwVvG22A=;
	h=To:Subject:From:Message-Id:Date; b=kiHfLw0OSfZMg0UeycFUTAUtpFoV2lG/5IWrDzEJ78ID2grK8d1zeW7CrHTIs0SEYGm+bBJojGCqpUj9nNGd5doY4BMwtpBJfMev2xKVjXYPd8D/cTshs0YDNWIy2CvoCFoNd4vMNYk2o0I7myBiqSALlBRKhXJooiQTalTbkrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVN9zcst; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVN9zcst"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3DBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762576793;
	bh=lhqKVzT2tczht8d14R3jXQK3XFGxWnSMpXjRwVvG22A=;
	h=To:Subject:From:Date:From;
	b=bVN9zcstsyQUNVQ6CtnwS8DKoC8h0xstlJYIYkNPebcR0DWffdXCgSxwVQneJA9fD
	 VAdqCXzp6TybQc/FcWJFgFeJJZLeN5j22vMxtiISpFsVVTOkRfFGI5ecxI5DnxbyV2
	 iOQwG9rKJthKZQiearyC5I3OwIn/j+nh5LBxfb04rMs2BIhEm50XUumubKpCBkEinb
	 87UBc6PNfz3Bh+AOn3DcjFt6KL1hewg9s9X2Vho6Cm0h/6L754OppDSKwCOCt7WjYW
	 XTmduBs+YM3v1E6U21CniuYcKL0I500sInsvbrmldaiRDV8HyaRtNMHgMNWuEVPbJb
	 3CbvGJGXkpMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E645CCFA05
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257679363.28768.17331193180882971219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2daf7864ef96bede753940c11c421ff2d61262b9182bf7449b81158eb886f38e
Date: Sat, 08 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762576793
