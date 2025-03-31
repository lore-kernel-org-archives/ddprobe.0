Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBF43E47B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743463194; cv=none; b=rHEfXbjtrdSCQIIyLCrVMWgM1mxQb+QaTIrNn6OMN//vDgT8XLCa6E9oLfR0p6vNrI/fIwDU39TbuJtD3VnjTVQV6WN4Q5LVjn+LyiIcu39ZpPkqsFKRJudgpJ1LvoImvQanxSWbeiz1AnzWnIKGYD8BLemSE9PcbCIAkSKELzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743463194; c=relaxed/simple;
	bh=hdbFsx2XovMqVTqLyLip4k4wYiZTGtcFuD9W6mj+9bY=;
	h=To:Subject:From:Message-Id:Date; b=RUokIx9cORUd04AL2VyQB8nr1mhP+Y/2mbmFFJ64tB9E2O+VXEYYg8tIcwRJOzmKXl6+3nyYgAYThdfeDckoSYMtTIAjLAyL91e8o1AX42ePGSkgPnb9C/9cFbFwPpfCfxBPEHdvX6UkA15ezCDB3zAxj+cMUBoLXjG73iicQu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg+1G+DR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg+1G+DR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0547C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743463193;
	bh=hdbFsx2XovMqVTqLyLip4k4wYiZTGtcFuD9W6mj+9bY=;
	h=To:Subject:From:Date:From;
	b=Xg+1G+DRK7tlVJt0zJnYYAwg2sRiqboV3L4MzCDV3fjvs5AuNYvSJFyVn6SwwFNq9
	 gkrZd+sWosdC0Kx4qszrzd3OgTYxXE5OFOfouOh32ysdsC2FaZ/rCCJJbw7/7YOmDP
	 d2KqW5GcbmZ0IannC+JFgaja0e7LobN/MXdMOKLOPDFteWPFJnYPUxbUPsTT/N15zl
	 SaoKjm+XICLRSuEHsdAjPab+CNTPGlAHAIEGXuurqCH7T9BHmIW4RXQGhJ2WfsS6KB
	 pBsYkXIjBn4hrSsdKANba1oKYU0Y6UW9dbjTFZFL32lCnoVb56Mc1NZVeUVbKm5G3F
	 2SKz1cwlUn6/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8A5C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346319360.31078.14562807823858460786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1896022077755a855fe9e2061133ed90ab17842727d5a75d370f88ed024bf15f
Date: Mon, 31 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743463193
