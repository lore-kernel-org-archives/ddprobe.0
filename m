Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D9A35E950
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776449854; cv=none; b=IjT0Wkf1STHHMyVg5AoAFcSUbp7SSUWCg/ePFMS+CqX7fvJ5DUjuDvuwhthKMhpaqsRsitYKKDpJuC0Xn1pnRyAKUDc61nruCmwlZAr0/Jcy1/O/UDVPUtUjL+jtIHuDmxji7VNh7DbEiGmnpT6z9/BKriPzL6BIYMRJvo+iaIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776449854; c=relaxed/simple;
	bh=CmnBYgIEFFd3U5T9nMoHVF7lyy0yrjumy14V7mjgrIM=;
	h=To:Subject:From:Message-Id:Date; b=PUQcMzMF8FdytjrHMx5gbHC+ADldpM2xYWItYjUzL8pFRW7yw5cxgBmbG/I9EeglKupA+Bo6RDKN1FnvdoDbTBeHI1c+4ANX6/KQrVSq1MHonOdUey9/AsSbbqopRDrqsqmLgCVW8qFPI4Kui4g3hNM2zBKRGB5A8LDbEGJJdfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcuJQM33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcuJQM33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC2CC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776449853;
	bh=CmnBYgIEFFd3U5T9nMoHVF7lyy0yrjumy14V7mjgrIM=;
	h=To:Subject:From:Date:From;
	b=LcuJQM33OX8mXstd2HgQb7k+q7lDXovO9hPmyZqKthb5g0b7cPMULKyt5CErwwSJd
	 syVlNP84YGVShbKHRIbzZ3Pg8hNegKw4YUCvI72JyzM2Dk8uwQ75WgVFJQdMXAQ+0t
	 mc8TRGuOxvPa0r6pmX+PljlR/MMrZTimj+ybPcAAHuWoz///2vKh6hpX3l1UPhg8V/
	 pdG0eBwCx6/SNoiH53T9t80L8L5/1Zzta5RcRt+mV+5iLIcy7Mb0hMRVz7GFM55jHN
	 u9Jz5riuvtbpP5+1bxRnbCC7pIRVK5UY10w3pHmIYG1P22PujQTvj8LxNksGG4/dq/
	 ouYydtJgR3OiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9A3F436BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644985368.8843.4721793631069157955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03747f0f912e02f5ccc3ee6cdbd331f7341a33055df0cb7953e3d2b936d641c
Date: Fri, 17 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776449853
