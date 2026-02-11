Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C306316197
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770812094; cv=none; b=VFOy6vejGT9TcyGXQpfvHiW5HGIVT/aySZi3QceOr2X1oD19OgqUIQ2bbGi+ixM21gTH37nGoOjYsEydf1u/I1ZNbx5+aVdpkxxiN8NYwqAtE41d4GBG6m4Um2HmLeZtioHicP8Sejq0PfKAVSZQmZcgrSf2kL0HT4bhGSexwEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770812094; c=relaxed/simple;
	bh=s7S+u3G0ZHKBUStMLIovNXeOmM8SRTHPktZyfReqUwk=;
	h=To:Subject:From:Message-Id:Date; b=cLRIzawdpIu/sX+5MbRHxWWhF6geJ1orJHHpHnA3FoBQXHB+AOkcnu3EBLWEGLq7Z8md5c9hQqwlVWCJhEVheepbjmhEInc0jloGUgqNDmHe5WPsxo4S4hYdtv+X1an1qegsEAMKD++rruXrYbD7zZm/olUUHehr3q5IVSuSrmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKt04ST8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKt04ST8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6731C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770812093;
	bh=s7S+u3G0ZHKBUStMLIovNXeOmM8SRTHPktZyfReqUwk=;
	h=To:Subject:From:Date:From;
	b=dKt04ST8NZrx7cBc9dumPWjzz8tl6gsJbJS6c55PJcf7/wmyCB1l6TPsQ7H04NeCq
	 uh/txi+SqdLua7FIeoUCfCIOM1vFTk0ybANpcf9IPlhGOcGCADHffPM/3WLGnaDU00
	 9R3rGBSI+Z3+pPNWS+EVSc5mBLqtknQQl+nuzhiuhygaunyJ+amMB41vVwdzMwVURU
	 QRAx0/AwjdL6Qz86UbUldlratX84I7+1ZujCyYp4O5vTKmsYVzefketGymer1HGFRh
	 C0lj1kCleugRFHSA5cnA8UOO8BlTJkEfwLZsdwF1zP4S8QH/LRu5ICRuQR/V7YzZeN
	 OAcViDfx3q+qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BA6E9E2FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081209370.17488.12689327857537478582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06175c3bb68e4ee589e92659926bdab336b515199bbb5320aa16916f51992aba
Date: Wed, 11 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770812093
