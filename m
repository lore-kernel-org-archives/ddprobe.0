Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0743131B131
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767995634; cv=none; b=KphA3fgxz/V8OmVohd2BQhQ6qXugrw02CJtoS6+FhsPuQn+FF87OmrCaM3QqA2r1PsFJ9a7zYBTRfIH0KmhCOsdEjmDd7jFiCWM+9bNVYnrJyVO6JGsiDw/WG0Ncm/BfFZtBVvEn9h0xWBkNKSTcCV0d0uijkMGi5KrfdD88s2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767995634; c=relaxed/simple;
	bh=/Zd4vcFvYVS5qjDlBHfN7d2yd0qlg9s0M5ZcGhmcmhw=;
	h=To:Subject:From:Message-Id:Date; b=PatsdLLbaW6aiP58c/cGenEtkt0cKCiBu6zFN9iGz1P71rqWv0t7t1A2qu/+nsjokXYBuy43EFiX+bhkLUqmhNAfh0qpTMQW6U00wGkeE6XVOARsPMvlw+QDzk3Kbj4R3mf2zJtNT8cULjyFm85HTBR46GfZqa54qzuJLYE+6Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1TEeMvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1TEeMvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFFC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767995633;
	bh=/Zd4vcFvYVS5qjDlBHfN7d2yd0qlg9s0M5ZcGhmcmhw=;
	h=To:Subject:From:Date:From;
	b=r1TEeMvC885/AbUbySVD6zcwdVbU4pgmVeFYv4bLSXKM8dSosF9Aj03gS2cVdf7ke
	 Qoqub4mLCBZsK8usdhR/lIjZQKU8ymtbD8KIfhEfdPGlyKh0d4owPMBGUg1bUEev10
	 PHk9/JpNwZU5vanLJipzXuIpRVrS84ec9E9kEbTnnGifkwZBJJpLVTBw/IkfRv+LWz
	 xon/t9kxBt+Pg3zeYfzJcJzoe0Xyw9HS6bGmTOzTricw+3meQXgpro3dx68B5tnFlN
	 QJbSDA7W0ckCRftMBXFNslDOH5XdYhpeCujKXQUS9UkObcEoAR2VEW2Rv4NQtr9ttZ
	 i++TtUwPwFSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA78D1D48A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799563357.29614.12349691669706211122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4238c3b3074ecf2e8143f799cccabfbf3c16fd8cab518983694df849d81b9961
Date: Fri, 09 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767995633
