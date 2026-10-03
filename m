Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6913E3C07A
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790993434; cv=none; b=rqpPHG4EM7/Y9i6EHFK2B9AlVJAS3hMetOVBENZol3JyuuHUNgf7L1AojDjhMQo3ber18ibNP43k4DVmWqjJC3uq1SXXTe08xT/JK8EoT1KYiT0RTBb0ktqW4O6RD6PTo2sAeHRI2sgO3GKe6cmZydW8x46opzzxfnegQOd96cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790993434; c=relaxed/simple;
	bh=SFaBwxaUztHeCoH4iE/fwZlleDT6CtYV726KaFzMoGk=;
	h=To:Subject:From:Message-Id:Date; b=B62j3d/d4Ac7Q+ySnClD30wyEV656vKwzYz0PVTGY73shTqoMGARPkb1LnnTs0f4Wu/rgnbrQhDCxgdi+rBcbSXPGIJ+k71A6Nbx6yxadtfedtEw3pIUyzO/GYGc9hMkqWgq0W9/6hj36WaawUSyKuyV1vyAfsC7Xyx4agcBvaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1va4YNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1va4YNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF00C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790993433;
	bh=SFaBwxaUztHeCoH4iE/fwZlleDT6CtYV726KaFzMoGk=;
	h=To:Subject:From:Date:From;
	b=c1va4YNYyYF57ORh0804okJJ4x2FK2StpGhCWcp7Hmc5Rk/zsKuMqqDFGRtTmIQr/
	 4dqqHZL05U84CuWzcGYPUT+rOkMILGNKw9oewgrD71E2wOU6yUXnJaQnQWj7aitOoZ
	 Ggd6PneBJhqazLPJ4lkhajWBtBCBzR9j0GMWThFSiBOKn05zvxEIUOwchBBr/AwWjx
	 9ro5KgKfcKjV7aT+/k/DugDi3+f1bcprO+NZ5awsBAvwUYkGWHmCZoBgZRliWJriVf
	 wgAjV/iNjUQn/5g0BO50cCZKiNn52gOjw+EdpkEe9LH7b/9a3FQiT2TcfghimQxqhR
	 0mPKhuiApcBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1994CA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099343369.7113.1656269362295235286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db879931fe4a1438985e1facca478614f1b9bdc5dbea81933cc848c61faab362
Date: Sat, 03 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790993433
