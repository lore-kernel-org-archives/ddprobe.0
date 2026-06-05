Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2726282F1A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780698874; cv=none; b=ZAfoBT+SIdhbave60NBHJRvz9Ds5H9ygivME/CkOmmjywf+p/eh2tI7KKZZzJA1SI5hHHlUjmMPpKyQ3o/WV9+mY5i9AN5ON7kB8JM243ElKor8WzlyK3Y0o+D0oUURl2zsPV739c9WEjoO7ukGmHfRL5s+dmczn6cMF+ilyqRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780698874; c=relaxed/simple;
	bh=3nXwPqOlWBbZhen3WI2j+TclDs5OEuVGrlUaPZhRqv4=;
	h=To:Subject:From:Message-Id:Date; b=VYkNeONmpR7/5tBwNTTP6Wa9u27rgh+ocehBK+Tx3LXsF9K1h7YJmf3/UtpAY13uNNAJNkxUzyg+MpVuY0aWUMZFXwyspqP0PQjjvFqDh4h5Nvp1XEKj8dUKHX5xbvg6rMoyPO65mYCeB1jUmV68S1C0YxVKIB6QDx5qQmgQ1QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En1bFmEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En1bFmEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4042DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780698874;
	bh=3nXwPqOlWBbZhen3WI2j+TclDs5OEuVGrlUaPZhRqv4=;
	h=To:Subject:From:Date:From;
	b=En1bFmEWwjngiLFOxREyX6nGjEGtI0BtEwcjzQYi/Kyu47VbLrHo1s9vb8VbaTvPy
	 udtKJ4tx+1NRZAoIZXcvqDyuG8/tJMshHtjZfO/HOfhDdh7nTaE69UTZx2CUaB9njp
	 lMpRDkxwB4g3Dgc8AydQoTvbmGNnB7eg08ubTioR1P1aR6jIfVtatbHnAvsLcXu0S+
	 2AK/rnx/pO2TPn5yCNvCiOf1rPxAxsEmfI2WeAh8vnJ70MX3Z+wTTOYmwtBP7rzaAO
	 veEyY5eW4ibXqOsHLF6qgDM+Zr+Al/iFV2jc8Di7iUDHWZH8MNh+OghdlCLXLEBdFi
	 TcvnC5FBB/P0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE3F3CD6E7E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069887388.18189.3247070740349765603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea86c3dc3ff12dcb078a559aaac1fcfdfc354362431cb27b0edd545fbef152e
Date: Fri, 05 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780698873
