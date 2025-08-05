Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C20E15A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754393394; cv=none; b=eoBzNJf3omBKQBt/fdazkXMx1SKLwkmfBKpl+4p835MAkqEQWpMxoM4TrKyk4w1X4CsoYveEJoLK2oZy3G7+Gpt7UVGqUEEy/iwMsnkYk1TYVE6OTeEl3U8xPieADuEk+dVgR8MCZ7CdKJ2AklevlSOohUbuYxt5C9gsB0D97Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754393394; c=relaxed/simple;
	bh=qshpERuJNnIO0HwjXM9YEuNL2X7l37RKp98OQDjoYc0=;
	h=To:Subject:From:Message-Id:Date; b=ffIfTmQ9hkyyz0eyykCNQ2FSFPfXwdS7payhaivep8gYaBUnEXvzYlQ9IXqA3yEXWM2lD/y/BVcp7LIKah+xMDou3rYJ4bcI0MgYLCVZ0lb91RAfYZFO8BnXaqFDHr+9OwTVxucriuwy54mPKs21QcW0WmQs3PflakCL532R1Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9gM4AQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9gM4AQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754393393;
	bh=qshpERuJNnIO0HwjXM9YEuNL2X7l37RKp98OQDjoYc0=;
	h=To:Subject:From:Date:From;
	b=b9gM4AQEE414EQs0gyZeKvhJxTtxVdQqYxLQVIpfxk4BvtZAP+9xwIRcQR2UZQszf
	 XlvJZEEZQdA2+yvuz1tb3lEOeZNZkJ/VAJBnElnK4PZ70ilGicAZByQphMpTQYH6ZL
	 O6KwuqwWH2jbv5kYd0/OHtN2FIwFx4vDx5SSWGnKs67ufYDKMLMmaiOYeNAU8WLwp4
	 KcU1jQeB2v1oSCayNR+wtwNGYM9Lp+XF1KyUR9y4sT5QndCkfNS7N61JxcGjhDMuc3
	 RMtlcGE4fn0MqfmgcybqULB7Wr5bg0J2/gN+KcqEuhZfSQaCMLjujGpv27nEsg0idd
	 +7nkzx0uwM+7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B70C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439339357.16363.16310077364705316524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51af313be6d111a79767d8b7aee13d0785399accf7e12a484067233a1ef3ebc3
Date: Tue, 05 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754393393
