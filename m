Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ADB20010C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747209593; cv=none; b=LEFHyZPNR3f4K9hBqnuYHpEwn3sUESvspnPw1L9P82Cq225+UBaKYt5xKEYGLL3VepUuPsM5s72+vV2lDG0OX8EL8SrfLebAoaGjlLDeLVCxgjpc06U+WDtPJq+yeaot2Y9Dw/tJKaxjyoWCPHhZLbYlATsGKFFWsziISCKSV1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747209593; c=relaxed/simple;
	bh=y8bDu8fhznwSWVTD/wxS0jc+IG+WKiqwx8H/Iz5C+X0=;
	h=To:Subject:From:Message-Id:Date; b=L1NvD/QpL3j4nqnBh6kJ8D9/TgBW+8xQcCQ2Mt8DPm/kByqIUs7UK2MQTh9pWl8zlCRfY3PkRTykxTP2ZIqH1VbGDrsw1JIkPZAoPq+mxc8KYRWht1gXyIsQMRNu4r/0ij9YNX/8rqhI8Av/rrLqmQ2oE00a6skGw+SHiPRUxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqYWSzc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqYWSzc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0922C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747209593;
	bh=y8bDu8fhznwSWVTD/wxS0jc+IG+WKiqwx8H/Iz5C+X0=;
	h=To:Subject:From:Date:From;
	b=gqYWSzc35z9VMwWwSLnnu1+820NVy+kQ3VWDQ0CvQI7gkhnwIdZkvbZL9o9PyAhew
	 2HKcLBMqx2I4g3Wv/P74I4zJeWKzymca8U9FQiRZivIA9TvYMwCl3GZiFNBMC/mjyG
	 UgLUqDBvkmCI7o+7ZQ+y8JVNHWmaXkOO6l1CRVDGGkDvhtCTQlq14sraO/zk7E8oA2
	 MXnyaq2kVzV7AnmeeHV+YgQla4G4H2f68FBJaWPNZv3+C0xD4DfNFnYs1pW1F5uJ4D
	 qEErVY1/nLS76PbOfBtKFRMiyPmdU9O0r6jlzKlZRTz74OJsmyi3z5669ri5dj7lHl
	 JtZsH2GCy8XsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36FC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720959357.31807.14933029765237814562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7823f21530972f762bb5695875875c8a42b3a43cb6b7af99c9539fad8835fff5
Date: Wed, 14 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747209593
