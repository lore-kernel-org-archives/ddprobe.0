Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE038839F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782384454; cv=none; b=gDZWJlA4vpBv+fItAquHuwHWNaUvzLAb9a2ZpDmoDV98iBAMnrn6ep/qr5PgHmaQtlTlZN8069vlM7/CtLmoBHoAXtxbvZl7x1Dwo+vf8J4bFJQYEYaagdxC+QVmwjE8/Rf/kvv7jhH6H7O8RPW6DVznrDxFyV8pWmJTRj45/nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782384454; c=relaxed/simple;
	bh=JCiFaGM959ALark3IwBiCvx6p2CShovV5fi6nSjC+6Q=;
	h=To:Subject:From:Message-Id:Date; b=g96S8T/Rpas4+I8nvem0totKPWBXAZc4MqDPxmy3X+4LZcOLDLZ9UTVCMwx64A3p8I97rLLXkR6nrDGJ5HkwDfZHENgnMZHOyNH/35u09IYsPTD6B8VhpCs8vt66V7SaDbOdXTOgNd0qAXxGJ8ovHClsfmCUZfdtFcAXzHosQ+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPX+Bx+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPX+Bx+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D376EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782384453;
	bh=JCiFaGM959ALark3IwBiCvx6p2CShovV5fi6nSjC+6Q=;
	h=To:Subject:From:Date:From;
	b=WPX+Bx+iaOFTYnRGWZDh5/57juIzdmBbfUr3/H8uFWRDKc+NP7+/7GNlNFY58MGp7
	 TOLvPe+gCB8hj9taGzikJYCo+t2zBUNcCSMJUIufVG/N8CFUBfuf6StTPKmjAdMBXf
	 5qZEYgzowiDzOmZet6vvY5wBeqG5GPHpr2bWS2ERj8uv21V+4MWfVtaomxIKPF4ri5
	 tvZKHudk0sJJAQG/x/z3+p/c/NjYbBLvAx2y7sPI4Yu0kODVY56oQK36Tb4XjG1M07
	 xD8c8cEUoZEPE9PEVBvEZyZTJhdTBTvz0YbxOq8EUJLmCXyeh93LhKxUowmfcOJgoZ
	 VQL0f41B+9cJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA46CDE008
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238445370.11698.10268865707207245185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4890b494b88f81232f5804c9c2b6959655ef3862e9fea0f50bd3b0cecad3441
Date: Thu, 25 Jun 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782384453
