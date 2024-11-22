Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2550617BB1E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732277754; cv=none; b=YzS9JaiRpgodPanGDQWkKbW/3hR3VylhYYhHYjTZ31waXPWwLFLhzyqNMsTO/q/ByQXaqItD5LdyjvJYV0WKUliJK6QzvPcgFKfqhhL0f047rLQ7bR2YKZLnUw28Gs7iLggT31IxPNjBD0jJNC90ESS0Hce5yw00dSJ4fRDBMG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732277754; c=relaxed/simple;
	bh=y6bi3k0AAGxOKXvMWXw/iG2eFAwKn9vFUCTGzQoe5RQ=;
	h=To:Subject:From:Message-Id:Date; b=lV/m73R4Z+eaeStzqNmpDYRJqtu82VS5Yz5lAqpYFsHEKV4xSruYAa+d7bb8N3Fu6AXym5WtYo17XVMx7dVu3zL8MFOdCWLITBsdYeTfXj6DB6o63CnmG0yHqm0SkfudoI0foNpsLZbCCl5dWf2gTl5pgDLUu0gYuB7LUtxuVAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+ixfLI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+ixfLI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDDCC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732277753;
	bh=y6bi3k0AAGxOKXvMWXw/iG2eFAwKn9vFUCTGzQoe5RQ=;
	h=To:Subject:From:Date:From;
	b=i+ixfLI+9Q1UIKJzsEeJq/uK/JnuBpmeHmyHb7Mh17eYb+/1A4JZPrBGot/fY5JdH
	 LgEeoAPrGtLCaEL6H4hoJfgUPBc00bM0P738BW2YQmq2cPna/QfeNbF5Nakx45lk1Y
	 ILmDvHA0HzzytVXoCvC6oY7cv5NwTw08DjNHHX82v56Ky0v4wzAmDCRILxSSR/h2sv
	 bqoWhbGM98tB+C+cD7XuBsMXL3hMVS+FfM3Us/MqwqWtzXbcRMRA5RcmOUFs7tMAX4
	 LaFVqLSnM9AGtoYBiJdhlgCtBqGoQJ8kjTU3OX9+ETfXgnyGj6zDGPkeQvsUY1w9oq
	 s6RGVI+E4ZjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99052D75E32
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227775360.31349.3278668113232319364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95d07a5e3a319ba850fd27d0d0206a867d37f4100bd1bfc0038196678715d777
Date: Fri, 22 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732277753
