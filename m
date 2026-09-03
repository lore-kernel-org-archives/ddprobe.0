Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6A52D5C83
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788397234; cv=none; b=NEhKR4W1zJlR7u1+2QKPNkQKbEDAQfKZ0+0ZWNaeuwaMT84t4+foF51fCYWRJZCxo3FaXi+TZgeqbuK7axHhKyQAEBlShAQa92RVQrrRH2/ajPiqD2z/TK0mIdIWAciWRVZ0cCMfpRaBZhq/68BqHWDApGP10APeKBcnwQBwd8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788397234; c=relaxed/simple;
	bh=ujmCPryKV45v259W+klg1Mvb+43hwULfoZ2iq1kF5w8=;
	h=To:Subject:From:Message-Id:Date; b=FeK8HV+bHaTKNGmIo2ePhO4CacPJghJ1BGck2ccpu5p54XUlb+Ca6SiRcdj+PH5BJSqpHrqueco54xGBa0j2v0gs0m1kCEt9PsWmLVmtGQQV2QvdWqiuYhjfioxf3iOJHsxGOBkm2+peaNZUgRhHUapWyJlYM6wewyiauODp4Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab/8W+CZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab/8W+CZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5375C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788397233;
	bh=ujmCPryKV45v259W+klg1Mvb+43hwULfoZ2iq1kF5w8=;
	h=To:Subject:From:Date:From;
	b=ab/8W+CZ+/S196AS0lERwkJsh9pAjarWPuo3K7K5BHXBqIgQxMKCJQZeXf/8FxO8w
	 /lgduMXJKhCIcESo1fNRL6PVisEaMjucH4R68Xde1tSZnLGDa+qS/nmVMZOEqpeeDb
	 1AGwVDRhEE12A8KNwH/dM3MOGuNMkQ3SZodprdXULMj/2EfGRprRSbUYXrbVPjjfBd
	 tIefYq/u/ALOEvb50HSYIvGrwDf3E9KtVwNrwa/fgGnNYqZMVAkGAKYUgsLetoT6uz
	 T6SWRpt5TXtn2XUmCnTWd16wgRAmMWEC5NyFksoMFayyQcAAXaPH0mcYuzatSKMPVl
	 x2j8TnOatHtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B8C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839723369.25337.14305178526579352459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40dee1405f609b8165341ad7d6bff812cb7699715ddf1b3a4e3eeb42bb6c525
Date: Thu, 03 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788397233
