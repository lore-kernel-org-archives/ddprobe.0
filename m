Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141857E0FF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769036634; cv=none; b=AhncRPPtQR9Ez/o9JwXlHlmF229QM67vxZpwTxRDQgQ6m3Ta8JPbmW9a2ZfZ1nZEUcL41E2yJBctCeKv1kRHcHyWKq+kpENbksUUdmCm57l/Yu+V1ASz6RoYd4cvHW2qCNBeyY/tY3enK5QAf2tRT3hQbFBbhDKL6Pvl1OfePac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769036634; c=relaxed/simple;
	bh=sZlCMDfU3aKeTCbNyL6036njFOqMDVFVSmmEqWLLqUU=;
	h=To:Subject:From:Message-Id:Date; b=ivsw1YqeHEcznJLwhv/pGNpld7YqUcelmdpQxPqZgGOseJX88gXr5bR8lN5nAwYZwnNUe531GhIHBFDAwvnkAqLTZL/eM2He4qS1ucjCh19RzG0g4uFw/5kBtR6RD4PhRJMFO6Uzz09EgzVU7jfxvgV+LX5ghcwrFiDZXmV3hkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KME3Zbcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KME3Zbcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC425C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769036633;
	bh=sZlCMDfU3aKeTCbNyL6036njFOqMDVFVSmmEqWLLqUU=;
	h=To:Subject:From:Date:From;
	b=KME3ZbcbVr+oikLYSmjjvWbt4rk7hiOCziMOkTDFj5/EA9KYZUwE/zA0Fa7FYu1Z4
	 9+eESkwxv3M5qKLTC+KIRyi+vCvVQIEV/4raAp8z+CyB2HGdtLQXmlro0QH7gQYdYk
	 vH3anhAKiHN30NAxs6e1P29T3R8mVJlboH0cGaMvh9BU4YZWaJhUSxBhw+8IYD3CYj
	 QCDZHWbAD3sFZlhjVZgcPbLDesL5jSBguSZbV1X6TSjDWAcCpd8Cyi4NDIVvgqydgP
	 JNBErmGE15MWptSGoDBfV5TeaQmM7xRCT4ObfDplv3zDe7hsHqYLQLLAQ72RsJW+60
	 AINr8QmTxTwDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B4C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903663358.4801.10510919059507156037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f78eecaf3b534466da6f4ec7a93b7010916a642ca76b430b5b8f5bee9321c00
Date: Wed, 21 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769036633
