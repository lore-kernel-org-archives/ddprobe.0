Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5D03CFF70
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779046834; cv=none; b=YGnomZLmXcAiEwMiMVa7AMin11XcZVQ+9irfPW0IID4CehOMxni2Tt9AiWhw0ort0SEgfyfvTniRGN4yfzTwBPFAYcVHXsjOhI10hQjJUlfBxodwmL16O5m/ZCw1xDsrJB7dpy5qwgCkcnwgKLJTFA1+cbpq/S5mY6oDvEsulS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779046834; c=relaxed/simple;
	bh=5oa4spdwy+tT239WL8Asou4PWo8ypBInzoZuBge5ytY=;
	h=To:Subject:From:Message-Id:Date; b=K63ocalBeMkttehgZBqeRtoUFQrCmPlI+S8YR98YgP5SqK8kIKjUKO50sLxu6Ly56SOQ4ZFbvF5hze9Tz6ACKFXZf7nMuvOmM+nVnzyso8rb1V5NNR+ueKSQ+M1LRMR12TGPG+Bw19UOsTX+Pi3Rj1lP2lz+jiNnmQgjdxZ0Q5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyHZ8RUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyHZ8RUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C193FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779046833;
	bh=5oa4spdwy+tT239WL8Asou4PWo8ypBInzoZuBge5ytY=;
	h=To:Subject:From:Date:From;
	b=RyHZ8RUATZYzvhaqmXuELA7t5Ehij8glyVO+LBsv2BqOlrwkI35sdABUDbwvc05gI
	 twUSPt2jxh1cYJO2aO0PJFfgYI0UTXAR95ZqPI+vV69h1P2bIwF9YFuGtQoFBoTkBH
	 BRRVnM9Yk1gdQsA1yXjltg1exRkSjO3tEO8+pE2xfzC+kmXgCrnFS61Ss5Da8cuhXp
	 Y7whSxphn2mlo0sEt9ariGGwZqNJtcZaILWbQwHUGHFdoUGMSDZK/CEQetoRYWnTlk
	 cY2Dzl0hbDpB87jWoGNrI48ANNMVYRzDQnOwhUOjnabDGcfLuS6x+zX+entr7KpnKn
	 W3rDmKJ22feFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D1CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904683369.9112.6781052532549055840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fc48a331dd70b1d4777a4027c226c1f7d8b4a529cd5f887cafaab7a75ba1ed
Date: Sun, 17 May 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779046833
