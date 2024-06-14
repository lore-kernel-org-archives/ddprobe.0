Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA0B145323
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718339903; cv=none; b=s5+Zzy2TIth1skj+OBT7QvMAALvjk/z2tgKdfU+JN5ZrYwTosUdrr75lYLW+EheNovoTYToHB6c9Lm4tWhFYMPZImdb1sGhOG/uopskj9Knk55pp2NX+ZLIjll2Q6DyaowFUGwQHOaFIKJ0wuc9UiKRNjjYzivH5EiMYg7mezyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718339903; c=relaxed/simple;
	bh=/yxJ+wjqXqPwIDoxwgraU8MX0XaL8mAKx2GMppy5E7Q=;
	h=To:Subject:From:Message-Id:Date; b=Um2QavpOMM/NDTB7bsUsOzAJTSQu8NAdtphalHF4gQuljroAmZA5S0/3kDsSPhID0AjeYzujRlu4rdBPbdSUCw+HQnslR/VlYwkcZuCnrbhDwpyuXHQ1PnfL8GkscERAMYixKhv7YZzmy5pDUeIhr8lcm+q7fn4llsaSX6eAYP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WShhEWa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WShhEWa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF4C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718339902;
	bh=/yxJ+wjqXqPwIDoxwgraU8MX0XaL8mAKx2GMppy5E7Q=;
	h=To:Subject:From:Date:From;
	b=WShhEWa6zVd4FFmOOA6D0rc67De9NiRw/SuRBNr3uA53aVo9HGeYZE2Ie3tiO1HL2
	 BdceZfQrYIxN78bXhiOlxcrxYryOUPrYHJeaLigxKM0e9seMy4de/EPFBZb3CGGySD
	 AMSW1cRBeUs/wunqTpDp7XgY9SsnN7NVVMu66NILt9Y+4l5Yw+LUuxakjjBvYnSqxR
	 ua1UGucqtllGTtx5RVg9W6ZUISqv1jh7kvVHr67qn65cD/wJmbpawRKngDXFzunO9B
	 QolDwkRJvbFKlGyVRDOo7HtkTkvJoHMgRyjQ9kn4vJ6jzz3jWj/mdriM94zGOmGXzi
	 6+srBI1PyViZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13CCC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833990275.19616.1509973167950541971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b5a0c33bd7ed41a7a370febea74fd0aa778b2a2af6ce1d12171dd33c694f37
Date: Fri, 14 Jun 2024 04:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718339902
