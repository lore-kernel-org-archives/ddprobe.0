Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7991B87F0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751314794; cv=none; b=rZ5HxOlxv2BRHq3/LA1qQFtCBtf0z7J7alM6FHy2a0poOXZDMM/+p/sChIvngrn06Gxc2/Kq5WMP4xGGDt3D0lO9+MT+hyZb63pzjls4d3qR3AwTaIWW4dWtan5fFMHyvZYdTXej3ewHZogbIqku9MJDLHfsk80yhDxsGHXNQAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751314794; c=relaxed/simple;
	bh=MKaIU1gEU68xxOhbvlg0SOkPhKt/U5ujko0iGVG8Ou8=;
	h=To:Subject:From:Message-Id:Date; b=P9/JBQq9VzLIvEPm+pxHLzKTBbM6po7C7U6Ud7HB3Dmx6mvlvhzUZzqXQ4L4/Je0lvY3qqMBacGsezbe5DbUW+pxATWP/6bSZjzMiwRpKcpKrA9QsjoVhEe0jQo+GDqbR9N1o2b+3uSVV98KQqBAisguz02TQ6W92FNvkM8Tsho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L49YWf7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L49YWf7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0423C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751314793;
	bh=MKaIU1gEU68xxOhbvlg0SOkPhKt/U5ujko0iGVG8Ou8=;
	h=To:Subject:From:Date:From;
	b=L49YWf7r1NzBLRUQOXdT9vKesmRLJdPXSIxBNCi6Pm+2h1yrI3LVLEWU1emEZG00Y
	 rwRD5IaqD3cvHl6rKym4cb+KOmOnUt0/0NeuKQG6rY7DwPsIZSTbrPVPXeG34pN27d
	 4NoHlhQffN3TQGNOMt471LLiKAGazdPK5G/Hy7pgZrEo/+eZTPhUUoDdUOOv634qKr
	 qAu3vscGuFs/hTmqezsBbuUNTEQgF12fZKLdbWGDVR54On+5vn0AmgOCPUqrhulJQG
	 phQnrHpdn4iCnuXYkOOyl6WiNBtXPK2gjFQYE1xSPJegyTmOtclqUzpUqCUP2oOpx/
	 bWPbui9hkPXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F165C83033
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131479357.30322.16085557683733191885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3809c818e02d932d2bba44e9cf12f5ef9544285854a3fb48c72eff7fb04dcb
Date: Mon, 30 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751314793
