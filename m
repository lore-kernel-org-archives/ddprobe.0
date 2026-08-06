Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4283FB042
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786029034; cv=none; b=H06cnM0MLeRkEWQtYr+J+cOEH+2H+fgYB75jt8+qYrxuDgjQm3NlOK8giYmdKSxIuaPakZr8PnAdTAwTp2ATMWvmaDjQVAs/jRzHMrlgpqaQM41U0BeA3TyL24cgcg/qb9D/jK/uEAZThFLT+48s0lg0VP1Cj/bxcEJ/60ZVzP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786029034; c=relaxed/simple;
	bh=K8m+uQ/XCgRyjV0bUZbUpmqkhCAR/r4THU+ckTDQ1Nk=;
	h=To:Subject:From:Message-Id:Date; b=mTWHHr6A4QFXu7X7bmrnCDAQ8l7sci5OET7le4JVvXgjn0SJZx6nuLdBFgpB0l6Iqo/QRbu7YztUB+nxnxSLNNg/FqSUeBNnY6PS8ATU72ZOBRX+ds+ACID/KYXrW28EcXDK1kYFcT56B74eCSxMh9hdLU5XUH5pTsTClhiTW3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DP0jSq8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DP0jSq8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA32C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786029033;
	bh=K8m+uQ/XCgRyjV0bUZbUpmqkhCAR/r4THU+ckTDQ1Nk=;
	h=To:Subject:From:Date:From;
	b=DP0jSq8bcmQZJKQ9ANMidiN21/5wt4KYZo97k0UuXRoVIopC7oYo6CiBDrY6CxPSx
	 2DaPkOU8waId6WdLh0WZkmeasZTQlDp/G7j+qR8JVLwtTr/y8MnO8gHd8UWN6rpPWh
	 pIlKBuonzgC1WeMarlgngwtS5CQTyuAZh7w2aMZKjMn+IpydPgTjW2crKH5QKLVmDc
	 6nZj91jHto2hok/qp+zeat/imZU3krTfGYe/lN36Euz4FpvKVvD/tETqW/UXlQDVXD
	 lCYAsE9aRQK2BQoGbWWXUDS1A3tZNbaPf/oix4gGWBpDmjN71pHcAKbF420O0FWLW/
	 0yn4Kw/krmrqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC69C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602903369.1808.7951339113776927311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c7efc6ecc74560aa4908e91639827a78381add0827332b5afc0e69ec0f37c8
Date: Thu, 06 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786029033
