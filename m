Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B62BDC27
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769846634; cv=none; b=f2ipY0L/PacWgTKTzVEn2Q63378ZLe/gI2Qna0w6QmKICQrH4th2TEgBAF38xVbcxWLnqWaCnE+MuoMyvwfawnN3His7Tp1nyl/LtWpbIUl5hTcOTvqkXEKX0dOiv8qVkQcXjtVZvN3WLoYmbD/groe4PYqHS/oSfaA0mov4H3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769846634; c=relaxed/simple;
	bh=6yBPkNlKbTDDFSkcBSSg4pIAOHEHQrH0nPyezEqy1yc=;
	h=To:Subject:From:Message-Id:Date; b=ozq0tQLxW7nNqSAMj7WdOhciverfegy0FYWxXpZrdQS0l7OVkfxSJXX5rAu7MtsvffF4bPkyXfIhrRSPE3CV2cxXPM9+xkSC3jDggehb+vF+K9KFwXTXcHRJrihAQe9bchdKiMcDV9yoSk8YAixyrMH8r7VVTEXEitrtZi9kybk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1uZwLdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1uZwLdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769846633;
	bh=6yBPkNlKbTDDFSkcBSSg4pIAOHEHQrH0nPyezEqy1yc=;
	h=To:Subject:From:Date:From;
	b=c1uZwLddxIVn18sdcEV28iWMxaYR4zZOFgBC3Dn25Es7tkIvDNiIR3C0UUrJkWLYM
	 Xv+WFIH+D1xdx4OyQ2Cdj/ESwjRGoVu+Ce7Pg7ILT+B9t7NWKFJpNKbUIolqBv7sbI
	 8eNKXW/kLTrhumtBBKq0WT+YIaEfAnu8heOL6tqmHd4Fk+tCdFLNOEPNW2bgqNYG9/
	 Frarzdn+UX/nuX7r4VU2IIYGk7obtEARSrjzH6wI7Qw0JFAUQCnkrd8p6J0bKOeXhB
	 DaulHf277Sz8AF6iG3bF1bIks5rOC1WD/oE+85MVhcW8F03tgSyzbtzkeIuOhvbp/q
	 Vsgmd3w/MxYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F267D79746
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984663357.3920.12332517216229341955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec62515bc866f23f490c18569dbf1fce4025fc7b4a808962577e8e7d4d31785
Date: Sat, 31 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769846633
