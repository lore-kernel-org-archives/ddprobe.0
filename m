Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072A184
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752451794; cv=none; b=PaoXsCPNTwRPMvHCSZBNrNVZWhdIlm+DfSTQQDHNxLqrjdYpqTJWLueu9iEafh+PpcICd7gMc4nWchuPytEGfGlZEOi+uwIQj8IXB5wu1LxVpyDr3Qll98gQbZ7wOsDY09zkKAZGU5NHNZpUWVh3MvCEi56eABHkc5Hh6qwcV5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752451794; c=relaxed/simple;
	bh=wBEx+Ai2IBJGwTaB9uNGNNfCpQkw9WcqgGG8glGezcI=;
	h=To:Subject:From:Message-Id:Date; b=TcI15i6Ig3GEdIzjLyWZKJcuDLW4ljW1gWO4W/YUuc86o8kpFu3pWGOXOh2g7hGKo5Ye79GrAzu2qD+jc/DRe95hoclIe+AZhTi8PbfSzUou7cNgIbIuFr/Zh7kTPbp8eMowwoivEdnSVK78UxS5ELxHk9UXsvzccX2Yh0dd5lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqqgWZs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqqgWZs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3710C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752451793;
	bh=wBEx+Ai2IBJGwTaB9uNGNNfCpQkw9WcqgGG8glGezcI=;
	h=To:Subject:From:Date:From;
	b=FqqgWZs9GONtQz1NdaFLeeJ/c/GFxMSfQGeewqGXrg9DsuXlXheYf5vRIAfi7tSla
	 bIxWqmVniuVFqGJpvS4lZa1e6KOOo8/ycWBqgGE1kJ7ZM820Oxkk39SVGxtowLmnR7
	 j0npAxfuKk7W1ozyVgr4KwJO0lCHZMcwd49Jen5vFEpVrBILRHG211ReMQ2iTXDiAY
	 ojLrVJmnTfUOBh3AwJITNHFmoMMJUDQhUnkEYqsW9mC+qitr1Akur5ffpMzAevyyPg
	 VxwOh2fcirJ1RKD681ojpWtJ8A8Si1BSOgXbTcDPP32BnKi28ych2f6Qr5gBaujA13
	 /+FIkQkhX1aMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92184C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245179357.10590.3060191159410435995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebc3a78e95f70500fa0bfb6dc832446fab9bf5864972be039d2c51ff95cdbbb
Date: Mon, 14 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752451793
