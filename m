Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0DC2E5B2A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782212194; cv=none; b=YBrk3ohFc0Ii5lF3y2wid4Zp5ZiLHTImMGf97pNxTFOYa/1OrZedNx0dlRTWpS/6Nbc5EheFJGI5Elsz/hJifpgj11QUzohzyDKGNixXzhCXcH1L5x/ULRNHYU+8D08GHlpsHWLljbATNjIsoOCVa5ElwBNj+lVpQFAFs4S/h2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782212194; c=relaxed/simple;
	bh=WQP4DnnfW4lYgLwF3Uq7H4zvsiuBKgwULygAUpPzRyQ=;
	h=To:Subject:From:Message-Id:Date; b=MlK2PEkt1Bf2lNL30+hsudZVG53GXfpRqV17aPQ7F+CClpa+eb/XTjPQzKDWr4EiPv+SJT9/jm7Pxbw7A7fHfL7gv6XlDqZ+GoVIg972yIcVozjis2ZpL+I4TKYZm4zweYjPe3P21lq9erDIbeRJu4JbZ6nQCzE+tVr0e9Jhijo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGC21Hdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGC21Hdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782212193;
	bh=WQP4DnnfW4lYgLwF3Uq7H4zvsiuBKgwULygAUpPzRyQ=;
	h=To:Subject:From:Date:From;
	b=qGC21Hdye13J+jx2j4fNP3MwfqcILHjRO5C3jqJjeDtMSZ8pTl/30Ou3JjEe3nEW7
	 Xjm/UkU35Jrkok4kX2xjHnU/LHwUM6bYPGjA7wVhVqZ3ETjDEqjwTLx9C78yWEhFBU
	 CSQdbyjSbbgLUO/5rDCSgBzBwEN0sEDbjyQmSZP18CuR3Q2+SbsIZm428mB0e31V/6
	 KslDGlol4WnnpZY3h1xhmdHbu1aV0ixA+lOwdFNofRXJpUY3S96qrJb8fY8G7+GUH/
	 OzjiUWLpjTYSdqvCHJGKtBMotiv2CeflScg4LV6zj0BrHFDysi2rNoqKsmDoXHHxif
	 8yTTl3v8Iy62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF26CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221219370.13585.11862026669960290602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2608d9e7186230848f063fa2b04ddda59ba0564c612638ceeb7e86fb05d456
Date: Tue, 23 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782212193
