Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5217B325494
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786942234; cv=none; b=mQL2Khhk04bvoA8FUg507OLv9H0KHuZPB7VnRHc2HUH8ZPbqmmlML4EkTNee/hw02/Wiim//EudjFl3kkdaOYzhLOkD4CQd99fSqfTj3bGqcVi01xaAs326WJhplRWwvziV5d1T17yCC5Di1ILpX2nuZc7B6MovV0iNtwNUqX5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786942234; c=relaxed/simple;
	bh=k1bU98jie06V2INbd9XSxDvmveo8XSGx12gDd2atWo8=;
	h=To:Subject:From:Message-Id:Date; b=mYsWGSSz5b9A919pwQwSLyJfTwZo2J7D7YtoH9cC9cjKAKbTmGwr6mP1P4/Y1KWJ3FWxzIIwy8ovLktkqrc//5rUjkitZXOHX0BYyG2CXtL7t6kld8VrK4OA4jUdQn41yw/CP4UdqQsj7r5N94bRy1Q0peCDvogaAJO6r310LvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hut4uA08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hut4uA08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D126AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786942233;
	bh=k1bU98jie06V2INbd9XSxDvmveo8XSGx12gDd2atWo8=;
	h=To:Subject:From:Date:From;
	b=Hut4uA08BSiX9i51eHhOHDKXbSE4DVJG04jeV0I/sDA5riMUaNaA23H5fn06W1A7Y
	 sQqKQTNoHBpvFt6I1Zibre+hQcbOUr7s2NFkc5H6ER/O4MX2CvgbCgtSvZkqtYdTJF
	 gBvk/FZvOSLbPt2l/18Ut7Vu62wTuHpCHGfL/CXW/LiDfAI82Ac0lKleOWeHzfn72X
	 jrHJ4LPfrKlj+plgKH+4h3sGO8NW3+EvNaac+VJOe+qsVbBuy5ALZ7AeZJI167tvq/
	 3UNzO5TxbzSsqNHc90TRyxvEY4WGQ2YJBlxDEKgMx9hGmZlph/kNOjap7DgEl2ITH0
	 nVt9ES5wz6oyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC47CC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694223369.31435.13659413084325079057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad8c7e5b079c0b696000779743d7dd6a02bd4d3d5712772ec0d92727037da09
Date: Mon, 17 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786942233
