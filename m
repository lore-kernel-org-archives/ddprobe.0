Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD26449EA9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780580074; cv=none; b=kMdwx9YH4FdVcj2WpVEzfen/Y3bfeR78FAvKQjuD0Q2gmUslYXsIlxIVRTWfdZMjN37qnr5l4awHRRHSSxX/rU+gJ25HQbUO++/F0D35ZhJGz+6MzrF+u5V7wfhPOtHsJejiPJMCvKjFqpITALbYNVFJaBkdoXDdBx+mxNDCOmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780580074; c=relaxed/simple;
	bh=Da23OI5frnWRPvzVLmDXWLCKQW4CoA73OAoKN1Rk1x4=;
	h=To:Subject:From:Message-Id:Date; b=E8vjYOvkNPXqunubDKwKDF7T0uM8v93qRAb2LQIfDmn7BXQ0wX//4s7DNbV71p1ZJkM6oFoKmQXfl056sc0cavomFu2FSA+aHPIFnC7nI39D0kMNTl3PX5LaAtZsLSLfnG0cabCRGV5O1LM0fdhtzWdzYmODe1jPRIZsY1sIlQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YegC0MGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YegC0MGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5699C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780580073;
	bh=Da23OI5frnWRPvzVLmDXWLCKQW4CoA73OAoKN1Rk1x4=;
	h=To:Subject:From:Date:From;
	b=YegC0MGFiu0Gi4ZtMw1khzZLLLAuE+GEGNPHwjMHzTHLa3hkGTdK/NfUy9p9bJfDN
	 UnHdc/04dwY5iiYQyg4i/7RP6+ZRMoUf4WcUhxVNX0VDIxv/h4zFN9LofElGc03QFj
	 7UhzjkW+Iw/91a+2C5CDsleNp27J+c+pBLaIhLzO+lc0u9WQa/122y+sRwtDFKFi1g
	 551fT19vyn52+fRrMukGuXD6IZZl9rHneQWDy7HABKkNyehEZ/udZZAJgD3RTTLvky
	 szLogx0z1qvY2N3i+8Adh01yNOOOLb8kBLHBeKWlePlUIZwtk93tluGI0moAXmXSmV
	 MFaUlmfORwVlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7F9CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058007369.8134.4192919625681869723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501a64b18848103f6d4d5b8513ed6672abc895e802a2d308a6ba32de43038cbe
Date: Thu, 04 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780580073
