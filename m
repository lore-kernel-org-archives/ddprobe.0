Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB71A7253
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755677994; cv=none; b=vCxH1/mmQVskd+3Shgw0/o0lnsRV4T29A2GSGmOrzvtNGk8NGrIiB39VVa1AFt351euUYXh+5in0LaXAd+hpQnyLCA3wqIoZ4+i1Hlc4jbjNWOoHFqZWuJAvnI13/3cTS5wtM4y0Z+guILBS3aukLInqDb+xTCCf8pNeuyOtYW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755677994; c=relaxed/simple;
	bh=bk5+RUNw3ZG1Dw1T3ZxFzPlA7cHd4qEQUAemWSA0Tho=;
	h=To:Subject:From:Message-Id:Date; b=R9uyjFNLk2jeLBP9x20349IzM50BX0TmPOHvjTGLkeDScFg44f5bJ8JCQmj0lcxrPiudFo6qXZADkE7waTf+iUx0/ZiZ5TRiedu/q0B+62ZrRFjQJXNmJ2ZVa2I7fZEZ4I6DvP5MpL0Xwc09+u7WBGGlpaJk0n0aKQD2/Cy6Q74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVeoRD5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVeoRD5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C13BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755677993;
	bh=bk5+RUNw3ZG1Dw1T3ZxFzPlA7cHd4qEQUAemWSA0Tho=;
	h=To:Subject:From:Date:From;
	b=EVeoRD5kbyjM0SXrrGepMCnXI2F3BT68vXRno6HT9hpLdjk1KfHkmEvpkt2xCA8pT
	 s1AWvtDRO3RYByqwcCE+uAMm9J3XfGNVAADkHyWL0iV5/YUA1JAt6Exa47Fw3BelGa
	 ofPJ3DXE9PyM2lM4yRZ+AmVjFekftPdZOc+YfZH8rmx2GPxuVt1BbOT8YzTwHnf+GA
	 1wYmWU4H/rXamq7aPlazRdERwBZf/J18vYvG/IOZxf4OcnKT+jdXdk/3kXZQ2wLmIt
	 gvh8o4QQ7RgDZpyEYLbWGL7453+yVEUSKutZzQbGb8v9oj8M11HGu58hEUGQ/L2XHE
	 ezvoQXWmbt/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E69ECA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567799357.1132.11889220903236472654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6fa7d32cdbe4c369342b0732f5c301622a3890d52553fcd7c1dc53cb9ee57c
Date: Wed, 20 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755677993
