Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F8C244660
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781987794; cv=none; b=c/8qJSya9SuTLVmc/6hH3+R31OEvpkasH5LnwzD/y5QOjwidT0zgPcdpYTEXej3xHezcicFlXLd04pncB0HndLzLZG/Ej64Gj0jMW1+rMTkB64Q8YpUCUd540OjDDVB8IJDOHwlFywcHBYqf5UDC0fk0sr3CLDh2Rk90jcUvQuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781987794; c=relaxed/simple;
	bh=rafCRbbCan/zkX7MdEDt3xlTcySe/IQZSfNCfJ7yr9E=;
	h=To:Subject:From:Message-Id:Date; b=k+9QrSD6yzBQG0QuRHXxWbKLBlhuL5lmoHpOafMk5Hq6GScNsblxLPTm8aXY6DzG9jWLZUqkGFpG8tuZQklWSuRtFzciaMXyoFmwxivp30GCAPPX7qzVbTZ4riO9Og82iItFKyaVapi2CMPRayAmj/TtkYq4kJmFeRVTU5cWnOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJIuIyf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJIuIyf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B7AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781987793;
	bh=rafCRbbCan/zkX7MdEDt3xlTcySe/IQZSfNCfJ7yr9E=;
	h=To:Subject:From:Date:From;
	b=aJIuIyf8l/db9vRb61Q7NTflKoglleQC/bUtLWZaW0oJ+cALlnWph2bm0WLRJv5oe
	 64SQGWwf0h5pajbK4tyLsgKzt4pzAo7Q1Dcs08QRv+ljF1SQkMzvpaINLOxLKJ0udf
	 Fhm8iZEQZ728cBgdQuoMN5BwUT7vX/vvyiee5BjHSVAGoSpUvhPZtAdTNxrA8StGfP
	 Dp26Glrh8/+ilxZpRYpCq1YZb3yxJfcKmq3pv0+snHn/g3VmLJiarlz/jhtvA2/XdV
	 UmM0s+6FDf/8cMNkTffCrCmg9NO2nMyd9jSnHI7sChCgqmk3r6TWXXSb0mRFHoSx+F
	 k9OHMOI5CXWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA18CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198779368.6858.12305632688411943292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1b0a4bdc6dd0e57025840062e70ac4594b934ecea1a1f05059cbefbb89cac4
Date: Sat, 20 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781987793
