Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DC236DA1A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772454894; cv=none; b=owWEIMQZctxO9GP0k1rrYf7wCDd3juEoqCUj8YF6Pvr3M1YAtRqqNHxoTaJGiCnkebE2Iqjwf0vjfOJX+j8fo9/u2GuqvaurpCd35znBdffLzNveAgxyf3OzPh72fRdCyCtIttak0UvHGhRmQQaTVMjLHP57d9cC7rkT5tVL0Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772454894; c=relaxed/simple;
	bh=AAswY5oMlLk4/q2W4wBCcZpAovh+cbYCM/RvW8sd81I=;
	h=To:Subject:From:Message-Id:Date; b=ULhW9+01G40z4NktRV/buLGRZF2mMO+fUdayIKZiHnPyg0X0IYQFeygLNprvQGo6qZmtIWxbKWBfXQSOMaahUwB0WoKjnC3YhB+unaq1AmFuLoVhIpneyoXYx171/gmhDQvjxGgTX/cj3++l5dwp629LgEtn39X+zBdHwTjUrp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNZcJPO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNZcJPO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2266BC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772454894;
	bh=AAswY5oMlLk4/q2W4wBCcZpAovh+cbYCM/RvW8sd81I=;
	h=To:Subject:From:Date:From;
	b=mNZcJPO9lwg79a5/MJ2QHrvepDfdxHg5s/r1rxXrnzyDNzlxx6c4VbzudDrcfGxrS
	 mkRZP9UeYHm/T3mnvBSB+OWM6ORIIsyqtAdSu9gSy4ObOat+3pJ+ad7OC7Pj/3nvFk
	 CPgVb+8pFJsU1kXBOcj5nMMeDmXy9K/iIMXzL4X6ot5UJ4lpVAFlWmi6qjcWoix6/W
	 c8HBBPS/2o1d8TPkPCF9pchyyoyjuwrtLLOH4QGTiQTj0jl8Jsl2Jd2paXxPvOejFM
	 bxih8VHcvlKbaJR31vVQpngE76UTmOoGIs224Qivrnh0Tvo516vD6JAbKdscoSm+UW
	 A6qZdi2L1ZoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5724E9B36F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245489392.30138.7896497467281700519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b904c6fa1e155c1cd6145de7746b3376dcdd1cfd24ba4bd49c777c65752a247
Date: Mon, 02 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772454893
