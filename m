Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294037DA7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743960594; cv=none; b=HyPtSMEiNR6Ve0MUS7pOS2E9H81tV4GEC+6ZET/Iil8D6SdvW9qQpyKrhsuSJyfRI/00bGR3xj7+seAU1STOpKlfdA5NxJk5/MAHx8h8EVn1dZ/Af/9zoZsB3UFO7tEFZLCdaF+cVXFuUiTTEzxygAJJr9Zw2Jv2ykO6shs8M3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743960594; c=relaxed/simple;
	bh=9jkqORfCUrfOLyZPsp/AELvRU9WjAdriKy2uQpBiqjM=;
	h=To:Subject:From:Message-Id:Date; b=tbtHLVZrdbtjEdA81X6iUQGpUIGTCEekv+DULZ7Q23GAyQnGfr35IeWwO18C684drywoxAbJYgLqWCk+reKTlyKrIWml4ZYI0KUxAjesCeWs1ZPIq59BlSu9hxuGaHRGz7NMurKRWVicOnyI+HKnNmy47sp68IwGSIrXRIiUl8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMkGmF1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMkGmF1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C33C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743960593;
	bh=9jkqORfCUrfOLyZPsp/AELvRU9WjAdriKy2uQpBiqjM=;
	h=To:Subject:From:Date:From;
	b=mMkGmF1CnA9nZlsQVM1j2VYkevs5X2svQZ9vaL8olKc8fUky2PhXpa7vMTTnlRBR0
	 O+KutimCq9q1c3GWlREJb2QphFWva4mwuqAFLA3WJBRlybe32zJL6/aYcfNxjZwqa1
	 QQi+kXma6QtXr+PVbnTNaHsD1SBLL32NPmG2OkNIxQWyuZ03JN4V8EZIE01U/NWLvs
	 EFTn4huP8vbhtuc/PHuHE750St5XJS7IcCvO1NHh0p7/rvXRZsYB8Inz9+grNsdO9O
	 Xv0W61UwTwj/cnRG/ZqmUSE+y+TWfWDtvFW6TUho2HXjQ3GJG4k+Q0aOEejuCl+fbA
	 yZhBvhhDTzmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91229C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396059358.23257.6512476125049456155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8e17bfd1176735a5e833225184c34c98b1cbe91001cf538a5eb03103553e7f
Date: Sun, 06 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743960593
