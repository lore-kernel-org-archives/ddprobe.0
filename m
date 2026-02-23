Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135B927A133
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771855494; cv=none; b=W0fQUxnPHKKfFrbyFZ4fujALoxOmb3du8lmqbvKvjhcTGeXprgF7FifBORlZzGSAgheAM46qkIbmW/mDkkgX8CZdXkRvCKU6oYQk2pfRghFQbMUxzIWajvjKXlzkrzaktOd/dAc0irHKglfL+MASFeyalxgq4wqkgsq2HlYb9nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771855494; c=relaxed/simple;
	bh=EV9CASfL+zCW2QXSYzLFXyfqSEV0Otsmw0eQdtJwM74=;
	h=To:Subject:From:Message-Id:Date; b=D87EGxC4OcPz1iVEz33fzkblulOWRug70+SXSumWJ7Tm9i3H+4zphtilQsLUr07ZQ4f6Rmvhtc0+8zOqjEdAEmbwa/otU2dHJsih6PtdygzA7XN2txZzpEm60txPt0Pe/rUn/Q7W4VOd+gYF+1J7AA8c70oqlMeozA69YoCitBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjr5ckFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjr5ckFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A2BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771855493;
	bh=EV9CASfL+zCW2QXSYzLFXyfqSEV0Otsmw0eQdtJwM74=;
	h=To:Subject:From:Date:From;
	b=Hjr5ckFd7Os2Ptc2z0c2+7+hw1dWFZM5UwL7z16HOPzoF3FMiPnEWJFGKyKrmIa2K
	 y3+0ZuASdco9ei0+IgCPVpXLMr24OeiAaF9bUidL+tDQsZ8Xye81oEezMvVBICRoQO
	 xF2A8qLv29jRWUAFe/OTbMc6cRbDZU2YcLvf6/Oq0Gjcy5RzSrKytV1rKlcckSWCda
	 p+vAA5LCKtLxc6UlXl5lpBOiU+zljgVx0BPSvf7vlbox1OjbVAXtBnv72uFEkiQGLD
	 Qk8kENNttaBfvVdXbRIejgMcoDFdfqYolnAXLk8rWo4S1Rwyka5cIMtYydfh9pFNeZ
	 rIIg4Zr7IEhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967EAEA4FBA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185549360.17644.9605675665529272055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb094d0ff9fe6b495aa4638bec1e2a305ef3d266fdeae183ebcd23e4b3a47fb
Date: Mon, 23 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771855493
