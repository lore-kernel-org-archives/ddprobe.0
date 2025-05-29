Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CEB2DCBE6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748505594; cv=none; b=S4qjhCzNR9ZTMcE3fE/0crXWXswz4Zls8EZHvOfj/JzfE0tCIoMBlneQPBJelPQNbgsVYMjKH2b47THaRyvOySJ1/NfWnjhQ2xhoxQdkPeT70xJtFHdV1NjPSk3/+h0wWzxz9K3y1lKLR7aNBMMO9AVtoubpHN8UPeua3EFK5T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748505594; c=relaxed/simple;
	bh=jHX8p9ZGmcWAXedPPiIdSd7d9cfH72UyKDSedf0kov8=;
	h=To:Subject:From:Message-Id:Date; b=tvIpE8WH+GetEMaoz68s5DMlL/MCBbMlN7hmG9dW7SXJJ2BgdJ3bjx0JdyyXX9WoCbuqpRla4irNS2uU57bHkAr3j7rM/fOJ2dVR026PzBgnCQAERsWBJaCSEz5WxbepIGgxohB0FBFHm03GD6Ppan+2n62y9irvCupHBvXauc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeKjsQuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeKjsQuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748505593;
	bh=jHX8p9ZGmcWAXedPPiIdSd7d9cfH72UyKDSedf0kov8=;
	h=To:Subject:From:Date:From;
	b=oeKjsQuOK1xAhUQ2orXsGC55FIbwr2+oWy9xnPj2EbmE4M0ZydzQzRv5cvv6bhqni
	 rNNi2nlYnKen4zcCXCEC1cjZQuYTKQNz4/owXf4cxsbPPTw+VLnDcm61Wxdv6gssLp
	 K0w/hQBHqGqptqKg+AOfBjmJIs3tgkzm8xCq7sCzX997yB70Z62vEBusjEo9Z5pZaK
	 8eaESQ8i9DSlu8qQNGqPki5BdWbXrXtqYBFWzf/9rSKgh00qY2tKvLnEqz9TPKzA7U
	 VEc833KgbnorcajB83aUG13sBjVDJuD9xp4RYOFUB8Pzqqyla94OaIZ2QpqkawOrzO
	 kIdg2yAb4LBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8E6C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850559357.9484.13113210122960867455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d385abf516a4ecf9c3c5636eb9d04989e16f17fe4e49b38929a67c1abdd11924
Date: Thu, 29 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748505593
