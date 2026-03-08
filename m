Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB21526C3BD
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772981693; cv=none; b=Nhw8oeZY/eKiKlgyzN7cQ8vt2jDQDK7fWPofX19prQ+EihgZsaR2/tXs+d0pkcVGrv/iJIHfpOpmHSEpI/1rNNz0/nRdOCFIWItaI63RnpSSsmP/Glmc63nmyRbwfbxbxj3XUJMhS+Jwdt84wZIJT+uD+rnMQLytZNIrkXU7Bm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772981693; c=relaxed/simple;
	bh=FtkTU9vPspap5WygIsm6C3wlfpIYmsrCJFYT0JAZQDs=;
	h=To:Subject:From:Message-Id:Date; b=fz5ISz7/eBck6J65f7d2gk4lXJVH/omCriipERD2B2kJXN58DQW08+MQkNhr1Gt9UPS/e2iZLD35wkOqxg3zZRdzoCjqOBomFmcFVsx6DWgaHjMaYjI2sFMlAbI4sA/y02rTTGtV7VHAixh2bUhK661p++XOm+jpRW4TtzAjEwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eW+0ICFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eW+0ICFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2AEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772981693;
	bh=FtkTU9vPspap5WygIsm6C3wlfpIYmsrCJFYT0JAZQDs=;
	h=To:Subject:From:Date:From;
	b=eW+0ICFlQoNqxoMzCrwaFg8V4OGiNFobpwxZYwNvwhQZLDu425CWCafv8RJTJIOGS
	 w3RG9t2ipeSaJGodOAiep2RuQEtgD7/xiJmMuVXEFY43yUFQapCKyh3HGgLiB0Y27+
	 qLfCTR778RmYcyA0P/cwNcrp0MsDR+mXOJ6O88cQADQjC5o7jGEjXPa7O74lpZtTW+
	 dkAwIR8k6IYxMXhyYAaSO1IrU9QWmfTznDvdm6RL8LgfGSVuDItEj3P/o6Ras+RzOb
	 8LIG5fsHmOVZBS2LfYCoJAsFVU5zQaNL78jnQai+b8223BjFBAj7aXln8XvWCIdosU
	 Jh/UCFff3sIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F783EA8520
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298169357.10465.17505950737794691645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4653d81f3936fea317efa483eddc09a91eca44333638aa1aa31a1d7ec440e891
Date: Sun, 08 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772981693
