Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D69834CDD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781750194; cv=none; b=jpfahWoOLFMq095X92ydUEJtuRV6pnAHlNByNGSIAgUoHcgpEYki8Uiq4yvoTkayywvYRGhYRKNeTok7mbEB1kqNQogywfoeoyF7WTBEILWtbOYbknJ+wVtu7fB1msenkhdZ2iA26VLwCprwtXLsWOC+Q3woO5sT3aYQtSLQiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781750194; c=relaxed/simple;
	bh=PPVqP6A9BhCbrxJqOGTuMoSlhMtzn/bxfSHgv7EjxHY=;
	h=To:Subject:From:Message-Id:Date; b=TthqjJfMFAaAMP0XU/6qybWqKeUd+rSaTvqQfprIqwfMCnVGKvJLMhEWf6b06YqYlP/AtQtc9Q1qY8oE+2lf8RkQZz6yJF6gDgP1rpYwT5iaxYKZqSxtp5vJ3wnf78ObFZ1YMmC459AU73eWzolNSbB8iJup8BMKx9RtOPKjdv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0izqgdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0izqgdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCB8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781750193;
	bh=PPVqP6A9BhCbrxJqOGTuMoSlhMtzn/bxfSHgv7EjxHY=;
	h=To:Subject:From:Date:From;
	b=V0izqgdxGxfFOSRAubB5GdDkXYmpmnkxHkQ5VuUyOLBK4Wc7imP2MAUQmnPVjg3kY
	 jsS/TWlsQErx/ZyRyVvxw0pB769CmStpa5oxiIe9je1sMqmcnp2lYhGVkx1L6BP0RY
	 r3LGR6qUlpTz9FTteqeFcj0Pg8GBcfF8OPz5zMmzB6REyyOLMrZHK2Zq/34an3WX3B
	 VGGcCjNSY6lzmPyhjSb7nBsJVoWInrNJlRknt/RdrNZ21jtlyBUK8s7Z+MYUpzkrns
	 FF67eUIdQKNUBxw0jDJhBouGv/9q5tolblI4GUrfLMH5VieB3P8iBdof+YSG/IAAka
	 VpvB6Ph5rjIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB009CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175019373.8043.1369577616141495102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02a91552c1971f2d613e60365a49bb09551ac75a2f03964df7e07bda7778dd5
Date: Thu, 18 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781750193
