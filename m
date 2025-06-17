Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228B42CCC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750180194; cv=none; b=X5IuUrBUrjcvgRpAlFrq3QIwMcLeai82GkQ9VZR67ZBnnDUoW/KpLHeyyaev6gY4aQNcXPbv9qeXDQOarhZ99jrXxeOwe9OxRyy4UDMCtd2aRi2TBOlW8XGYVEqnNG+tovSRrhBbkYDXYJDj7m0Tx6r0rdj5xqY3oBJjgrvbaos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750180194; c=relaxed/simple;
	bh=PD88YmNjOzaDmhIHGP1oI+aokThsvr/1X49zfZ64MEg=;
	h=To:Subject:From:Message-Id:Date; b=fop6ZoUVTstyGzqllIfn1vwA0JfnQy+vgkJiG3mnyQ6SqvzivB1Kpz+AiGni+B/5JEIApoaC6LCis+OwCYs8lsE2MGOs0xZ184EaI7vdIhzcd+Dsxq3hbDBMcqowGsL45y2GYtYzR8dVbMeNAOwRSnVHtaS1qA/5Ao1nNTKqsRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnHUP7o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnHUP7o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C69C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750180193;
	bh=PD88YmNjOzaDmhIHGP1oI+aokThsvr/1X49zfZ64MEg=;
	h=To:Subject:From:Date:From;
	b=PnHUP7o2V3rRw7EqNU5zQ5Oh8gclEJ2NY5Rba6KJbSUXlP+t+GR8I/5TTXvzto3Wx
	 C1rGG2W51L4nb4eznz/PD5oIHZxcd2AUtDzOmaiFPdKkdvNoPdqDpg8ZvT6L/ExPiP
	 lUr4WHl/z0dQU/YhwUZOgvENv9i7Rn/NNy24zE9tbKTK1Oe2/mwFXR7M7ZneYg4Si0
	 Wx0u+dsJrBJrEoEe0ciwlnZgCMWL/VYi8IPIuswYtK7JS/cxhX6o4EHVVDNCiqDSBm
	 J0OgVrCDXrIzDxUfjU6I7l/qOlMDosfWqGHgHOfAwW7lzgTyXQrPGBE7kXO8tW/SwW
	 MIahBcbsdmzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901CCC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018019358.31629.5972202553790055509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33db12fa86ffca186cc5d0d87d707bc0cbfb066ee7d1b6c51c3426f8cbc3262
Date: Tue, 17 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750180193
