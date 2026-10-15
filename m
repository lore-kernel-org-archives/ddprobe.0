Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C3C509F19
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792057834; cv=none; b=FwH0bZd6L5n0YhaTLkzs14i8a1DJioOKOzzWFHnbb/yXfl4+KY3jh6zfZVzP9sTbEZTegnEQl6RooOsLBi2ec52OBgXruMBawLeGVVw2KZrWVggI5HrL14uZ+To9sEOm9h08IezVwJgnQuSGxgHlTjP//QNQwDECzq1drtfq5G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792057834; c=relaxed/simple;
	bh=gW1jj35UjagFuDD+/tJxOAx6kfsZbnjicbkqVBv1x3k=;
	h=To:Subject:From:Message-Id:Date; b=nGUKAVaPk759dZm9slFUUOege4EC/9mo02VQ3742f2zD9FIvaDKqWYJ6AypVB55jbLafJd3fLEMU1qekQM61oupT1KjqLnp1ztDmGN8yZzy0MgQBC6C1ZP3+L+v7jiBJywaCsnbLiE7d0wrt4NmV+H83viiUVtHwgUOED26mDwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qopLZ91o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qopLZ91o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17CDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792057833;
	bh=gW1jj35UjagFuDD+/tJxOAx6kfsZbnjicbkqVBv1x3k=;
	h=To:Subject:From:Date:From;
	b=qopLZ91ozAwMNXT84Y0mzooSiPnM8AZ1oAtq6ZVa6E39LAMpudrP/1BFszWsFwHXt
	 bKW3ooMcJrYvtz4XlLloM8fwKEkOVXObgSBxEoArXWyX1rAI+9CHrpax4Ba0rw/KJF
	 WyT7v73LN3GfhfW3z03jIvbnvi5vEC/9DqGES996Kz/uNsDOj9mAYrAe9hdX4D0LZS
	 fsgpcKbBuCkdEj6JlbrY9at9VHEyuHQKDPV50woqAPe4MxrGPHB2nARKA/HYQg6WvZ
	 YDxtA/9uDB0LTF5JRR/MTMDGjmTT3a39yGUlP2FSSAxEr+8nl3KqVwl2yyqKv2da9v
	 QShVllOlvr/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F86CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205783368.28664.9525487626241909643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e15de3c1af13bbf7eac7a4abac3c47bd798205e0f5adad5661d432a01019ca9
Date: Thu, 15 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792057833
