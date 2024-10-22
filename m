Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BF61E495
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729604754; cv=none; b=MXbgbvFhzQB7/7ma51ZdEJ0tl/cXmheoAVmdTCFuXxosYlT/hX1sQjxTt/uiJ+gR2+MZYNSnjqqoco+2ofS4GYXW6+XQJsm8L7tPh7sE05zvZldEViD7Qv/ZClTJ21PNpxPi+gGq+JBHm7F5CYWQPJj8sbRyJIFhm/b6U/Mw1XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729604754; c=relaxed/simple;
	bh=4ifo2Rzmclv28ypjod8JNXitCwDLeKlflYFstc3F7zU=;
	h=To:Subject:From:Message-Id:Date; b=oR6A7JTVy2h2OkGg1R5AmSzmCpJSFKINAuAcIFiftKagiEyUTUexX1xjnqeAmL7y6sbBCUV7zMbLu/Y9/AJPYIo2ciICd9hTiloAOfeLFhK81ejO92n6kQeIIIdPLZNcMFR664Hn/SImfhnWKohaFdzOa8nVQiAyqcunLGVUiB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQAYD//6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQAYD//6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60DBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729604753;
	bh=4ifo2Rzmclv28ypjod8JNXitCwDLeKlflYFstc3F7zU=;
	h=To:Subject:From:Date:From;
	b=EQAYD//6wmllIH2rAGcLlLjk4CiqoCcXQbQewv7VBUx4URviAXInB89eRQvgCuxFM
	 MBKxhx2CZl4Z3vlVScPZoA0bBkRG2SFY7fa+066a+5MG7AZmdA4gaxt+mxpAavaqIS
	 YJRtZqInG3qbWRqPZhyK7rIGDSpe76Ddw5Z+AUqakuzcfRUc2RNdCWxG4KJtlkNr6w
	 OCBy1f7cQYJSlA4htmrUKkcdwPHtvptcsoLSZp/tL2JiYx93AyUwEku1bz4agdsogW
	 I1de5YA6ETmRWYmdHprw8Uz24BHSCyop/dQXSFLr/+9IycEJDh2NQzP2WGPw6PreF8
	 zbrkQrnMoljVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC574D2C554
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172960475367.20981.6983676177724146240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e0f313cefb3b2eaaa6d8431b5eb18bb7057b1d86eb0ab2f23fc4b132c48220
Date: Tue, 22 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729604753
