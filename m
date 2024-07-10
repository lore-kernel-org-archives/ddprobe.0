Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3C11922E3
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720636043; cv=none; b=Hbhprb/qx9fWV8IA49DETBf3FIw9YcJyVygSKvfRJifV9X78Gwcbl7YgGtthKGXQJLvBZmg4F/BNHuqcHsbsEWWpNVssdPmQXM0HFdz5bSGGQbTYfrVQ0c7BZ0emrVd7i16PabfQ4fd/G0n71tcrtBUnWD4Na3nUAIFVunlQUUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720636043; c=relaxed/simple;
	bh=s84tEw1XU4OQFXJEP++RG4xtcTfp/SIL0prfZVErvaM=;
	h=To:Subject:From:Message-Id:Date; b=k2gPLtJQn7uW00ndS/5FJ4odPjry44yFGTOyyEUjxVjUiuUqFhTCfR0psQ0j3ScvbM9tYhoDC1Gl+2ofIW6zjgFWUQLkfMMvbvP3FkHmaugyyizuFbwzVA8XuIuXRIWjm7I8h319iPOytHdgtes9tBIXrJI7cASPPTtUzrj3UwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1j8/JAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1j8/JAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55EFC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720636042;
	bh=s84tEw1XU4OQFXJEP++RG4xtcTfp/SIL0prfZVErvaM=;
	h=To:Subject:From:Date:From;
	b=G1j8/JAoXK25qyFuV4Iax39dQSyanXNc7CVLwdpl2A4dfOlzcFPFHiIrPzegLvQ/4
	 +e9h2yfkYVkXx6QnaHxkesS1yKOf/qK2Ru3fhJc5oz3+B2xpv4UrYgxEY1uN0LTvMn
	 Ve0FiUPjXyBZ5O2lHKSAdf+c+MP09/e5mdIIVx7Hauh/KvpQD51jZIHJXyRmwNhlk1
	 x5yjIMs4i8pBIb+mBrrJ6Zh1mX1XWGtqWwFJEFKRUf8M+ZTnRGyuvBhS6kKHhGHhjV
	 r4mjAFHOKr+dujUWJpI0XYRkm8xH2KRNQputSYYGidwzuFpeZ1T9gP4gFmwULQZ7cm
	 pwhXM3u270p2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF84C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063604277.8949.9202120285107644349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87a37757ddea128d574da071c0862de1cd7498efe93e41b8a35c8503fa042fb
Date: Wed, 10 Jul 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720636042
