Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156717C8B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736996754; cv=none; b=BcQNfgBsuqT4ql943xW56nNvBKSuWem/126jqTaKjR0xlnLucNc06L8B6InvKK/jzQRI05b2pnYZaqa36KRh79AafFrhId7MiDg7UftYwXetmrhKavebwFtiss4r0NhEAmw3h8+hzpW0v8xbDKz9e6SsjpUYNzMzrTR/ilTgUCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736996754; c=relaxed/simple;
	bh=Tgsnz7vytjv//QqrwtKtUHCmSAq7ih0ydNX+ced6oDM=;
	h=To:Subject:From:Message-Id:Date; b=Wf/HQ5GscbUnjRPzgr+KCdWln3HLAhbxyffoXoZhwemTEnJMmER6yhYDRduPZNoNxda2FDQPi+VL3ZgAY+8AJR+hlNXl51AVce18v7CiwhVWfRwyVAuEKQOF0J7VxR2Gniq9cM+SJrxV8cbjkq3VoUeQlMZKqLZJ5kEneI+sXL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/7h6rxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/7h6rxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08BDC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736996753;
	bh=Tgsnz7vytjv//QqrwtKtUHCmSAq7ih0ydNX+ced6oDM=;
	h=To:Subject:From:Date:From;
	b=L/7h6rxjGizqbd23Z1tCmhaO1QJRrK/qUYPlJl+irRiX6IET+TYKelEovmb/bMb1t
	 5N01p0iaBPfjIpHsRPw8j8N6hkSbzIJ3TpOgAWYGeU7CgGoqge4oP+ors9U6EKCvf7
	 GmZXPldHhiBX9MiRKreGZ1n256vc1moeHg7R9SBPOfKW7n7TBtgbIwg6UaFDgtUBZ2
	 Obr9LdIBKF1XmzsJk11L73u7yia1TsXL/c4IHZjkWmBwiak4E7wqQnwjRFx5irs4H9
	 rhQHNBS8AOrnfxJedFNY1eGoq8Ji2SfaIpu0UQwq6rQVQUq6C3PH46IhoLzrr0l833
	 iZqukpbUQEmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C505C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699675363.8553.9470508029612692319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c973b03cddfc457300e4e59a4f024c655d39b61e648e021efc2eaecc2048cc1a
Date: Thu, 16 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736996753
