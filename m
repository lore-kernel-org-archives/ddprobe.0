Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A403D4130
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786876834; cv=none; b=DxcetmzZ913isbFXa1PY7wnWTvUZlcxugOUQW4ZtYc7lMGHK57iQzIMezdFS4iE/SDUBejZIFglfSjQ7W/AmfcaKw5v3mM3Kn2ZBGflrtJO/RagomYy36Mv5TJtrZf+x0pjhWiCqNe4rcPpnmLFYBOUE6azWBZGNuRz650Ip0oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786876834; c=relaxed/simple;
	bh=09jV+EYGdRn5sWr45F6TrT+RN0EKR0QSRUQ2NMUnG0c=;
	h=To:Subject:From:Message-Id:Date; b=Ea2dbrclck/1ljY9bjo/2UfZxoD7ctq2GtUpdmRoNNb4TQSFP3/LMlhsYC7IYNQQ1Eb0SxZ+VxrSLwsNIHocBYVb5gDNMj8LEmCwlwjZcKoGCk+7N/5zmHZdILTx7mGULOEdVFFXjiL9kNm+x32lteYblbNSsdPkGB1kZbzfSOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFcoJek7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFcoJek7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E721DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786876833;
	bh=09jV+EYGdRn5sWr45F6TrT+RN0EKR0QSRUQ2NMUnG0c=;
	h=To:Subject:From:Date:From;
	b=AFcoJek790KukcehFwEBk6RtFCsgFCcmthGNt7YEA1qxXTsLT/O9U9U/Vlu9lRl10
	 woM0hAx6JYD8Mbw/LW2mH1/aO1Tus0QQT10OquGK4qTcPXBGT6/RT01lgP9SgvIVHY
	 H37Ol7lJKjliBJS6WRMLj2SheEWw0Oesdc0xPao1D96TdJYZmOAIdei+k/uBIagPkk
	 Wv6U8td6ykIktkRFiSGlT2Yw9XqMcOTADtzcn73uvN1a8OlDuNMxHLXLxg3h5odYse
	 PUF1GOvwuWEj4LF1tOPrbHJXxVFPhsu59P7eeXsFnP8k5TfsRfh33I6FEYeU0LTdsZ
	 6x//Wo5o6HPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB97C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687683372.25487.3946459337743607308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1083d09066e48d5245e776f28ca8f89b44ad10f5954f3ac2f29d6248fb966e2a
Date: Sun, 16 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786876833
