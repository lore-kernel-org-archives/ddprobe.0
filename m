Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D271B4159
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740626934; cv=none; b=JY+cM8V8N2PH2NrDyOUh0CYj+IlkQhwz43m+3rh4iirAoMGCb4ahwy6IG2Ezlf0MZalFeEE2F3zg/mcF+4PSumvoB7bL4l084khoeqJpp09rFIEd5LumPOYyWGX/K+KdZHHH8EAbK3Ui2YCUZTIZ1MUp3w1jczyI+vti8zwuDoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740626934; c=relaxed/simple;
	bh=wlOPswNDa66YwLYRZOHoIri1/JJ/fCglxMiV1exW54o=;
	h=To:Subject:From:Message-Id:Date; b=jP9Jg6pIS7aEHp2GDCPFbWxLYno7Be2Uanm+VswGtoZFmI4NczXBCGZk2uLzBE/RO8PH0L30KdrigBjHhB1EiW0r36dKMXUA9l8cUOc4a/dovBQYjrosBdnt9ibaoRdssy0Hy+kb0WEfOSDfPoqgcp8bHO1TSmWjAhKPYUyQQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN90qi9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN90qi9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0542C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740626933;
	bh=wlOPswNDa66YwLYRZOHoIri1/JJ/fCglxMiV1exW54o=;
	h=To:Subject:From:Date:From;
	b=SN90qi9iqsPGPVedz3fVacr5p2AGLel4sI6bmn5BTarOdTSpYbjMFMHg83FAcwoQs
	 WZGfS6blS5R/xMENlUFaKjMN+dl6P88EAyaEb27WhfPPhrlAfbIPe5v4oUXwVaguFW
	 Vgr8W9HJPsfpgSbE5W8UXl2zx86lR4UdR71LmRaBSDXvFkOF+WXHctdU/ELUL8ONUD
	 1SlkuywLiaH+8XVUE8PBKo3xiwI10ErSNWssr2wH3aoPGrZYYe4CRwHfcEpHT5dJgH
	 4QOORRpIVkRHp43gA2AdyQzgpvMZKdgawYLW+PaeOWQSVxAFJGVQDfLMAaO5CV+xvo
	 y5NWz0cksDtgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA85C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174062693363.10541.3930998453607242252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2926c780be4af6a018ce70f19a21071aee2600cac02acadb215ac7a4443470b8
Date: Thu, 27 Feb 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740626933
