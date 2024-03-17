Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4ADE2114
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710645497; cv=none; b=mWK0B9U/c4Zb6bKnet+y7Wp7NNkoQD52S3SYky7EAiVVjSb9mLbHnpnNXhc7CPHQZj4GjjhU7eD/e20ulg7EEVOPAmdVTnIdPeqLIsIfKVOlePBmdd19KiO4Xlyc/iYLSEKAqIQKsosM4zcMqBhoyDimTDaBtwFhKCq+h7gNHbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710645497; c=relaxed/simple;
	bh=uomPDptTo/MW/omNxxVPdUFcl4o4zYkhm3Izq1UfKcA=;
	h=To:Subject:From:Message-Id:Date; b=OsK/fDGpbKLVysU4lZLMSmcAhD5dH3G5+B5Pill6rrHV0L/02Q+q9Tu6dQ8BmTtZbibmE+i9/FFDxUxB5phwBYHmP/VtaVHc4Z834Up7BMSoeDUptzP5C5eLDHeNKnN1Udf8seS7dhCFNFWTsFMI1NDPLtQH50P5m+h95xuvrfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coCusmxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coCusmxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D3AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710645496;
	bh=uomPDptTo/MW/omNxxVPdUFcl4o4zYkhm3Izq1UfKcA=;
	h=To:Subject:From:Date:From;
	b=coCusmxdIvaJtG6YRnofvw560RWL+cqtUvzEo8cx4NJ/hsduDB7AhOKaVawZV+iz1
	 X59VJXOkaFfBgayYKVGc6QBDNYVpHPQHqtEiGxrSPXPqnPs1PdpdZKVgZ6s6D0TA2B
	 NumGFIx3qJUkcUXuvtTHlxYdW8wYaRWN7WcxPkkEyqYGnzrjPc5X9KExS0arRFDqEk
	 P5IFQ/1DXpFo+Ri7wauXBN7r+9RS4P+KVQcOLVdNyDM4pcT/d5iWQ0MSaay2siHRlL
	 DatSFtlYHszSQYJrSzInTA8KXsjXvuUsdG93KUvjrBozgCEqN8pxQ0wsf/bThXSub6
	 cTRbLCl4W1WYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF45C54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171064549637.19786.6643295611463499979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24715cd65796da917d01a12652114243bc09420d1c88418a4b3d7fbe4c95b368
Date: Sun, 17 Mar 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710645496
