Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CC120B7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756295994; cv=none; b=fsW+6s6Md0vL7axKaFRJ1XIg0JWM52xwWTpH831t9CK5oYKXUBBIf9ZHM5Kmk6OJ0uL/+0UuGMbE36USv6TmqUaMtbboovxPWLfcQZMwItClMaCexhjfn+5h853JhPsP6lA0O+WqCPmOj4AsralnlNkrPkx9X/G8ay3US/NAqEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756295994; c=relaxed/simple;
	bh=bHmVD5GAR/BcA6pzrYmtf23Bzwl4SP4gkLKnDfVb4wM=;
	h=To:Subject:From:Message-Id:Date; b=Bq8VRJ9JlBsx0kgjiufPItwB11juV86nOpqeZwdF3Lsk/7IIrIWeiyU56goEZkji15EOu+MOFBuSXl2KPK3rxYo555pKi/ZkA3kbixUZc5+CVI4LU8Oo7zPBqmfIaNB7VWUrcfoGqIcHz62M1aeAYHu701knmZLEMu3bk21G19M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGXIorZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGXIorZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE7AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756295993;
	bh=bHmVD5GAR/BcA6pzrYmtf23Bzwl4SP4gkLKnDfVb4wM=;
	h=To:Subject:From:Date:From;
	b=IGXIorZYMJpERXfl9K6B0sfo7tVW248kKvmP+NTnEz+luw5Y9qCJlMzkHkDE9OREH
	 UefM/eXnc1RcRvAWwi5/oSIkc9WsheRAU2Zv9lctPJfKJf7lQ8p1KwAT6KDbX84VbL
	 t881BekgONcgwdcq8Ibcdrp7+UJsNlmejjNdbgCJJ+FPhdBd4w/pbX4HZUz9L33LX6
	 HupPOloIeu8cLOcDi47SAmnr+ag4LXT9kQyi25MPWLGZA9fy++WLECaEy/yqWbGhHI
	 3kbSrrLsmasJ/GPns0Prv7mGWHYXdcN0kBHNL1VhzUG1IHVWZa1AJWwCucYVdF3inF
	 /5ihu1SF14ztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8FCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629599357.5016.14839946630382549254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9392381f2faf33654889f2224050bf8486257cbff9f7a2efcf93de1fd52ed0c1
Date: Wed, 27 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756295993
