Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6461FDA94
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745324395; cv=none; b=CO4tcUe7IhzqIfncVbYQvPSPI6ffUiCKBIB1dpQn0mP8L9EAIwG9OAHe7V9KESjqL75RbEm7gEcY07Z6zg9e8243+gH6DgAfSXtwLMaOCEeA+AXpp7CIjzhFD3nxUNCAAcA7FL09rcqJQHBfZcm7XGBLiF5ib7U4D5oQRPzqCa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745324395; c=relaxed/simple;
	bh=rBaQ6ALFaTNA1Tlbxnb1slx4iC35Z6KfHya12AR1+LY=;
	h=To:Subject:From:Message-Id:Date; b=I7YxniIjscFJKYhneMVTd9CzIxPyFcaN6ICBEBNjio7jzfczWl4BW30VCjLbJj4eXid6LUQgv5itLK9s5vx2+iKyPERNXV7vRhoMlrgGt+dadkKSTPvFOj3uQ/QOJDj4a6m7pY7t03mZQBcpOEwyYC5Oq/AEkZ0xS6osi+mdS+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwWOWpX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwWOWpX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E65C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745324393;
	bh=rBaQ6ALFaTNA1Tlbxnb1slx4iC35Z6KfHya12AR1+LY=;
	h=To:Subject:From:Date:From;
	b=MwWOWpX14obMZk72KpkSSnHf+Y5/m42E6x1MjZtQbNgC7DnK1wjTE/kskCCdCTf/0
	 KtObHZklEzXKVsOUEp9R7mh/1cYp2Y19LKlz6H0ieIK6dZKeokF7fh8iu2KWMeZMCE
	 wVcawS0lnMENfk+gJpRPFxUtTZ3STsdkkCj6lJ/CU14NvRPeOVP/yNKkzM34gzsZRn
	 6/DnGEo6ORyzQ1zVU7XFR3q5bRvQ4ScmJm+D9/elYalYP9YxWa24wGh0ElH9toZzLa
	 PGwfgyRgRoYg/5Ri3+0c/rkrFOU4g40FxGoN14atQqEct/vfOSbuOqCny253i/q1W5
	 VKkVxHB6UG9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C1C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532439358.27668.4164058741033290997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1dc5bf1724e49a2c0947b288bf97f00d4303990061cb62cc2f6bfd04cd6299
Date: Tue, 22 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745324393
