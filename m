Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E12B1F91E3
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789080034; cv=none; b=W3HmB4f30yp9KCgAhXKLlC1epoGBsGRre4fvb53eIFG2uTmNP4Mo393qIdI1AKGf+nfa+mFAfunzGr+3NHl46CxxDHo1AuVG8AhIHGFkhgd2T/+qUhNdjb5v9urGSG8ZkWAKS+KVcZAJzRrfI5k32L2zG29UHTMwV7yW0JxzQOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789080034; c=relaxed/simple;
	bh=Fv8x1oLhbff3XXXTp5SxRmE7uEpGKRE3X54ueio90m8=;
	h=To:Subject:From:Message-Id:Date; b=pCAP/XbyjwL2ZnnveTUzwwP4Jox4DmGgRF8naLH12MtgWB4bJOZU20QeqYYTLtOYYMj0yQrQM3hatmYvdZTZavq2y++PNp9SWP8+judWuBYlj/CO70g2BlejDzK+GIy67XLnFfFQ9l7+2AI6N/7WHg8wEVT9MGltEXUcEt334W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4ayok1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4ayok1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BA5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789080033;
	bh=Fv8x1oLhbff3XXXTp5SxRmE7uEpGKRE3X54ueio90m8=;
	h=To:Subject:From:Date:From;
	b=E4ayok1zrC58jzcXR9TzJT1+lSGUKUJ/vBkso4ZX1g7ytnl92eLC+aiBmHY7efphM
	 ND5rGdjFfn6yvbOKSERQORyDJZU3iHUe80THn/F9JozzM5PUJkN3KwAfJbu+qIOuYR
	 +H9Mi4JWAT2WDIzeuhtfrc1EvO6oyudv5ljuVn+NxkvANIyy30L42ENLqgBy00Oh6z
	 uzDp7Sg8qtQHbLXH1rsuXzd8xLdTm4IzF00KToZsSEhCEm2AS9xQ7HAs7/h80pCPbB
	 7z4EIoXVc37QWdlC7XOWBezy5q5MfTNGkVHITZcDR7FQ3dBfGbeIiNyvF57pYmadHb
	 LRelgsP5xjcvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBF1C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908003369.3987.12692624598395236733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08750217fca671dfc7e7f8ec130255cb6d61c7e3726689cdd6126d48c2e7be5
Date: Thu, 10 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789080033
