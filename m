Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BA1EEDA
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708909097; cv=none; b=GVhxl5GS/omo6RD1QVMmXM0ZsobBKEV7pf1QUPeA/EEDVB89HktOxOaARIOlJV0ixkZhDaAI9aKlmAGw/+s246MQn5WtO4Gna6oLQ80gKZQUvxCppWdQIHYGkr1wjGNT7f4e4d11eloTfCdcL7fk7PB9pN+fwc7NhATK8YA/uKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708909097; c=relaxed/simple;
	bh=djwaLCbcDeMWKEqmRRQJB6TYTCyf4Qj+UtUK8helHyQ=;
	h=To:Subject:From:Message-Id:Date; b=ZvBvfdnYVPkhtsTsS/adPyacITZ/pyE6/Mb7GB+0OZRUKHFacM1EhgijumRU8Fp/+r6Tbd9eYvV90APrvpqJ4brieK3/wQjZansw7B1CU75/lypxU8IHBJxkIcerI/Da1WeJ8tnZb9fDCITc8g04jfIH+AsXbKIVOrzv4CIGalM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpJ66X8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpJ66X8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8178AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708909096;
	bh=djwaLCbcDeMWKEqmRRQJB6TYTCyf4Qj+UtUK8helHyQ=;
	h=To:Subject:From:Date:From;
	b=lpJ66X8DoGSHEF93as5tloLVB+QT5/qGD1udqId3dP5VVtbrhqmfQxnOQqy4m8eCl
	 g8L1d2m1FIFn1vjHllpR5GvDqPGmdnOXt0pP7rKD9q4UQBkr3iJ8PvMM3mkKtFDZ0p
	 qt9kqK5NvTrakIsUeAv6jI3hvflFfHlRuYZm02P3yIwtym60Zq34ulYm98pzR4lP8C
	 vOWgowNOIMwc0NlFY7JXWz8hnGxBKAZ5VRCrvWr/KgfGyALHLI9SWOpn0PoOem6eB0
	 N+Fpw9p0r4vR/gQptILazQSAvzjcmK+vNtWlWtIgdOQ0mE7RDIi3HcpBHFL82TWfdK
	 t9qMAVmhDlMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6588AC54E49
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170890909640.18410.10535246519782533624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f1968f362aa4fcf6097fccbac50ba20069119b32d04157538d684a8cfb3f21
Date: Mon, 26 Feb 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708909096
