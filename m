Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E508F45
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719801863; cv=none; b=EM8CVSLIVtDGks+Es3//l1I3KppnRl74GG2noiFEHQ+aiGWElnsq8Ne7Cu4SFpSmh5jS+UoxComLh5EsuTeoXBGH4Bg4FoIkW++oqHoEwK/ZsZLi2r/8hh79A7KG9qCFQaO25mohuwgGl1DZ2W9Mw+LRcCkHoSXpPgFinYjcFsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719801863; c=relaxed/simple;
	bh=mpbAGhDc5gVA+BcZPabhI0uwOh7Q8eOEjcZnD4YF02U=;
	h=To:Subject:From:Message-Id:Date; b=GsDsyLv61ZBtAFYFtWG+satrcnXYbnKrmp7yuw9zyY0ulOhBVNEuOZIvW9ee+hAVK08P9lUBvNm5wciP8GdrMceNmqpJzi8eyroxikQlinjDQUDLtoWcercmLrVUVdAodfRelGZeoNYMxyfRfdxf5yO2OysmtS6YUdlEu8Xq0N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/fPrmAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/fPrmAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFB3C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719801862;
	bh=mpbAGhDc5gVA+BcZPabhI0uwOh7Q8eOEjcZnD4YF02U=;
	h=To:Subject:From:Date:From;
	b=T/fPrmABRItMcaM3O18IuX77hf9QcTZw5GrmdLuEbmTtmXIZSDbvNvJSwoUJ4Gf/2
	 BpY5+PUMetXATdCPsOC6a16M1wa7A8lU8ikuAOyUyDaJQvHA305ciMIDbmCkn1dRXD
	 zRuHjiB196Ghf4Ib2pvNU+24Af1o841o7+IijKENjrB4ALVvrjUhWVjdUFx5OlAIMD
	 5QVyimuTkAcwvzB9lY0J51CzRrSwWzSxMM/EMnuobluRsU4t3TOxM0HtRyZqCibQTm
	 HXB19tjllc1LUbtjKrMFn5AekQIds57Mvrsjqugphe3altH8FMxeiDZDxM4ZWqYw7x
	 TIT1FBfa1C8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCF5C3064D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980186276.4698.2926604496994942363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7294a3e3168c8c072f974291927a48dff87929b9dd3321ac1209c3b57f68a5cd
Date: Mon, 01 Jul 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719801862
