Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD723FC3
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743866994; cv=none; b=DYslaSf2lniy5tJeKFeOjlkroYTcO7gv2ayveDHk+rmg7HR9ittCKgtlIXd1YBh4jKKM2f565/yhQsjLpll43OXGiVh7dRcaVtWg7/PjYI3MKbuC3EYPL64OVmiY2NWOt3OgFNC4VWM2eB5S7AqyBjcwGDeGTfrf+PSCJPz2qpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743866994; c=relaxed/simple;
	bh=saXSuEV/Vltg5vKICRZBMnf4dahyXzcZyKLDn4gfIKk=;
	h=To:Subject:From:Message-Id:Date; b=rOzx6qD7QwKHNaP7nd0NHnK8iPsVnKBo0OPq15eWyOC2wbpMecd8r69HKfTY2J9Ses/GGI4Ta7AKxpysUAYyFDEg2VdOrvBZqBpE6mF5xfQLg9keVoiuBttnf3ErjJ8mY3MMoZHPFsJF3MZZAbZedyJ1eWpI0Aiu47dGhUPueq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkmHm+Rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkmHm+Rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0A8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743866993;
	bh=saXSuEV/Vltg5vKICRZBMnf4dahyXzcZyKLDn4gfIKk=;
	h=To:Subject:From:Date:From;
	b=HkmHm+Rrulxfr33xT65Vx3nt/NrvVujx2rS8P+pIQDVmh6pz+hhuMXcmizpcDQlp4
	 m3Bancrpuqf2UlpON6vWNTjs8crsYjUNkeGLW/6eAKNwni6F92TunHPwQBy2/XJ9t/
	 7+mc3CYXnjoUbDqnfjinlIgXppTVADloMmYN3cFLohK45IyO/896nFJU6ZrNAvVfQc
	 7cFdrxhAIUew4Y1/+iMXEqlbIIBfm/bW0mIBngKUsOtv5QVEfBeuPytEvylMuf+Hdz
	 Qt4xRCeV6ayZlgs/6gD0ccAjxuNkeYMqQ/8T2iJzYSQIdNq9THwWlsygo7LZLms90m
	 IZELtnV+G0gDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D1BC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386699361.9002.1704088765066693008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0217724bd718d2520e1c0a8384c5da4c02aa6e66fcab0f2f7634c3963a7e8d9d
Date: Sat, 05 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743866993
