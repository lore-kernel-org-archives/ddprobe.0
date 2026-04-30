Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253BD3B0AC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777554454; cv=none; b=bsvLsag04su1p0hxHFUOCevcDgnkGKm+DDNfDscutaFjm/8Nl/mUIPi/uxK+OYBrgHnOgWY3A47Yit9tWg8GbhpLu2aumfc2sUFdcl0ZER+Ml+jwvcZ+WJgAkLvk0UVYu1qa4ZvoSRC8WjcEhxHMKmZIUBEqXUtBC5Hw+Xz1P8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777554454; c=relaxed/simple;
	bh=uynhVxy0ay/jMyNE6Uaf0uCNO1ZbZjpzlFwZ7bjCj6Q=;
	h=To:Subject:From:Message-Id:Date; b=r2o07nLoipebuEKz+X3nqj3fbqJ+8nf7bxHHsCVi+cqeuTV5CeWrmA1TBjA2HMf82UGRgjL4jw7W9OzSI5BpbYvRDB7TuJCkQucQaMht7RBpVxosTrYVGrqq3MN4EHJGJkHMJ8FWi+gB7ZhJ+wIUDP+NQxNlnlEPVTwF8N8l+8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODslDBYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODslDBYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F8FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777554453;
	bh=uynhVxy0ay/jMyNE6Uaf0uCNO1ZbZjpzlFwZ7bjCj6Q=;
	h=To:Subject:From:Date:From;
	b=ODslDBYpRmvEk5gii5yI/tDBIDVkaWmkHOxFLjZI0pRkCpBL/Gn7uTDbYBK78h8Xt
	 Jtw/kWbLFlPksx9n6av6yJefnsc+fz1gnz2fQf8wSB8xlq2d7jex6N0IIqyzuWi43W
	 j0Q1Dcy7Fie6M7gNNzPu2qRH+2ncpSaeEueEyX1jwZMpMflF4EppYUdvVqKJMnOwqD
	 9cFytJc7cXnN0K7/8OerDffqGsY45iS1//65v+FIlF+zoiRmwRwKuAUtm+H/Sqecxg
	 uHsz6J2TiOpCkqMhvfdfvI+CKPoVyPzi4xuc8rvMIXBwN3nEYJrCamVyJUbCe7/kgH
	 SwZtP76AYJx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9546FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755445368.3347.15212569608545779817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29768499288d4b5600e161dae64845a74a8357c1e7528d9a527f6d7a639ee554
Date: Thu, 30 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777554453
