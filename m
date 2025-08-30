Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E711C5F39
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756596594; cv=none; b=S2ZBPAVgugOw+MMbQQBrf3w58cuh6K/YIMsuGaJvnO9TB4udTmgoqf1YUCqHsj9/gaPmcjIEqjARUKPLcSloCs9k/99mYzyk417VWYQM09IMq3bhZf8iJS4J0fV62njEGyu0BM8V5WmfKCBfUOn0gSFzJJXvWqOkYx1Qh8dK5+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756596594; c=relaxed/simple;
	bh=LBOL9Y/4lRCl6BYbrQ9ne5yt07vH6u69CU2kBCeW9K8=;
	h=To:Subject:From:Message-Id:Date; b=UBBGo7apjPsgAXiP3yH2pf0TPbo8WfZjZXZPTWgucCUJmHZhGE85U149vaqlNiyeWitYHQEEUO3ekAEgWgjsI0JBNdDB3JNLMrxBj6HeVtPfXT3N1qSVYzZiRh1KZc+G5p4aX/YYk8Zzux1mfotqpXCuXDD48pjDMUaXo+8hbLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8cJH17l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8cJH17l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B68C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756596593;
	bh=LBOL9Y/4lRCl6BYbrQ9ne5yt07vH6u69CU2kBCeW9K8=;
	h=To:Subject:From:Date:From;
	b=a8cJH17lD0vqeUNwKTl5qovhvhbV0vtvmej5vbIQ6q3pa7fNtK/+GlrqYJlHSowHV
	 Jcqop3G4iyV9w71UDtXWmhO3FaiGsuvTp9AL/RvjCUUD8SEAaOb+vI2IXj6y5AyOzc
	 ua3/jZAdqfOtKvZA+Hc0BhHra9Jbb+abfICp9gGhWVURIETFCHYtzspya3er61ujLF
	 y2vAGQPV+NNsxThRTuLqH6WdJ0wkZ+MD3z8ya6dspbSDyewPfZQBkeAiNhTKpu0f73
	 mazqGih5I+8hBI7bvjVWIPGMPXir01hxEBn4+j1FlGojsYt5kj47mWXZoy+q3nMsq7
	 nKDTfH6Qr9Emw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C5CA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659659357.28172.1521992864954412264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5449876855bad63f11f037bdcb9a8bb53faa22c4ed809ff2af35de4663c8e0
Date: Sat, 30 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756596593
