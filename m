Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2211804F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720258523; cv=none; b=GPiT1azq4MH1AiUubwiJWkscOVgZm9GYXQ23ReFWcPlFkmdpxHUcCw6HhCUlNO3MpNxMaBoapTs/B4JxkkMBjVRFEMci45je2Lz/bOjKjaCm7KQoMTgsKROJsA9gSXLAb4TJ6OzU50j7nhirPfuaviInsfteetnGTUhBZO5Orek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720258523; c=relaxed/simple;
	bh=eCUbmfXKRfD/MYFTkjYRRQn6Mfzj6LRQCMVdbZ2/vdM=;
	h=To:Subject:From:Message-Id:Date; b=buoTVgTkIDiof3UWex0QVna5OfWX4x3HDnyvuY6eBXEy2Vuk7oySkuqzaLNIWKeSJ1OXBtJjvYI++0Q9U72Ps30B0MdKFQIfhnMLQiJMy/mfRlj232bVCZKfxOELuwvYLtBRe8ciO7cpcTyxiK9S49tVAfh46UY5oVtL+qdNZLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtcYyufN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtcYyufN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9375C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720258522;
	bh=eCUbmfXKRfD/MYFTkjYRRQn6Mfzj6LRQCMVdbZ2/vdM=;
	h=To:Subject:From:Date:From;
	b=dtcYyufNyUvR//qKTnvWEWF8hYABhku5/vx/qFpOwU1YvxK0MMXSf57WDJ3ab5mMI
	 N8WwyUxU5gV1sqxHBDdShu3DyfAUZhUy0xkdmR+KROMFBoiAtMUEk1PTRXw9fHKY6v
	 ude8yrEK4tuHUgfo9MjabvwO3O3yYo4IPzM3cjuG3zefsqnyO9Y4/v3vF8WylD9sQZ
	 snVVjJakHQJTDm4Ham5s6rkNYxhfAxGWHDAEQXUuDI+r8l5IYSAcF7gUB6xB06jmJV
	 yUP2W83T5+WALUCHsqc+Z40LNYiVv7nFFLDTDAxREx4838f1HFnz9ilNmtId1lNfLh
	 YRUWtyIW+GUew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CFCC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025852276.20560.4629484935949843084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc5ea91d50e92537ce508dce87a9fe1f58ce7cd562de8edeedb045a4643cd98
Date: Sat, 06 Jul 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720258522
