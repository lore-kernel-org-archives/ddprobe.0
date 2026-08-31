Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5595A4C6D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788162034; cv=none; b=mlQ3+pvudzbBQ/MxZljkFkpL0VJn9BXJuer+puUw1ydkQVNW13kUxbbKOEF1oU9z+gN4GZNlwJz/9trszmzrvN5QFmK0xF8P9TOACcESOw83lVvBX1DbabP78yMx894HD8gdEjXRM9Ci5R1idJ+hPj81aee6tv+TbzqCm4V4njQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788162034; c=relaxed/simple;
	bh=TH8RwlP0HtS2fXPGLl0pi/V/9I360VaDMbgSfoKLpj4=;
	h=To:Subject:From:Message-Id:Date; b=GDgciQEC52LHpg8EfTL/hho8Q89+3d1URzZgLFI88FG2wrEpYlst1a5LnuV5b8ci1dWj4h11ly0c2IYhgLFt3J5X5ePjd9qku377xhN2VFucWcXplGg0WhUAn4KKc4DXh1tRFTiPeOZhHc5MR1rvUvV8+dq/jsZo1rK9wp2yE74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVxV+jtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVxV+jtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49EEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788162033;
	bh=TH8RwlP0HtS2fXPGLl0pi/V/9I360VaDMbgSfoKLpj4=;
	h=To:Subject:From:Date:From;
	b=WVxV+jtWu0ZgKJr+QOFK8thhwa2O6imzYsURhbkRQ7ftoaTd9+HJ7XqLRnF7BeEGZ
	 xBOTiZch9NRk+jwN7zT9SVVPd1iCIgNhX1EdT7bdHhG9AkpWyHZZJkAH8PoQPChxM+
	 aUM1iO3n8OzBGaPm2YV0Z9SI2f287+9j1rbGEI9vSJmMoZ294eyXSLPrdiY71eNYCf
	 0BZezJ0zZo3N2lnOkhk+orDSI4PpqCcSNmr1wI8WV9N9Asvzf8Rib8j3DhlWuSsp6b
	 88gkCeghPBlWqSwT22RDbkQLEsz3l7R7G2OuiQlrLPoh4a8ld0pZfUkmNlBFPaQx5N
	 SVN3+z0E91m9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1BC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816203370.25922.14594729035300943590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078dd126fc6e12d4646c5a0740ab90b2af95ebf64a2bf825f0e7cc1fff6a1933
Date: Mon, 31 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788162033
