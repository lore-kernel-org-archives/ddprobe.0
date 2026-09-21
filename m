Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6971366042
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789967434; cv=none; b=G6eokqvew1wqAdRD5XUzG9lKFlmRW41Wq/qYbU9Q0EnGB2AEoPVuhjhHuHb8Ag0sKCbivgZoZcUMaK6HBXhBFSnBL0KnRz1lukoG0h1WFnV9mOEin62Ub1YW4kAnGDtFCoDufCtraqxqQxrB/THtGb8+q7f9F9Wmkk1zF1xbxYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789967434; c=relaxed/simple;
	bh=pbXoGVnAlYwTyYMaxxOls6V6c4+3MaHXXwHYsKvRAYI=;
	h=To:Subject:From:Message-Id:Date; b=Gbma0sv1itc6Nw8FD7IqfPVbqBztf4OLmA5+aNml+kyeiFUsfo+f/ap4z7w2eqY9+qD6IfDBSPXnu59nPxVgzSOZNPIJ/bOLlivRNRXG6WP1xdL4kfzQ78UVfxb3n8rynJaG+zl9JYKxMBSpwgQ0q9GpG2HPTg1O3PY6mqjjHm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8SP5ULL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8SP5ULL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E904C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789967434;
	bh=pbXoGVnAlYwTyYMaxxOls6V6c4+3MaHXXwHYsKvRAYI=;
	h=To:Subject:From:Date:From;
	b=T8SP5ULLbnmgdGBrrg6dLs5WFiw/Vsr8kAkNZX1FN+4MU6tl6+45YbAvpBGZ9S6a7
	 vftzb+xN1F2oq8tQB+AnpAgz3e89Ae6JrYIT60zdPJGpwGsHKIjNlM19OgGD3q4iyL
	 h5T1YLOs/3pXuL4uJKPNrX8iiiner7HShFnPUaYfSJsVN+OBbHILN9OHyXPg5Ed35G
	 XeNHl27FW6N19nzdUXYBjrVfKMLIW0heLPBxuds1eErHSvPZKm/E2jCTlEMSGrygVw
	 AUVs23+9n6tbahlbCmwQY+SfV0m4uXcgZN1LNLd5lhalSFd6HDx6ekpB6pnO5ct5i+
	 SvFRX5+lOfdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED02BC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996743393.32279.2110929516489568692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46b4ea2364cd8fe002fa4699975c6bff52cabf90e639ea1b7d9594d05e44b1d
Date: Mon, 21 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789967433
