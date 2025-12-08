Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277E6136672
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765177974; cv=none; b=oTsb56ziyF0AiHl04dQnUnInv+lsUMYl3nqFBViSwGfRraN1NO8KDZQD9LhRcd65qz7R6MCe8sO5uRdfNJvAuCDOQe50bD6ye59MsU/aPLSxXFXZP6A2iatFh5aYdxvJx/SVn8LuWaC5GOhScDbn9X/9A/zU814DOYCnnKRZHUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765177974; c=relaxed/simple;
	bh=foAPrZao92LeRKSpkq7LAOlAvXLW5huYxwtNm5FIbV0=;
	h=To:Subject:From:Message-Id:Date; b=SAxVsEko5AvdaJBAt31am9QJ644U8bMYT3hf3gaqjITst1iiHt1fWe7f8MIlzWRU0LgZ2zdy2fKQdgt6QxP18vXbxISWiAeJNxJsX+YtgdFA1S+oFCmVM/oDGROfQa6+yx5ZDoAsCbh8Q93JUcfVVXQjuNlYTBhxajJjjd9/nXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nV1M7z37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nV1M7z37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E54C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765177973;
	bh=foAPrZao92LeRKSpkq7LAOlAvXLW5huYxwtNm5FIbV0=;
	h=To:Subject:From:Date:From;
	b=nV1M7z37Khxnw6dsbEAEKg0JW1ltjmZoDUx8Le5jmvmBX/BFIhLtmco5OShJp64PZ
	 +fSmnlr4y+T+p+AItGZUVkhxI4zlOlbAg//jejHW0oheGouR5ygKs0IOXK1RLX0Ox2
	 Lyx1WypEyMeJ9qUqFmMajJoOo3HM3dByQEuWrOdYPeZ3LqKNozMkZVel4M4hqr4Rky
	 EW3htlviowazugAmYtMckmcqJrxLwFmknQqpAnl1G/y+O270S7Cr0ktoBAGTt7LBlZ
	 LOmcSUIdIgG8vCxb/v2jTOVGBB0OhAUS3NO3cUKIYtsI413Iaqqic+XbDGja0ta3OH
	 9eVL11M52b+PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCED3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517797358.25339.7572961275829342487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d3f22419963b50965d1d28ac1ac2309238aeed4d074b94c279d93e80511a01
Date: Mon, 08 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765177973
