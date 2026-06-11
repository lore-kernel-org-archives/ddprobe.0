Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD79314B96
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781188594; cv=none; b=LeARGtAbsMPg9UWxwTdWwd7XHLmJ7dsQiVR26XhILBpMnT5FDMq850KnpG5kBL+VG14EEdh7hVDPkzmuGHY0qzC7cHxPuqwXj8Bef/KPfWdc4eVlz4eSBz31YUMB0e0xRODyfcdl1MFtgtIpv49jOwC2QTdaGZeXB4tuT/fd+ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781188594; c=relaxed/simple;
	bh=QhwjgxsNa6HrK8+0SAMtd37b8Id9ALoTVZUv3iZsPjw=;
	h=To:Subject:From:Message-Id:Date; b=QdrBMEQyNlptNNQadwTIejhPyaobAzil67k6KYhTSg6XjfbL1rQClA2Ah2vlnCbPUWkLLQjPattGyji023edh6j03iV4GcEXe3CVxaQxoOd5ajq/AK8jQ++oJJsxVEpWm2rgg4KcXpOmKSs1AZarEHJ88nSyomJQb83YrIxGfeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUvz7bKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUvz7bKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA564C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781188593;
	bh=QhwjgxsNa6HrK8+0SAMtd37b8Id9ALoTVZUv3iZsPjw=;
	h=To:Subject:From:Date:From;
	b=sUvz7bKaJ7a9eu4KDXkwalUjV0ma1j+9TCfrKnBqwGEczNMexEcvLxn1TTPsEl0bx
	 Vx8mZQ8VLD25m+pDYNHvxrmMF0QeVHJ2jKn1Gpl1b9+uVrUQL0U41dWIKGpvm5efwp
	 VpHhmJ2UaCK5h5YrQ2hwdBpkVyrQxq0gIToEP8I3BBq8JHjeLsvwzfvRkcDTyT5EI3
	 uHqU5jVQpwPbYc0v25oyerd60/Yni5tqd5PzWqGp0aHHmgQpS34UXzCKfdqYxKHJMz
	 uWXmpcCzL7vpSE6+xEJjZEMjIzljyhidjZEId4lGLb5HdT3LXeaB1iJ3IoCsIsMKLN
	 otkwPNDJZubdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C590ECD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118859378.16995.14516065295490908794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52958872df91730ff9cc9482de29c8ad0835f6324ab9d7f3186fc14b1095c452
Date: Thu, 11 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781188593
