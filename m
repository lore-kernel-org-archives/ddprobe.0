Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224E2184
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727873155; cv=none; b=MijCs/O3O8orperKVRgKXJdtK4Ub9gMFbQgTFChyN+HDSz3QTYBFEaF9X2LMacL64i2FaGOK5wxeXf6ue38gVvpGSW1BZP3RxMffXFkxrIjJ5p9+AdS2xkaRnznhH+0KwTQhBsjzhfeXqmCWvplDRHF43klL2snfHhFYy+DRCxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727873155; c=relaxed/simple;
	bh=Osk/hD+7nX+0TwON5sc/cd2Fysb2dHpEawJ/ruMb4Aw=;
	h=To:Subject:From:Message-Id:Date; b=LzkT0twkAj/cCvF/Ex2szkdvZfnP9+dj0lSkPT8TLmXG19GD9NIAqYBXx6hHN8MoYN6q78vB5Q0hY0zoo5WF5O6Mu6LGvWUyMRsaM6agn3fX3q5XuhH56/8FLz8uPeVsa51dXg/+5RisKoxJ0rc9oTgHOwZjRpOg7RxD754+seo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrPFJeEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrPFJeEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5ECC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727873154;
	bh=Osk/hD+7nX+0TwON5sc/cd2Fysb2dHpEawJ/ruMb4Aw=;
	h=To:Subject:From:Date:From;
	b=qrPFJeECDgjvRNVRDBby8uarw3kH2ukCC3XV0/lXTLBdsm0xjbUwoZvgDr4Krylka
	 EWRPDAJfcNoo6eXoH16EGePYm/FF3tUEijFlC4xu3KbIDP1YEQL0YeBYeOi86/nNCA
	 KRcPqD4bHRlACx72p+pquFuJGPGWjz24C/NK1L0A+D/3nFP8dIR4x3K0qY3PRwjq47
	 hqMHvIbeIy3PiiYQkGFoy8cMtVRbT3WIPWfqfLjCgNHY60CKGILGJIgrPmDoB7++YP
	 LYasxZXB3UnQnFAdXDG2wmYOo5CSF+FjbSsL8Lo4m2ft6yfMfQbiYtkRrO6cZT6XS2
	 DygzbmZV+OMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997CACF31B4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787315361.10830.17409528422898449945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc580bdefcaab5ad67d96a3b0fb327ec34f0bd242eb5134b37b2776f0813418
Date: Wed, 02 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727873153
