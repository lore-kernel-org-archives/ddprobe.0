Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190A6259498
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782046594; cv=none; b=YedJrhzRKZFw4kfKWIYIza6HjOhz3xDw20gIIepDuacki8j/otdFWAF2e3wZu8GEN4iID4fsoI+IP8vG8EL6LMw20KewevwLx4R4M1cL9FkwzKotBfCf/qwwxqVmSB5Jr+g2MPCKPKv0ojhZA73x9tHoW+RQxKw2bn+2+PtocHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782046594; c=relaxed/simple;
	bh=r3HgMlj9uakRmV+npb3W3k4fHQZi68e2tBr2FC5948o=;
	h=To:Subject:From:Message-Id:Date; b=NDwnn9gN3BYgCVe6pYkRPBSEkQatksiKJQwGTUxZBzA0ax3yg2U2GmLmzXGGVDxZZAn3JdXhT3jAOK5UgRZtjcFb81EGZpnlNFIzoxQ9DPxGF5/Q56tDaqGy0PZ1EhuohCka8Mr4gw33qvMYYa2A79yaaRDpnaCaM7diytP6Z4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtPXlED7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtPXlED7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF43C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782046593;
	bh=r3HgMlj9uakRmV+npb3W3k4fHQZi68e2tBr2FC5948o=;
	h=To:Subject:From:Date:From;
	b=CtPXlED75KVP685vE3TR2vRHg+RQ+YJM+HaAe3MEa6YEqwBwpYnFltN+g1ll2rTNo
	 oKobtIXweHPevabGg6L6hD+h9MFuTdXo2ZEf6utaNC7zc+14LQgqDYmpk0PoJY70IC
	 VGb4N9PlYrcHQ40MfgL2lqY4o2+OvMq9VtqrRVxJtw+/mjc/2yx+qVOjDwcNOA6j4h
	 iH8ujUWSQbeQxjNs+QrxasUjGUsuWHkNodsG4xlL5TTxMATb90y3bIkmsX+wzYwg0o
	 KIJQluzh+EqdQApb4cQd5Glb51Tv409riqxvcJ4vJWV0IYgCM1cdmvruS7CW2uiX/l
	 97Daff0zK3SFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3C9CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178204659370.31124.11972100553152841449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06ba83a2ecff092f660aff7d2d840e31ab235aa519b0dadfbc470c0fd0f19ac
Date: Sun, 21 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782046593
