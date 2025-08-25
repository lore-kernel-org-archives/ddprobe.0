Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC841E572F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756126194; cv=none; b=IkDaUECTrmG1rWOx2Xy7oyS3FGBPInCY587iUlh6Z+zybQt52BVXl5huql6u13I900R+Rrth8OyGFmuFQ3BxD6AEpD15zxAH3tDvidnt7nAKDuzHaFrJB5dvub9V6T7dif1aptgnsfd+opXLIEpj0Xsv4kz3ETeV1Sy1sJ2QJOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756126194; c=relaxed/simple;
	bh=sui69xH6ifhODyyJH2FGv48gOJLp8DM6fQ+h6yapbIU=;
	h=To:Subject:From:Message-Id:Date; b=nV+WAhDnGSWxSfW3FCHZLXdUehMkfY2j59lVnukjki2dIIyQbPaO2OsZoSt+hZDD/38eebZZNh94LNntK0O2l1ang9nlVx58f5pqytbil2iSCM6npXL34P0WhMrWp9s8lhmSXsdDX0V4VJhLw7McEcl0uTbQv6ayR12v1FSv4Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCNNCFvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCNNCFvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9C7C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756126193;
	bh=sui69xH6ifhODyyJH2FGv48gOJLp8DM6fQ+h6yapbIU=;
	h=To:Subject:From:Date:From;
	b=dCNNCFvp0T7DMtVJLmr7KA2m8mdrb2HgxXY9KnWgVHxjSJx1glF+sEMtWwSpWpEW8
	 C48rBA+sJreD1ikywrC3UJjTNp/nE4fQJ5el6IBDdlX9bVEddhURGKn+Z4HltO0oEM
	 JCNu5JiTeAmEA2mwPbbz74hoqsAmCEco/wRRUvqW3GOfxyVkCDRbNv/Ox12QzoFEBr
	 RbIAQk9aq2+Qol00DL6glIpbVPBRefr0JRkhLmMYae4dHHh5Cwvkoehi1YHxgRlZl9
	 hBk/i6uxOSlHGH1vguhfjweyybHD/D7a4+Yn2kq509i7zdITZfub1+1OexHE2VAScV
	 AvYTGInO1awhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F541CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612619357.12351.513371734472743927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056605bbe70055efc603ae7d5093d5a8511603da0d8384dd47b228f47a5fcd55
Date: Mon, 25 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756126193
