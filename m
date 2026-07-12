Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD03294A10
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783836514; cv=none; b=JkYfJ1jTnnqWjHfczLHnBCfoPy+cQXJG0fy1z135I3QmkIXavh5aze55icgM57JhJibjkZUbbVk4WMWqBsQQu5vkbwihsp1nD8ID0SRHd8b/r9HR85oU1CzgghTVwUtSbqSn7cVZfX6izrPsRs22DX10wBMrlCH/d2i8hFW/e3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783836514; c=relaxed/simple;
	bh=bXkqO7gS0EcOuDSFXNZUy89cPKaOBCTz3FRfd/OfU0A=;
	h=To:Subject:From:Message-Id:Date; b=hfaK1mbJxuRHSd7D92b7zdXLpCSyq6zQddXJa6ogLwPoAS2hGdC0MOo1jY7BmcWH6PqsTk1+xRwbOSb8JF/OZLmsCHK5Nri8Ggwtq50gYzQTkYO+hb0bfon+s10qq/I8Fv5OiRdPlC5jWWAHazMA+KOl10n6l4Xu94xt/ahJ+t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5juTV8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5juTV8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54E3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783836513;
	bh=bXkqO7gS0EcOuDSFXNZUy89cPKaOBCTz3FRfd/OfU0A=;
	h=To:Subject:From:Date:From;
	b=Z5juTV8l0C5Hoe6VV4OyjptppJCSBrBMzo9COzLWidmLVXCUd2ExTltVFIu/wyEtA
	 qY6ljuRNQGOcLgNjAa/LPJfceVFHygcY+anP+pf8TBuSDoLRW66ks9k668JShw/1Oz
	 ZkAvDV1CLgOK2yVNPhxr38HIfbbbYCj+kcG9TsH577qeBi97tiY6s5G0AArvZtcAYI
	 RflV5JxMq2QLFrisPpuEgx9Hfajn+SLiuwKx40uWlZ7OvfYam0bLk57vG05msVi8ng
	 osLONCcOmmhRziHbp8R/tVZLZwye2GeBFljK/mBlAU5ql22EnN9PAJi+9Yqo9qsMMH
	 gYPjI21BABV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8C9C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383651368.28493.4575748521854450278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5abe8629889cced0b8567e5029629fbb6b6852dba6b68ebf18435a561e855e5
Date: Sun, 12 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783836513
