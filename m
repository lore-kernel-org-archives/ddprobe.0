Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2183040097F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784895034; cv=none; b=gVFQj7n1ZXeZMsup4BI6zKF5tJ0cd7g84ePSSyi0hx/P1KWmA0t62at4/RMnQmh/CzRX7+UtmAWLaiXdafPahoHxJvvuZA8PVsZMG+u7dCp3AYZ5v38mK92ajPmkZ6KAwr/Hdwg3jghtcF1eizhm4cQrZG+gctrHTZq4FxE9s+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784895034; c=relaxed/simple;
	bh=U/ZcEoaB6H6jIL16OrMQ8eN8zPq8UKN+zrWH9g8DL+E=;
	h=To:Subject:From:Message-Id:Date; b=K7dnWOxYEt5cELsfCwnJ32vHw/4SCUEVVKOElD70RCszvXe1L5tyi8EZdM2MEJk5Sbn/e/nK7r2B5wlSlOkKGGtIF94PgduodCR+OdRhLau2pkW6W4xaii1TK+32t65nMoDk+ogDwPY7ZYlfCphBDPfJIxUBBez84zXPfrBBLBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iC64dPgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iC64dPgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5C9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784895033;
	bh=U/ZcEoaB6H6jIL16OrMQ8eN8zPq8UKN+zrWH9g8DL+E=;
	h=To:Subject:From:Date:From;
	b=iC64dPgyra/4nf5Z/l46bFc2AdxLSSwkeaBgOY+nLA24W2rN0HVwEa486CzL/zvYp
	 TjUj65KwVj7Svi781C2Gc0G4wG6Rzjt0Mb4rICWor+xqPSU+A8R7MUmgDB7i57p/rr
	 Fndb4NJNVotZjTKoUt5fAQKGkAErCS16R3Y5W6N0rYtGzjpNnxR/6y1QIEBzXzatvx
	 A7e5OvZyvsZl8+UDMMFwqhXuG5meNHBR3Bmh7xm4d9WqauOvUFshLF2jAqCJqqFDQa
	 ordu7YNeI6CRaQGnKzY9ZBPSfXyGe1MXkHRtVlgQPzo+8WkOANanwOE5IibLAPDjju
	 /1N5cpPrqMSiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F0BC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489503368.9489.6618343466416278903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a428f659579b7eeee53548a5d7c70d2bf3e86f1b6ab2203a28aa08effeee5512
Date: Fri, 24 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784895033
