Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3231C244685
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771520694; cv=none; b=ql1AiVcZBV0JxPd05KpSMipShKEC8bzphP/Zf0jLnAmvNi29Z09lsXDWmbP7usJKKpkVmuWzr9TeTuzv3gyF/suACPI5dM8YH7XCbgN0dEUXOwf7i8cNt0DhgUifGS0CMRJwORB6MRZXfG4bl8gLvthYE4M1St6PbrhIW1kV1O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771520694; c=relaxed/simple;
	bh=NWiRCuqY09ZOs82nSu6pDZU49/ZQnwYo8yEw56OSM30=;
	h=To:Subject:From:Message-Id:Date; b=RmGE4eeLCjDTS6aD629l2xRczPYOH3R7RTogdP2LxZg1jDtO+LfPUTaNqTOEs3ToNMQksldpBxG5c9vXabAFYa7YKp3Mlqbjjsx8F+b9ipFtwbyV8q1jOobtCRaIDNIlBvHdePbHRc4G66EHBmD79pYr9rQJcwGGlz0rLCf2hXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlN2sAWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlN2sAWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771520693;
	bh=NWiRCuqY09ZOs82nSu6pDZU49/ZQnwYo8yEw56OSM30=;
	h=To:Subject:From:Date:From;
	b=dlN2sAWaNP4YWpT2Sx93eM8UmYEblfHZqIFJ+7GNxD1qDb6xzFfGM5Sg/BEsuuaIt
	 W4aGtYuz6yhwZ+MwK8LRPTnD05RpWhmzgrO9yTZd/67xiLWO956nBZlJQBbdeDysiJ
	 ce5CivFx/TTSOzByqnr7xyTXJ9o8x9FMoq21+nMLbRawFn17gCNSaWO95gUvR42+h7
	 9tcKSTDma4bJuBO4ZYPLbVCbqpvgx8pVGnXFJTIAMDNdu6wiYW1fhVjfukFZwb92sX
	 IgIwMlplypCOOFYGRVGFOQqfKLNOFn1Z+HD6mI4P9HOfWAMK16A9h/ZLhQq0VFlTOJ
	 TN3Mw0aVH3ALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8771E9A050
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152069366.24111.4539098829472431243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c13d2b07b5b22726c128edbff2ee9e8b14be966136a7b14f8b10ad436f8efd8
Date: Thu, 19 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771520693
