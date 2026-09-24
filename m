Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161B40B110
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790289034; cv=none; b=IyFwCrz3bcFGTNSOp/POzMf9tv3IfkgYV6mjhtqw0tWzeZr5a37eI+nrCfLlMzBzpvpRk/qDmcto07KPLDvuvz1wzQNqzgsz9D8MbIAYDV9vr0bv9gTvDmidMVCtwqdlxKRz07N8iVvwDj+gGGaWCGmcc0vuIdaIWc7njxiXx6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790289034; c=relaxed/simple;
	bh=0jF5ElYUlK/yeeOJiHWPqIV8rzprhL26lo1me+bWLyk=;
	h=To:Subject:From:Message-Id:Date; b=YZ1bbWszMlFF59hFjYZQdA7FJuB41jDOaOyHAbrd8mbuDLTchUi6+3EAXcW/ar2gUISz79JolJJiu+wbAhkrEgGfhUAqcCXY6H9MlIGDwkP9DGmLpGgtpAvNtFAaAGQaqO7MMtsba647308l4LuAMzJqeWumY+yNR+N5xMHVc04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVMjb6+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVMjb6+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C1AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790289033;
	bh=0jF5ElYUlK/yeeOJiHWPqIV8rzprhL26lo1me+bWLyk=;
	h=To:Subject:From:Date:From;
	b=DVMjb6+NwCyHJP5Y3Fg4r45M68jFCaTkFe0hrsbUPOWR0q2kP6RnbaIEvehrTK33f
	 gcHt06CV5mz3LUDo345lzvyrRC0tVsdXtxV0ZBK5mwU9EoT7SxUvp0DpzNs4aVmmJQ
	 d/Rk1TZoptAkkX7ZaGuWiJpjqBTNgMZXB0OzWLehZ7Pe0yrq5yb5iHrG0q1kW2rnRQ
	 l2//1vUb4nxUrbxRptE1Kl1pWkcFCt83DincMyKYgbLgqIxK0WN6fYzgK1UDV8H5nw
	 pymNgS840dQ+OYAoc2i6IBKJhiElGVuqmUP+UpMUG/9mcW0kjawY1UOYpBpIi/drgq
	 ktWx3f1ILpg3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7B9C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028903370.19096.15262299802781713821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac48b5f71f174c52d7f1b682911eb6884dd40d3ab206e71b09d25bd2b45d11f
Date: Thu, 24 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790289033
