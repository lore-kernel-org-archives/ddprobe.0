Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F5233E4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737578753; cv=none; b=J2XWA6xoVi+VfDoQ7zm1mEJBNReiMsK+HUnPo7H3bHHfGMiM2JiXQeIhCn9YqPb5HsXmQDbGtpuyaL7qxtcCwkH9adPt5UEhfhJPnjwAj3NINVN/W2Jw8emobVBuIGXspm/xsjqxD22q6FsxaUhlKd6HNbci3tH9DUqGn/z4294=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737578753; c=relaxed/simple;
	bh=NspFOWGMnYGs0cgMulpBNNAgAUJ97yJBcc1xJT6TH1Y=;
	h=To:Subject:From:Message-Id:Date; b=s6XPwrrR1Yx+ee9CMbv7Bm7C00CbSFdKunjL39i6FKBLkSKlXwR2c3uW5w11QoPRAy/BFC/I08oEyGyHYnqV9i8PQzzQiBDDeKitcCldhMO/3HN4wZdAH5TW6BR0OetPbNXrYbjJ/EPZk+teRmX6hLfbO2hbficGQaJnsVC/hac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbOqDcoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbOqDcoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C32C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737578753;
	bh=NspFOWGMnYGs0cgMulpBNNAgAUJ97yJBcc1xJT6TH1Y=;
	h=To:Subject:From:Date:From;
	b=bbOqDcoF4STw7qopgOa23f8Gxeg4v+3huSghMgUGDbdpL0yeRtWABs8S2uXN8mj8x
	 BCkjySD/lvOHJB0tJ7rKfi079k98XfaE0579mPLtr25XNxnJe08e8Rv4X93E2BfnF2
	 TCSkh4NWeTojJAG9EZQFagGvK8kR+4o/1NqBDnefwIgEfk88T9gPG6EVsPkiVrQH9I
	 hcFOqQCZryuklm4SJZaQozQxoUQR+iT4LBKbfjIDNFukS9jCYtTmVd6C3DrArjSfVc
	 DYpQJSn2jVFF/ofRUEpsTtmvsmqrASOmgFIl4VdiWjmYTH4YX2hMixWOEcikoz2zSN
	 m2YSBU4cKLBpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB0C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757875358.10275.10399187706700947714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ea3ffc51ad5cc9c2c40798c2d91a1e48750df8279cc847b2ea49986480d9a6
Date: Wed, 22 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737578753
