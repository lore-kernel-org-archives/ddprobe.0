Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B12AE6F
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747706394; cv=none; b=uJJ2A8AA8ENa5g4JD/7y0r2UlEzNo6aMZOjSsX84ScMepu+iZglIQvbs4X6URwBaGm8G5JJnfWoOCj0vVkw7E9Ort373WjEt39wcXciJoPXhN4kzssuv9WrFvY3iDKJl/ZYdJ22k8Vnxmtlr6g0Us6E5uiO7em2yzi/yVTx2PNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747706394; c=relaxed/simple;
	bh=Y2ODbPg1d/QmqrwWCP9rBYp49YtWicdFsUdTmcZ9+m0=;
	h=To:Subject:From:Message-Id:Date; b=dMSlTF92m0eHrCYV8xHI5/wzBp+eZI9DXEbV1Tc58uA9hPAIXkDV16Y0KbdXk7YR9ifJxvmShrt3l5cMe8CA3yocAL6ln3zhkyVvqHGme9uysJJfXueMWggD1tZliLhClBze6/yuGAU8Ows6PnjTN9zWYV49w4wOTvc4hsNAgF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXl1MGuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXl1MGuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747706393;
	bh=Y2ODbPg1d/QmqrwWCP9rBYp49YtWicdFsUdTmcZ9+m0=;
	h=To:Subject:From:Date:From;
	b=eXl1MGuLcPy9AjsgzhRC+Uu/jtImTWPOrr8AXG9pQc7IZDoFnjwTy8e0jQnfe6+JY
	 gKf0dtN/cUbVhUUR5KXGVsyDjsII2RMQ3MxZGRjUNJt5iIAp1zroyR6g7e/wzxfolU
	 59bjixnnNs32p9cSccCclZ36XrG4zpAFiMMLOuECyhueRuJqNubJE48EPRaspCxc6S
	 /GRGY93Kmd/232mwJHAbBBevkJxbhig3fYEUip9s3ByZCNdPvNJJPN6VGCqjrV9yGu
	 GEJMhATPbxMkr8AYsx+e51tdPaBKmsKRsXvNuhPaeVZcQvMiXMgAsx87hZxWXyiqHR
	 mLEAyrSl7+aSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DDC54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770639357.28024.14459761120133533577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e88ac2c9bc46010838d09ac8dc5e371130359da903cbd2bbd21aece8499cb8
Date: Tue, 20 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747706393
