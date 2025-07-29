Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D961C3C04
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753783194; cv=none; b=VUdoog5iLRjWI9/MDZxpsaOEq0nSsbVm+Z3OcCFJ4bcb6A85Pch8hWlHhe789Sxm2kNgW2fPKUdKoWWjfDurE3Skafc6kimgFWLHCL6fb5t827bcaOubBueZMaaoQNlcS7HM+etdfcBxjC7jChAWOYTlE++W+5JKiCfjtljUdMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753783194; c=relaxed/simple;
	bh=Is4PoDKwA5pY3mx52C7g6rvf+MJE+3ZaBe60sEDBM54=;
	h=To:Subject:From:Message-Id:Date; b=HDjjNLSUGuNqvtiFCUy8//yOOHZs3ocPtY3bdDvx8qvLLOl37tnJ3TFDZJJq8B3KuD7VL03L2/rqWAffMTSUsrpYxSkwYWhbv7xyDP3bAgEghhioSzw2bBQtxNUDMJW5BScTRaD1RTGi7X2JL97Fpt+Wyqr2WDiNXmse2l6dhyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jws6qqEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jws6qqEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7ECC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753783193;
	bh=Is4PoDKwA5pY3mx52C7g6rvf+MJE+3ZaBe60sEDBM54=;
	h=To:Subject:From:Date:From;
	b=Jws6qqEy3gQgFHXhkTfx+mP2WkySVHkTzWdHgyN8UgHM1gZ1QpBjtGUOGL138r0m3
	 NYwpQIviKsa/GoIelhT/FnOC+qWvbnE2QDYMvTxYyySJfuUBAp4Nb6jtyaGQDMurds
	 TVXplno8Yr4VV5kdNY+fRguNBTVGYQONxF6NUFr/zUyhFhQ06KTQAEytXuIVXezehG
	 0/6y9ntCS6RZus7pMeBs9NJPeIBBjx57EntI1pXuT+OfyhC/Uj9gzHd38Q18fQKNa+
	 63br5v0BU1hM66A6a3EcTjtsHJ+97/liQSdzZqGX2RZsWwwDqJk6ZvErwtC8Pg/ls6
	 xdXN4z6+Rxd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91960C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378319357.29589.6032514974930587962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c813260bcf6a77f671c597bf8e95b27ba6832f0dc07e5058ba89e936b8635f
Date: Tue, 29 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753783193
