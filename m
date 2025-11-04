Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9FE2D73BA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762277394; cv=none; b=sVWkVFpVQF9QYIBX5GRcymuOerPK7Q5yFPWs/gZUCLJtvdGS+bWY/J8BW4P3abcRZkRjAuE/0evmybxT0A6e9GDeycy0XHKRQGFV4o62oLxqFwxNbWx7gbPZsQEE1KxPAzerGfR2tKDSRM4Ef0ByOB2nn7ji4eYPfcckwZB5eFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762277394; c=relaxed/simple;
	bh=Btl+f5dXpHFEd9j0Fdzy3fimoMzOAiSagC6BN5LLiLM=;
	h=To:Subject:From:Message-Id:Date; b=hnTctglLTtpkI8762BxoF6Lm2yNGpFbpd322OxqlAq+8M6QrDUm7/7JIG204U1zz7n4flFD23zBsNc8IrrGVBNH809YtkbmIVWNwDTMZ3P+nJ/GxbsQ7luqT3N1xLLzMUUBg79ZxLv+dSbdeKs29z8tZq+aL5/qawhVv+K7lcFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCSDmcfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCSDmcfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2E5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762277393;
	bh=Btl+f5dXpHFEd9j0Fdzy3fimoMzOAiSagC6BN5LLiLM=;
	h=To:Subject:From:Date:From;
	b=dCSDmcfC6PCMRkfPgGKJrvvtYHnjPXodF9RklYyJIRH8Em9rljwTbiyPB+8WjxKgD
	 VPlL8WAzaWOeU4z1ZDLfC33xifbQ4wq63owh+uDxhpxU1FcbbjABoiolY60ltkLUwX
	 oztZw+CvypvpwHTwjnC/+8InZIFac/RfQ3BNGZV1y2Kokt1QGVdz7y8bfl4n8Axxvv
	 KJlEgr5kSAv4/RmcS57QCT6PVMd3K5T1s+cBF4HR0+cNHD9Il8npti7uZ2kyBdNU9k
	 qZkxwpRj3xOZdMnofC/qoNWopZeWbDWIoas4uaGnoK6dJDq8VIb9oj1qorTEil3YO6
	 /XKIlqzTtLEuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CDCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227739357.17128.10813771525484178919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a151de4c6dd28c4a342c9c90b861d486cd9e4bcd6688e078492c4c74e45b9036
Date: Tue, 04 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762277393
