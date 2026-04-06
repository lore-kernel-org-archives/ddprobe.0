Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3535893
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775483134; cv=none; b=rJ/zXdKm8DTqUOKhUaUDr8UMXl27Zj3QoQ5yXrGQr1iplXVffwNCAzXkKkjXCguyEw7PyrbW/9PQWTeXEW56/X20EqdeH6Y/AKSU2hr9e9mXlNOY364QcPcFuhW85wUilVlKyoN6W7UeHo4mIrUYbNwJvbW6d9uN8av50E4D0q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775483134; c=relaxed/simple;
	bh=OzSUfX/DH9maiL9FQY2THChnQLnctJTLOTwsDYoUYjA=;
	h=To:Subject:From:Message-Id:Date; b=WFRSl/H1OT6DPoanUTCd5hTOdwPHxUyahbjZk17+oVs2LIqgJ0KqAQJeZkzrARS6X/X5bRt1i3tqJhEZKpQXiCP4nk7wEzHyylAU4iTHLu/vxItTGa2P8ymLkT8MVdZ6goYl+4btI9Q2cF1kHG848lvd9kHn0zDkamPJOC23n9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kglhl3XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kglhl3XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F03C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775483133;
	bh=OzSUfX/DH9maiL9FQY2THChnQLnctJTLOTwsDYoUYjA=;
	h=To:Subject:From:Date:From;
	b=kglhl3XWUToloxBKaE8Dmhs0A+vZqtRsiNRmhckOxQjyilP63YPe/+5/J/TlFWixi
	 pGRcJ5ZnXoERYJPfsRyG2F/6O6WdbsvhHBZo35oclIbS+bKpMMkVx1f2/kx1Z2A3eY
	 7mSvunIPcYxA1XnEARI1TZ2MmN7iPwpTgyAXqNtMDJA9tG5eGMmpMu7HotPtiOHXHN
	 WJKoOO0K8pRBpJTJD9VzFGI84Bfm02SSlGX2VqlwNWWsAAW10UE0ojGMPTHGdjXw7d
	 SbelU2UfJfHhY/lQj1MaM9QuUFtN+dm7rqiJ2jTSJhoF7zQYMbIbq0M2e+4G0xCssd
	 RJ/5QLZ8i2hfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8F7E9D834
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548313369.24323.11806441288901997929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325eed5dbe09c81cd8e5ca4d94e829061df99710119d8ac29a98b835a3eccc8a
Date: Mon, 06 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775483133
