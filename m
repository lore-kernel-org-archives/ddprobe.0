Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A15827A123
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781694994; cv=none; b=YgjNiNTwCuhurf+Is1Epk0D+wuT1gbLTNf96qVQ5ALvxaVfW5FZSf+yEvqZr5LMXs59H16dKzrKlN1ttf3XoQpGUpndja98E54jehkMb+/4ihCzwieh+8/jCIZjuz4DYiMFo7vLucebq6noj/5/XiUPdLcTdtNnHGyLkI8kYvo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781694994; c=relaxed/simple;
	bh=IUpwj2g7vO4O+K/PN5WJc0Zz2BS/8+NgTmH1ZUZME4Y=;
	h=To:Subject:From:Message-Id:Date; b=MkieOj0o2LsiLocOHbA/YYowmu5KhnD7UTEABisJ39PLA7B5mDRR/1xVFQldxbxnD0WzNN150qyICszNNjvtKtHvtztFOaHlXGaTLwOQCaR9MhIY+o2rVolHsLA73hUbtA0FBSpUgQ6SUgVeXtJx6LKVqFiMOJFdSXkzmxwRis4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uer1w7/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uer1w7/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE88C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781694993;
	bh=IUpwj2g7vO4O+K/PN5WJc0Zz2BS/8+NgTmH1ZUZME4Y=;
	h=To:Subject:From:Date:From;
	b=Uer1w7/UotdCohcs41x/5DbK7lW9n0t2+8d/S6g0MKf/bCl3B7KpQjZrQf4WBpLB1
	 RQ/1A9+W1HPXVqVRyumm5PZaD62LpBTS63Mn3nZz5a1EkVqneHR5y85VFEETsx8DsU
	 6qu6AxF2n2lxDno5ucditEx3AMJDCN20lX8Q/8WAos0egbqMJQ/AxfMliTURX1usjo
	 SqM8axRQXaYck5QaG0jiYRy/0qwXYafm5xpZioQbn31dFGadpMe6jVSHHDhlOt6hsD
	 8ZnH8rsLm7gUTfQwrRyLAIo+zgLIAcuGwjU2GSeCN9CM9FH13GKzZjdEjTiZQy2mhk
	 xFWeeLKhz0XgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27E9CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169499372.13289.3716289666488282116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac01c5898d633c6450d47258de4dfb7ed0c9b4f34b447cf895436abebedcf1a6
Date: Wed, 17 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781694993
