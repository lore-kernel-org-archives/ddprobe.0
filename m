Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438D729B0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750393194; cv=none; b=EGs/HGvKhKtul54ontsKeipFDn7LJqHv2ii4Vt6w4dZ1A1dDDrLKguupmtd0IgXp2U/Bg5Pl6+Aq9D6xsDN8bl7YK7M7vAgMfTTmx2iezHMYiQsqojekNuvzwZ/Y0gI925gyaRDDdtq1T6RTomtVHlrVfCl4WkwfYO+z10zckA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750393194; c=relaxed/simple;
	bh=74f29JbY2Ir5JvZYbpsUdRLOHHmjC2CvL528r5FVO3Q=;
	h=To:Subject:From:Message-Id:Date; b=lBEsefRP9e394sQXgVoRizOdsYpLsKj+6aBiF0dA7xSA3wkwX3+CTCxp2M/wrRyUafn2rAnTzuJGPhBecBUtvE7O2a0VahyqTG+dbhdVK/PXFMUfv1Y/SbgxXvIbp12XE4xdPIVK3qSnjYoHleihGDDxwn2s5lL++WlvLlB0GxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osDTU6wP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osDTU6wP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750393193;
	bh=74f29JbY2Ir5JvZYbpsUdRLOHHmjC2CvL528r5FVO3Q=;
	h=To:Subject:From:Date:From;
	b=osDTU6wPZazmTCALAuFb8rhgsjJcv4gJFYanOeG9mz+c64jVUVWjLiqNFA28MmjJl
	 1BKd8IYOEolG+2UqJKa59syVOVno76sJ8Fbu8//roQGoU6vMLriYkd5UQFAl2XG7Af
	 qUQC8HRTghiqlT44r6V1FAgTijrG92stnoPj8jbk4eublecu/1Okcj2iVntRKHUBWV
	 HnlxRjqYK4hlQnNN66Vl0D2pGe+U3IFp6KAxdTmgIjElBcH0twplbT3zlJSfiZSv6I
	 qB/IVDVWSubqe5Q306Q7uSm370T7QY6lk8KGFi/7Qg9t/K5oUbOABXQ6eRki4ANLMB
	 ZZ/lTIXYQDZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987BDC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039319360.31525.2491713861689890677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af9cea75d398d88939c35d3108af4a18bed94037ae9799853fb49790eb5a162
Date: Fri, 20 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750393193
