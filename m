Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7301C7017
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750151394; cv=none; b=THshfZyzFL8d1MzNuRyUJOHq8o5noSE60bI+hDl8RoyZ9FzfwfXNU8AaHsqe8Pw2UL3+77GWdfT1wXdXFQz68N+VYAvlQqWCNvKpPxBQprBRYamJTjxfn3KbkrR17xYhXW33EaTru86811TVEAeYpaGOH5/kFet1q95M2j01lNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750151394; c=relaxed/simple;
	bh=/2F3+Sckb8ZdxPRg540E2ipkBgFJ9yxZFoE05JgiPBc=;
	h=To:Subject:From:Message-Id:Date; b=pw6UR0uioxyiiMknvcKvYibvPRuS3sofW4YCElNLVGFtpUzoeOkHcweVcna4mMd+6HKJ6onxtjGe9nS6yPSrb91+x165rW1UsZAjwziuvRT/JKNJKDxQlec6S6seY5wDogezPVujImUPOkVNRAB0POchZra8Rp9Qv98Xw6Vl2II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXREKkDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXREKkDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95B59C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750151393;
	bh=/2F3+Sckb8ZdxPRg540E2ipkBgFJ9yxZFoE05JgiPBc=;
	h=To:Subject:From:Date:From;
	b=sXREKkDFcPsewlecGZaQnVIBTHo3GQL/ope4E8vxjd0uUOwzH8yFF/akinsnYrQYw
	 7o7CgYroLD3aZMO5VA5jWtsRoxn83jof22FIpQjKSRjshvI3/nteguwJLYnLu07o0K
	 cdTpNshL2PN0jzLQdoORih039zbY9lXGqng0J2wY0mTF2IpLjALURzRpdqXXjYOctP
	 HEumdrg99JLX1AiWJ57ybNokenXaN8vovF5M5zyp7lZjevWS0lLHC/29tRrbGdQsj+
	 RVsSXDT1OOnPeHoQYfSoXm4ZWyVWKFl5m+HeW8uQreqkZenXKkVAQQvBf4VJiu/HvP
	 RtmYth4ajNiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADEC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015139357.30409.18372702347490038831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0a33b3900f449a170e5045007a0aba998400041e8481b0f2095415ce37a188
Date: Tue, 17 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750151393
