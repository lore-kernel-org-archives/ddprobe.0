Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2624B3CDBB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780053154; cv=none; b=tcB8me7e8V/PZp9XVOWSUhsW1lPowjNXpGXz3yEWdcqPX8Zl8Ru/Na91IoJk6g1seqWmN6Amh2Io6sZsPgIWq9JpFGIw1A5J0/G/fXLbnGzXYcAmZj0VCsU43zA5EILoEQS8k2yoWQlRKK7R20PxYTjSyYgmsrB5NqMdOxNboFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780053154; c=relaxed/simple;
	bh=6ZsIRr89bneLuLEATx60Cr7g79JQa2CWKr3zcR0Y3dA=;
	h=To:Subject:From:Message-Id:Date; b=EBfIDfsLFtmhhBWzke42jEVea+cpUSt5Z7jDyAq+cKqWVFHLUGJ709D8Yp1txM5laA7SdznwB9/Me64aPoyXimzWHXnc1GPWehPCoNbuPAB1e9ksQFpXOIUClSAlLFI5qnB2ywXCZrouu/M7ioWErsxhlfuPLLOOGIeNZtloZJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFLS2NAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFLS2NAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C363BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780053153;
	bh=6ZsIRr89bneLuLEATx60Cr7g79JQa2CWKr3zcR0Y3dA=;
	h=To:Subject:From:Date:From;
	b=gFLS2NAzNvM8fueFiEwdCNx3qhf4DzXR7EcTsH+jp6ro1Bge2v1ZgNUoAiUbmkN9W
	 J8usLAdG9IFyoTcTlTK4oQQ9WA+3r0bW6cippsLIHb7BZkmOFk/C1KmEdC2pjIheiz
	 3QkIxv+rktkyD8RUoU8KlLImvQsesNa8lHNB5GZXsUFFvxfIGvXXwP7BraxR+Vx1ap
	 TVXsq/pIMq/JGzzeFUi8W+u0qbNArXnju+nCZ3iLTuP74Y6b7hxr16RfYdnkZlchQq
	 bYp2iWFThPMZiYQF0jMT61WgHKi/EuzwHHjHeugn96mnpgt346pyWCPOhM/TIpeWjZ
	 unrFLBi4EbCcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A9CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005315368.14837.1300865646407945967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f9536f7afbc7e05004d2549f154ebcd79ed49a79c45243bf4f82512bcaf32c
Date: Fri, 29 May 2026 11:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780053153
