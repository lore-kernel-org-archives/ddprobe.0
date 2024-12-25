Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2350411CA0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735090554; cv=none; b=IaIEbcQ44YtqvhpILQQXOt7hL05KDLYi0ZdaFg+y6ZdkUN8pbuo4r7Nzvf/lWxZEY73zKTUgOArQGPiSm1tKwtUbeYrapTKk8ggCMEVqPg/8Qg5J2QTx9t+L9Xa43Vu+b21FNrwe1TpcBGUhuIA/nY/pv51xxSb0NFr6o8siAww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735090554; c=relaxed/simple;
	bh=vouu/pF0I4hArbvu3d9CYoiUVghQe5a+z8qn4OdT/fw=;
	h=To:Subject:From:Message-Id:Date; b=R/w8jYRQGiIkWQ7s/kx/MCkzmJtmf9sT8uNuH01h1oCj7LH+1GIQt8S+6hJv2KvsCa+KPXEuNL/IlmboRiQXfMKUn7ClifE7L2SjcBq3c1wDEUJLUIVhCB9gPSoF5MUtTav4bHBVqRkGZBuQ80SbNG+dsY9JGNY+rvb3DvK3BsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trJ9/pAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trJ9/pAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB90C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735090553;
	bh=vouu/pF0I4hArbvu3d9CYoiUVghQe5a+z8qn4OdT/fw=;
	h=To:Subject:From:Date:From;
	b=trJ9/pAwWDphZlMZAufwDR/Vrj4SH2Hcp5t/3JiDMZmscU52eFfknn0ILvTioS2kd
	 zXCelFWnL9n8jGQAnD5qvE5MnBTqcGa7r8ecQC1glVY+djK33pkl1TqCUBn6f21u35
	 Ty7dVSEJ5a9XfAdhJt9bKKQQ7RzhovGEpJssR5hnPtkUyHFHXS+jDjVydtdM+621VH
	 QTAn8GUdtPAX2TjHmgQEFSfpMfildxxa9eHJ+iCjaa3P2hu76eIGb3bRWyBi7FH3Eg
	 cELW/Hr1+oSpkwZN2MLR1peamBPquBv/qGCVYrzsVbpE1nv4HHDL8juypmUHo3LoVp
	 hIyvEwbg3MxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93292E77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173509055358.32149.12107513539362775402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adad6e6cff86c398d7640261ab84b583908d5e4f5ebd1da32c03077d35e8a68
Date: Wed, 25 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735090553
