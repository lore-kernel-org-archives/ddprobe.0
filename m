Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E7F125B2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773894294; cv=none; b=PSg9G4y04TsopASDmd4zKQCzLDcztFN5VZsomAoHiDaoUFmqbEH3gFM99YDqAaN2oAZCFNDQV8KeX0fFb1lNAHFcUeDBOgfDesruabG97l8nXZyQIyQXOM1WSFD21y9Oki0HwGXl0KBe6A6ODSlGL2MC6AjKWc7ovpU2VxpL2qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773894294; c=relaxed/simple;
	bh=LaBHH1Z+/75IqSe768MbQ87/4roZC6vW6eZVwvGRhv8=;
	h=To:Subject:From:Message-Id:Date; b=qW1kbXeZQtAy6v9t1mrRBKCqGZT6IaQXk2LdyAf1fS6ds3HwWYNGJ98KkPOawLfZ83b57fWdpBIi2FHpc8tIqB7GeqraR4E7sML59buZVY1c/sDhaF7iAlkpogoja0mzRyS9btYJ4FRn4Ss9SpjguGH2Vps68jrJW7T+zG2uUOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7CCgFUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7CCgFUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4EC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773894293;
	bh=LaBHH1Z+/75IqSe768MbQ87/4roZC6vW6eZVwvGRhv8=;
	h=To:Subject:From:Date:From;
	b=m7CCgFUkJbeN05G3YkxrAh9v6xGwDSnF67+KEWUGosYU5ymueyiwx3snMke3N286M
	 p9tRteYvHpYB9KmV7n+K5mm7rqiE0nJFBfeYAYt3Z54/wh/QauXQwHF7Fvxw7W74tZ
	 AYZhQ807QJfpvDtIJQ2lABs6hbwlq/jgt0a9FULmOs423UeESnapKZvtCtRUGB2cHT
	 IqnKl5gV2hInYR7oeUYPWtsCh3ofZC3BIrPf2Lm8Jj7XXxWBf33YtSznRDignC2n02
	 aTWoaaEBk12coq2sLH/8rzVTjJ7grEpnkP77hxRqaSagEWiW+T2IOJ9yeBntrignkK
	 ibWpcCRKdUfZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B011088E70
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389429358.6199.18359962312590948360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eba23cff545216df93a283a80e8abffbcc8aaa4bd01c71d9959c0c49c861e86
Date: Thu, 19 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773894293
