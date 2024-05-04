Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1D722EE9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714828943; cv=none; b=SAZQwk8s8xXnHIpvymmVAxFDvVYKr67BG6g6mbmXPU93ODT0wIp1bZdw5un9ebdn2v8K5y3h8vIWKZdAeR+IJ9pW80HGkzUGl6tGXC1CcqnncgFqsQonyzn0DfvAjTxY3kUp2GFjUesP2HZO5ItqXBuhplyETIYzdkiSuNxrELA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714828943; c=relaxed/simple;
	bh=/Dg+uN2Vs/BSm7vgsTp01QNDcbvdOSHa19ZwTMGGfSE=;
	h=To:Subject:From:Message-Id:Date; b=SZJ8dsW0RO8gFvm7J6poYSxQZ9Re12h9uaB6PO9iDzi++Er5WUlk/SwfUtj0HCfr7ptL2XZqZ5tBT6BZyvPhGFdoi3JEhWRn1k1skX2kSox4fhFwjKGBK8FwDjEfjXYQH/T7KLzg7D732sRCb+oMTCN5/8ALIsv/nMKit37hhH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJHaHxez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJHaHxez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF34FC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714828942;
	bh=/Dg+uN2Vs/BSm7vgsTp01QNDcbvdOSHa19ZwTMGGfSE=;
	h=To:Subject:From:Date:From;
	b=tJHaHxezW1vvTnjBynp0bLfF1qTCzIDkeQvZfBk9REmwyuzgFcaAZAPBfAh9t8c44
	 IbL8YxP8pPEdNjHawRPhzRKryKjAWDJxSCxneTtlPYxeAYVX+dsPJvk6WWn+hfCVot
	 L8aqJDoH/ttGUq9nl7qp1k/oDgX8njZjr8sFOL8PTPuQH6Zxpwc11Rom43GeLpErn4
	 aJxT966SgUHSbfINYEkgZTimqCMFkXxWgob6s1sFEnIIic1PciAw5rhHd9Ta2+eVLn
	 QktLQn5wkZ/gH/WqShkvYffED4ncFLpew+lbPzdYdMw0m6mLsrj603HaCGGIqP+PeZ
	 eQOjAPUAOYC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D02C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482894275.16294.9508305028138020685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18073b598448dc8886cf94ec6ce92850319e8ca3d1b098e31e9a685e8788932
Date: Sat, 04 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714828942
