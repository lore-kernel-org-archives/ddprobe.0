Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A572848B4
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762745994; cv=none; b=IwzCqNr+Esluhq85bECPyOgBnULswZlr9oqFR66wqPd4c41zu6PQVcqJz6/NCl1dAj3MSKanQd5jdOD1C0WeED1SW2hrJooeQExEVnTpq4W6EyrfrA91FN7wPgiS0+3YojyDO7Jw6VOBwuVcc35DS6kB2jQhYe2YMkEsLUXQW2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762745994; c=relaxed/simple;
	bh=Va+5pkNA8UW1xype9H6uvWzYMm/LNKV17DEuGDFZFeo=;
	h=To:Subject:From:Message-Id:Date; b=Xxyn4DMUl4uyfNsRRqFFxxxi+GPhpZRaeDWnkKaZztBAzjIZd4igaqJWcx5MbvM+ZY2DSIC/8EGTAOQuUXonKka982j6OppO4Of9/QlG88bhmmxA9FfoEzwHC6ea8IKVC5En76GTQy37r04Clzdc1cxEaI9/b1QwzfpKSIXJsAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izPkh/cM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izPkh/cM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B114AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762745993;
	bh=Va+5pkNA8UW1xype9H6uvWzYMm/LNKV17DEuGDFZFeo=;
	h=To:Subject:From:Date:From;
	b=izPkh/cMhkUEGjYhJE1JWwLwHSWY7SBNUSLPLmWOAaO8rHAEZZJeB8C1Y9k4Nmzwp
	 PIaZ4MXjLV9jVAWn3/iSI32cg1IdR2TSZ3QoMNWWrQCvgaEJ/hUBS+cs/DMKqepes1
	 RK9RW/ZmVozRuc+eM/P0MNmOq3jKXKkAgWDhPeGZ34waAX3zuPpmeQKmbahjXOTnSE
	 fMIDU3z0TahvXJocuFVNJ97j/J3BK0LCfdOTac+nIovj1o16bttUjyA5icxmQgtpyn
	 aQM7dqsIBkuuPPQlbSy6fm3RHqkZrVLCnqQaXbCHk+we0q7RJZPnpbSoFl2zxGLdz1
	 XJc06MS15sl2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DFDCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274599362.28084.2200629273202556083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32015a3c344a3f9184d9efb607247c5b13aff3e3b8b0322e16b62df937ec58ee
Date: Mon, 10 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762745993
