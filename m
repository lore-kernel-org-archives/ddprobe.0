Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E47753D0BB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788952234; cv=none; b=LhLDxPdjG3FZSmoumuOmkzzeHQqQFJUZhIwQvbtSBtATRC44syBAaIHwjAzvdA9cpVZSK2axEKH2JaSAFzUTATTFtZ+ekbhfCW4xD34f9haKm+0tN65yrMwlHjG9FE63fFmkdNbqJ+b5PjZlM99ckfViiNSdAMY87/ZrMhhc0Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788952234; c=relaxed/simple;
	bh=t1UwLBRXWwnoGoUkD9tQxRROFaL90P+gMtgrkSJ1DyA=;
	h=To:Subject:From:Message-Id:Date; b=gb//xR4gMPkgSizGbik/7dlx8fiBcG19Q/4Yw2SzlVtx7lGOwKDau2oDHdkh3jDrZDLog/Hn0fqXxj5V5D8YpQFfenJ28hxkhFDB0sDpdxd93AcdvthFy7paHWPOVcyh28ESrsQQ4kRUyDq//5hSw66g1rWeSROFLV5TX6jmhZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AltR34wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AltR34wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB30AC2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788952233;
	bh=t1UwLBRXWwnoGoUkD9tQxRROFaL90P+gMtgrkSJ1DyA=;
	h=To:Subject:From:Date:From;
	b=AltR34wRAcl76FPjwvxyuQbF9vGFnzeoMWRvm8VsX9GZtPNW+wI9gBph9myYFV8x4
	 eM+panNeJ7sQJoy+YYMF1YnlEiAPme3Ck5DXEKrzIEI5uZlr/ZVASRAU1ILYQQh01l
	 aj7GM01yet7aJH9NIlK2geikOZYuoXO9KyELPu1vbPo0zV4QFWHDNyA0kpwzcKXN+f
	 icWs19vklavKw0zwuAtrYmJDV6D6wJcTgGYG5tzXYth5WunLtE7tJYImRlQVbodSrl
	 f0QtYLO6fSoM9HdolEjozB8dslv/HIdZHEa5HBrxuPIO6sC4cHaTVbJDq3BXGL7AJu
	 VM9eB9YVASCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE2C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895223368.27190.13389183762527094352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8f2202e7c8f74782117d59e7d1e8435028175123bbf8aa71cd665d4fb36bfa
Date: Wed, 09 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788952233
