Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30843EAE7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767066834; cv=none; b=otpSn443L8V23e+JXZMbON8jg0cRvlkXJn8MK22fSvD0gI0QvtPUQAhUy/yYAhrs4F05EM8cFbNHqlaltekjsOg0aUPFYrxLY4f0vT6xijHCc5Bh1YlYrekyCLntpzDgM3pxlnUNLVQL+Pg+iQ182N51VujvphA3ogCLPhKKJGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767066834; c=relaxed/simple;
	bh=ShtHAuS6xdOTCQZVfDmlFmcBnG7rvjipWF9YxVUEoDg=;
	h=To:Subject:From:Message-Id:Date; b=EUBKfb68o+X0Nio9WzgzRvY4W0HjVOAv5DVZrv6W9lGc3Dgt+QRaRco0YcXy8FDUm4yU1uw2kobGAKzzmn9Y9lkV9EcJLoAtmLd+oyaAwnHy5sfEYVtYWro4ItwYfCHbt6fjMg6g9iCaJ0JCgDRk/U3wTRwxanQZIq5it6YKH/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBxQ0LOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBxQ0LOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DCCC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767066833;
	bh=ShtHAuS6xdOTCQZVfDmlFmcBnG7rvjipWF9YxVUEoDg=;
	h=To:Subject:From:Date:From;
	b=pBxQ0LObaDaF/Lm7Di18URLY9k3g5QmA2UNugj9omsSJu8gTSky0n62SEZcTzPqUm
	 d/kQBpezmqhPABTkibEaPa2zY6p7eDtWgL2GV5SsjRd0OyR/vnUm35gae+HQhOQe89
	 297w+cGMNoykvzp9jCp5ZfAnt6fV17cX/zZh2Jp2m4iPJN3RNxD3Bg6ECesVlPwvvt
	 KRbPCx4y5LIG+1hQyz9+l+7G4TcRPG96I8LsOwDPs1CyJGsah0RPZKI2k3D4O5mPEj
	 t5FrgAozzUhvCxkBwK0TpBIRjHydL77lF/AcRcwuwQEOVnKjKxzv+Gz5t7jfZVTNN4
	 LbhXwRWQhF1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C09E92722
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706683358.11746.5681522354471417004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aaf02186f73db64889a0565c32f88aa986b931218bcba8d6de0eb5be717d1a7
Date: Tue, 30 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767066833
