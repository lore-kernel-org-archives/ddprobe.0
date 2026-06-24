Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427C82E0902
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782261994; cv=none; b=mWFZm+auCBGIuGKPHfIbUb8/kHwe12++UkSZjfNwlz4Bctd5weq9dcWOJCUXR6xC4YdkoiGCEtMo2CpaPaEyG37rwDo1Yfxb2wChaZTEO+DyDPiG2fllsFlgfu4g99WWFAutnLOOZpnCoLn0byy05N0U6X2lagjGZM5DYJVzQeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782261994; c=relaxed/simple;
	bh=p11qaSuzM/p2bwe1HRRVg3XNUJ5NwaEzs31uZ9FkCmw=;
	h=To:Subject:From:Message-Id:Date; b=j0DZZTLPkP31eaf14ORzwZNdBWU2Q6EoRf7DgwG26R9u59cEk/ZOdy4SGy2J2TEO04eNcGNAsMhD3IslSuk7EDMPH1GybnDRPceOISQn8fS+j9t2Xk7Fmhpz9CTTEz4J7C1rjK3914DdtvE6QIgnLoh2wjOSOEHMDcDqDn7pkTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI8s4wPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI8s4wPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A4BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782261993;
	bh=p11qaSuzM/p2bwe1HRRVg3XNUJ5NwaEzs31uZ9FkCmw=;
	h=To:Subject:From:Date:From;
	b=rI8s4wPSOk8xCYsXB5aMHYjDhibQ7C8NMpy48Az5KnqePv9xvotKo1IXhRbOOG4jy
	 xGq+bkTcIVWqUWA988xjcS7wfmKQGspGZmgvNDq5VevANJsOLbauc+/qRd8fAaz3WF
	 9z3TReca9Cd25+tSkX4LV7WsKBKIEH07rP2oUs8n8ftAJ8RseX2mo+8+lVuQsPpgnE
	 sqV3JmKpevSRGy+mwtJneIGF3jrGMMZ7hIr+9PF/aBPlpmuS9RxUllZ1isfReoozDr
	 UsqoOYe1oqPvh23ojQ1PMc+APzeXUPzH4eF7vCSD0RJ8Ami4JR3OblSE31I9MAPm+x
	 5+JzO0gDfiwbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B730CCD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226199371.22648.9751439613294485392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0baa4fa87b75315f84e42e2d4f4c974e347b09c86656dd2397ebb6e9c18a112
Date: Wed, 24 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782261993
