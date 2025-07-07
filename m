Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430FA17D7
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751861994; cv=none; b=n35b+c8MyqjoQQDa1ZFbrus7B2azBK0Cb+jE4VTAXmQDOmeaN8F/mJz0hqxT1vrVnuLNX9ked20H7Fkndb37IvDkIWLOk7X0mxQme42vtht7dQ/k/HrOl5VKsYSdQT6eLzrYCqfPtUax0vfXaapqmN59zKPzrAIsyQmZpe7Udc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751861994; c=relaxed/simple;
	bh=L+UaXMo/N+SXRs/akR04YpDnkVlGbYclw3ns4KMquaQ=;
	h=To:Subject:From:Message-Id:Date; b=KhmR7JGMX1f3S8R4f25r/q/RCsPXwRT6iGciJp/41uY1xpCZ98TeUd+gJctxpRSG8GQa7javs8XObCvypMPa33iQ8mBiGs+JH78naeLewYH5XYFfEf/OFQ54fgCHMKly0Vuj/o6fKXe6soD/vqm60QUxPL2n0U+sYWuACaaJ9qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOoUaMgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOoUaMgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD5DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751861993;
	bh=L+UaXMo/N+SXRs/akR04YpDnkVlGbYclw3ns4KMquaQ=;
	h=To:Subject:From:Date:From;
	b=GOoUaMgtb+chFtRBfqjYqkbj3fchvbwjLL0H6oT7s33RP0EMxSELtKAbN6tl5SQhp
	 M9MrWC2r2zVDQtAzddFXhLgwZEBPAoBkriTzMnxciPh7piUwwgCvgWVvbARMhEJkBN
	 aslmRCHHtKSQcox0l31Q4sJb6vIHQx6pKy/ZIBXcFhyPA9t6RFqtUoyC5uSIaqiI62
	 eABV1OBwhrt1jAqXcuc1Y774y8U83NajEO3klORKve1FV2UYD+oskmXgE9MnxMqKmD
	 7JJ+jWCRLxVVRJ0ELC9WvS7iz9LHLsenIZmHs3k0esPKCvlv9aT3oyu5qsQH8EUTDc
	 3Qx8HdLaSWgvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABFDC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186199360.11084.17459930394583628932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88522c80fc5c9e8c2545b266ed70596241acd44a2e02fc5daee9dcac11d736a4
Date: Mon, 07 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751861993
