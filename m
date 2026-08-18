Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D7D470EB7
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787056234; cv=none; b=C/aGaP47IiPq+yznwxfCnYwG4br/mKX/rim/ZShW0HqKO3BOLvRpxgV1AZLv1WgdqH0DukqDEC0VWvHZpp+uhnOG3jmrqKxY3965KEAPJJfek1gmE61coU/RJ1M4yCMiRi0ZQKsA5fov6Em+ZBKnxrwPb+8drPrecUaSc9YkZ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787056234; c=relaxed/simple;
	bh=03sZWK1SdpP/D0UdybSxhoCt6cf9q5fjS5M996TysCo=;
	h=To:Subject:From:Message-Id:Date; b=ma21XIIPqB9FoZGbQyNP41SvGWoj7DUiBJ0WIXSVvUZpRR9j0GMt+e3oQyHY+9yV8d4J6aM1WH3j3ixQ7js5NJ2yzhuzXnPyhHOUJmDqnBBbWbeBKs5YUB+s2VkwLWnzg8Byii/if3RPJzzEJExlj5nadeiyP+O1Cl0tHdGHyqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3ZRGMrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3ZRGMrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE48C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787056233;
	bh=03sZWK1SdpP/D0UdybSxhoCt6cf9q5fjS5M996TysCo=;
	h=To:Subject:From:Date:From;
	b=G3ZRGMrx/4rXVLZANubtUG1vOEN419UE/Q++pAOg5pSmF+L3q58apY1lJfdNGFvh/
	 jSF+dO4cmRG+Mb/j/cXyJtwn38YaI/BlexxxcAsMDrq9A33toGdn6TtSbpZqWj3L5P
	 etJSHRgf1SuOV0KIeHLX/88SMC9nHcPifZPhG59CzyCeTwrDkXHShBt2riKoXEK1es
	 DBRUFaOka5N1st5FLybo7uAS776H+7DgKQloZh/r+4HnqM7ZnmgbBR7jIxUb1qNgUa
	 mQyKkCrpVCfrsCTrjljPtk2jjtElbBhenAEb9KjItmvyosFN2pnEWoY+8lQvwod0U3
	 89EpKpC6vbZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF4DC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705623369.17458.7983483976077603119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8d601ee18137eb694cd194333a902721d9af9ae0abcea6e9ceddf66ffac6a0
Date: Tue, 18 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787056233
