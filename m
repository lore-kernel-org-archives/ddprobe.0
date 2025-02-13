Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FFC23BE
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739423334; cv=none; b=IFI2Wuzel50UsCqJSulxNqGupsMHEizN4Ol33Evy6JWWujN08NNSxPvYPxbhJWwm2gcxXitS7DQQ51f/S5PJIXemnJ9uC0yaQAFEmImKiipcG3npR4YtJ1NZlDqOyvoKBHAgpveBshohjapZMcUiJMDZyNnSHIwn4NfIVdNIPbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739423334; c=relaxed/simple;
	bh=9+Ct3zenH6eElhz40N7zJG3Rlb4StQ+oaBuYlNTnuy8=;
	h=To:Subject:From:Message-Id:Date; b=BuPj8lk80G1Qmzs2Evc91NSEyOQ7jXiID+SGoGObrVV2G5dtnk0sSc1kRi8Q7cXZuCK+ourqpVPNGZlGH7Ufqqn88pzYhsqbOs9z20yfbigiJW3HINgSz+FqMFIie0OpbijxcjN1OgEWhc8yivcvrpf4HMtLEy03q2ErmzSHyYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUq+vfwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUq+vfwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C13C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739423333;
	bh=9+Ct3zenH6eElhz40N7zJG3Rlb4StQ+oaBuYlNTnuy8=;
	h=To:Subject:From:Date:From;
	b=QUq+vfwPyPoZA3HIpWblmwZ32DGQJkKuWVev3VPtPMKkyHHNrndec0Q8C94yaJBjW
	 GQDA7X6WhxZAD/4w7sSncF0iEUyWPlNduChdC3JqtFEj7gl/uILF9DLHG8TJ5K6yaF
	 RnCZk7pXHozvcFpis8FGTSG931fCBubx3GtFEA5PR94MxU1p45hgMiM9vr+y+lTGWk
	 I3JxJ+kkYRKbHntenU0f+pZ7UDB3mvCOKxyX1YabxkWW6xKc5Gcq2gM2buB6QhMffU
	 ShBGEZZKrCh4XPygB8Ed5DTl4DnihkoV3OFzSkS78U0berNyldMsO4SXqrzFx2fj14
	 LtcvOCyjVr3Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2465C021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942333364.18038.2405494238286603796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4843998dfd34be8ad5cb26d94fc174bbaa793fb1cc890ce4b4c4599d143d464
Date: Thu, 13 Feb 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739423333
