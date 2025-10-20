Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E752F6585
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760956194; cv=none; b=SbEJ0tuMW6aNRgO5cfLFTo0qVlJpFhPqbqE8IPmA2yWy6X2cndmfdtyR33rb88pLKqeCOieycnBO7X2Eo+WIwfoqEeUgBnVR2mvLl4o65Y1P2fi+hJn9RPD7Me4TUK5Nf61orHmEk2gM03jX3ksvEIP89Tw8Ch63HG82JDG3Uq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760956194; c=relaxed/simple;
	bh=uYXOaNkUZKReozMMMsTjV8vI7IJ8mPIgotppxWGDMhE=;
	h=To:Subject:From:Message-Id:Date; b=AAwJ0q2RJroebmaKLyy6Yi6f6qq7D7RBTX5o6/yEstUTaBmeIpTGY5ZBG+XGowg329lOOkOvxcIM09gbvCIRwrRNEEPelh12uc80kQLHEGrphdZSH7hENq+8xsqXJQh/YhDiqGILKyFAQKYipKe2pXaj3uQ9K1OabRY9SWY4t1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5LS8wmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5LS8wmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F8C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760956193;
	bh=uYXOaNkUZKReozMMMsTjV8vI7IJ8mPIgotppxWGDMhE=;
	h=To:Subject:From:Date:From;
	b=F5LS8wmSBnk/yIjgOSgWjnq3HEG7iTtsDVB4Ez/q9/1MroTRHai5FfTtVuWtfUM7S
	 YPpeYMlk9dGbNtpN2cRzQBsd2O4kB9+XU2KgKUAw7kt8e5lEf96WN3UAAhnFpAl9yH
	 RvCnqhRJa9P8sE/0H6rHwGGWvEA5TQKm5k8hw2VNVzyDGH2evSKp66mgGWy3XwtrKP
	 cSAyfwk3KIF2MnmI/GJTMJHL67JdO3WnpDDoIFWdhDkwOHE4rp3/CdiMVU3XA6c2U7
	 Hz63+mcGlziGN7g9iCGIkeHVt13Id9Ns09wTYG1sh5tMAXsy6jWDhXNvsFV9BK4K/L
	 JCHpmaL/3PiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97086CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095619358.24849.6592433192881052776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd8d366aede692a1dbc6334f8e974ae4e859530312540de73479d70b9164dd2
Date: Mon, 20 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760956193
