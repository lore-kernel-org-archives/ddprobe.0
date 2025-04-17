Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229B28460
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744889995; cv=none; b=BtEW2HdyLybuQ1OMTrT/B0xrA1P2QQooTvEUEH9b3XHBxLaiNUHPDQsvKwd1UhMRRFhh/YcrxqtkkMXzhAoZxewHARPFIEzPuZVIQEsoGYRMca1G5AzpvQSsmxaPO7U0ppI4VhDWLNMQryt1NJPXHGp9zLkEGPhAp5WmWvQZoAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744889995; c=relaxed/simple;
	bh=nyaSDgKJ0RjhFavmzTgRvFfM35ak0QGb3tpEOtOjZ0k=;
	h=To:Subject:From:Message-Id:Date; b=nUUkM+Y8NLe9UmcDILx5Z649tYkUJB8mQaNctZOkxl0FG4U/3NmLmlpHA96dIHp53B+cSZ69iQ0G/QA8/DaDvsf631GAdfYab1p3jN+caWdC5kaxZ0Wf1uP5DJ2Pq5aagLCRePasJ7yXWPlzzGSIppkBQwPuZgQUJllY2tk5uD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Swtm2FT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Swtm2FT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E08EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744889993;
	bh=nyaSDgKJ0RjhFavmzTgRvFfM35ak0QGb3tpEOtOjZ0k=;
	h=To:Subject:From:Date:From;
	b=Swtm2FT5IzHkm8U0lQ7Fr/PIfntS4wwTBxUl3tVb8oUFtFJafFc5mEhaMzIreIgd4
	 SFziYqEcOM8KKv82cFdj+AJhuQWIzC2RwecMNFgoSFZ8JrP0FUCgIznvL92cDea7uq
	 7V/XwRVYphYwuxt9Na5p/xCgiqFB2fkE//NN6/RXjw+N7L1/JKbCok82WHy4LWQAD4
	 Lchcp6QbJuFtGTom407PYHMK8q+1U2vPU5SrqKMvpT7utTnue4u80Ku6nQGuY/ulbE
	 ArOCkzTKLhnpDli2ppNNhD23pdaqavkgmpuOjsTyCk/AaC/xAC8+KENiHACNKzKurW
	 csI27R3kjAQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9732CC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488999361.17140.3220041358305736941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8f4cb5da62e7127196457952134f40b7f613426026402f2495257564f4375a
Date: Thu, 17 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744889993
