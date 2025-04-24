Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326D71A0B08
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745502594; cv=none; b=apTKthwa414o4yHeUu4ruPf8x2OArKf3dfjNW/aqpLtdIj76P7OF0YDUrkt/HHWvQoQ0dIhCXfdsctvdKbJz53QCbIJjcEcqwHQmvImzdGSkABJP2qAgywcSlwWMxxsFuS2se5G6GazCFJScf06QhKoIYciqUF/g+8Tlc3557FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745502594; c=relaxed/simple;
	bh=gYHXkKdpm8Z6buVna86yJAA33GLxFGxU1z2+OWXsxtQ=;
	h=To:Subject:From:Message-Id:Date; b=eTxwEEMhggXB2iPFK4a8TNO1gWtCGEXfPEJPJC4LgUAIxTgHxRohhzLq6FZZXlaEWmgXddJ3Tut+ov2BTwZiHPoxyguDZl3E4ByFVU3ZjmDheEOWX9dpkw2qL5lQruIotqUdy6SJhfBKU53Hl7ce+0ty7qwnh5yl6BzXcbrl2rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJ5L/MX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJ5L/MX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0163C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745502593;
	bh=gYHXkKdpm8Z6buVna86yJAA33GLxFGxU1z2+OWXsxtQ=;
	h=To:Subject:From:Date:From;
	b=bJ5L/MX7PTBwOWPHgaBswSs8Yk/fN82Wl7/CxTWxrQ8rjRrTaRag0Mn7qCULmdso4
	 ZuQg57X8EK9O3z5iZiCSAe0TjkohwEBBYtYRE7pvG3s7icIZOPVC4UuX9aINdDjx5L
	 REvbdA5X2tKEx++2LRYThJf7Yf7b8VMadirDpbLuG/AgFjSjKFhe2nrLs2pmAqmtDV
	 /WBOVkWymX5Zwiigld3wN3s+ffP6z376/r2SBlotIqf2QsdegNBTERAMVvSv58Q0LN
	 ZVFgscstlM7gV8u8XgLvxZ/jkw5cxA9WSKGgmoo2lhlfj5bhLyOL1jBLWJat4mZAn9
	 J8hIyVshe8Wvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E939C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174550259357.3627.9373450812158028104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f7823723292b7ee0315acda7c5949a9d405832d096b8b331226851e4f847d
Date: Thu, 24 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745502593
