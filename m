Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7B8394EBD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780559074; cv=none; b=JtUIqUL1znG0SEGDjczOhTpdoZUlj6wp3nvsc5FbwylinRndMv5DJG7/SMuFfbQ5q3rq6658/Gnb5M2GUqkVtVSkle2r8ajvADpdgunpEdPeVsG6f1G4XMDloZAkC4fuY2ceGqzCFylNr0wKVYlRxfhrWRswQ+hCd+R3ZCl/a1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780559074; c=relaxed/simple;
	bh=Ue6Iz7UySuK8XhJuM75m2uRBEDthesrtK8tmG2PEMl4=;
	h=To:Subject:From:Message-Id:Date; b=K/JBfOSpw+TJTMDmOAwymGo5Sykje/jAT7Hom1rzIvkAc2RmQuyxM7beXZAUIIGyg0pg9vDTHZrOT22kyfcZgxWWrIjFoVh/5Q8OLReZxmNMT94+u7YmZFgjbJXIF8pLgEmLLCG3k8OeX3XuOGJC5qZVbUoUCmokDBZ8QkyuMgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ibm3AnEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ibm3AnEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8136C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780559073;
	bh=Ue6Iz7UySuK8XhJuM75m2uRBEDthesrtK8tmG2PEMl4=;
	h=To:Subject:From:Date:From;
	b=Ibm3AnEPd5uBCZuGyHc9wFo0ry29H+hIRgQNjY+TkJFyOZ3ZvReDOH7kinDk2Q4Zt
	 Ict6ZKKnb9syKIK22rKnqQHt18/9czlsZMi4kM73pWqsl5cfoGoyN1KLHG60Cm/TJa
	 lhq4rgoGYNvC/yFpAB1C2CgTl6QI0qA0COnO0I+ypOT/Hd+GmNm7sxdysV9GOT/+oP
	 hYhmApZGJfAhuuYMpr+Ybp5n6sdWZDQEp864PY5BfKI4shgZaUXs1wR7OagJte8ukT
	 VSHoseL8pnTpKz4X5RSRppzx6JDZYxWF4ZfXcHMX2/xRPqcJFb2nh4r4a0StCkh86i
	 LT6wienrG76mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE16CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055907369.15375.12250365462629776299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad82941f9659104938394808cb2a649a731ed04e528949753fa9f5dc937cf149
Date: Thu, 04 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780559073
