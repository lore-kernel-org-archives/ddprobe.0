Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEB3224B1E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784875834; cv=none; b=btj+bi5Jl5dO5/b5Tum3Z5Ji9ceZSoe88O+spAy0irD+XH+7gmFpMbnGn6ErMF60HRra9k9npRqSfelu6Au5ja2DMOAgNUYfBNC5E/12afQlwoFGxtsO1bj04wbl78Ids6puC4+2f/mX50g32qhj/4jYc+1TBa6NMbfVcAmgfdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784875834; c=relaxed/simple;
	bh=Bt/IOZE5wKz96a+pfzd9eaVipC0ga3qUnvhs+hES0yQ=;
	h=To:Subject:From:Message-Id:Date; b=LfWJBw3IFTvDILWGW+uIMy/b7M42faGjctuInWBBhTapClSD8LwIUHOF+tkWNMCWDqZ9a2Ph9s+du4jR6bnAYgV5j25BYZi0X1/HHOf6mhwiSZvPFRLmgd0HMQokJtn/lTyilWUXPqeq5x57MOUdwpXxZeNP/NnH/y/aKysMHiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGHdtYc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGHdtYc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB84AC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784875833;
	bh=Bt/IOZE5wKz96a+pfzd9eaVipC0ga3qUnvhs+hES0yQ=;
	h=To:Subject:From:Date:From;
	b=FGHdtYc0SI5QlIhIRh6bSVkQQGJ7QKBM611yyzeTvd5h3fUB620jYLI1QdTzdB9EZ
	 vHaDduMST43xGMhwnzmAFGez+M/2ynUd9X7GfmIWhB+LZ08+LMw2TC9dNepA2CAoUD
	 GPFSDZLWq8DefISraFdSwYiIpu9wo7QUQTuo1P8fBF8txV4kRpRMT9ySwl0XXP0vXs
	 7VQ4/Zy20fU8Jfsi06fbhQkf8rKfXzixfiwhgvNfKaiuCk7XL0uuYEyYzkK3LQ3H7L
	 jOE3dQ56IpqknPbc7ICOiRUaeppCXk3+4sY1fDCB9Wt4+k3OTsjENl5WLi0gZv0CuY
	 i8ohuSt99r5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9094C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487583368.18170.4827248795612516284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b48067261a9c3cf88933ee5cbe0569a25a514051a842a8a4993f21b6d08e21
Date: Fri, 24 Jul 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784875833
