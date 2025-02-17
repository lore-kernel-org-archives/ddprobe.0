Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBD2212D96
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739784534; cv=none; b=SsAh9MtrP9/hfebTIohh9F4ndV5GrjFcH/gtdFHa+LUYo+y8atl+D7c3nKOhvguQAD3iVjfGmghQXrazMNKFlOE40aZrAPNRHRlgf/UCtEBcvL9fgkosK1cEmp7x/XGk82dSL+79ASTjRkXihksqckSDJLgcE2PFqVPEMeuV9qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739784534; c=relaxed/simple;
	bh=0wct7CTavSyZOC0zDTP+LVJTzAkzS07OE84KessgYVs=;
	h=To:Subject:From:Message-Id:Date; b=aIVdkR1hC1Mo12XSdUqvLrvv9VhZ6Du5aOSlvU9ZQriN4/spjigS73zeg75Cxvtc+aUZINB1EPe+5F1Y/+bSSNwaAeTz0SH5fU17NajvDM2SPnAr2z2Nh0x0NQQn/GTeGnqsoLgxaHylyGm/giEwuNk0DwenqNWiXRUiRy3UrAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPzjOJwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPzjOJwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A0C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739784533;
	bh=0wct7CTavSyZOC0zDTP+LVJTzAkzS07OE84KessgYVs=;
	h=To:Subject:From:Date:From;
	b=RPzjOJwmpS5LlVnAu+3yY4fbV8aXpQtBbblFVOpn3DQ7qUBcVKAWVGuOOftx3YTL4
	 J5XqMXLFQfJCQeX/QlCS+bmlCpiXre28/RJbiwQ1c85ZQjG0qL0iCckCmvjzcrFfym
	 U93XtsBojZ7wgVr+AbA/nXHx9ah91AJ9p73ibuEYhDsFlXdmNIpIC7zaUHoqHpDgdD
	 Yr2Htouo0TIaaGfNeyGYQzPUK+c3oF1gfNzXaTGw/7IfXGm5yYdXmqzlNCGai232Sg
	 yU47uiLURRhpkfgZn8fSoSAUwPOt30ZvOlL+UrAULBLixEC7HGNKNgn2lhA+hDOMMd
	 1lRoj7N8/pBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95896C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173978453360.32414.9264322564661625464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2197fdda75a000b6bdb063c2d37fc3b45280608c5630f2389ba2b23d039b11d8
Date: Mon, 17 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739784533
