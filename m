Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2416B4AD4DB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789552235; cv=none; b=kUlqGyVrRslH8PJPGyG6sSBgYxgrnpVyw7Puf30PsReIVhX6i0AUIJLFEmXbs4J1nIwwozyF8xOhqvpxLOR3unx9aJRJK1EXFQVhlAY6bLJO+nOLF0x6P3r3W9y+bdS3YYP7aLm7GHIZ7ae8ZX93BmyiXqXEIiJePBngTk47kKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789552235; c=relaxed/simple;
	bh=kJnALYTyQPRbyfqrCCx2CaDqnQ/WE9eOc4WSbOx5vJQ=;
	h=To:Subject:From:Message-Id:Date; b=VLRS+Qp2Fidag4G5TP8cPvxq2ZzibAmsTRjs7GgzUYpSHIZnc+p8BhFOrwEzPilrbj38FtlaJhVhfddQjdf5EvhG2C+ybwbJ1eX6842yi4eWXwvgty7a4W4IjsjrEPwuR3dH451waBWJszm+zPJE8nZV7HmAH2LKduGKS1Kn+xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRixFG6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRixFG6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DE9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789552233;
	bh=kJnALYTyQPRbyfqrCCx2CaDqnQ/WE9eOc4WSbOx5vJQ=;
	h=To:Subject:From:Date:From;
	b=oRixFG6C/l4mv06DGoAFrVcCP+TfNz7gzyQvMa8g0K8/h0nGS3CZKi/nFMpoff2NO
	 qx4B2HVejUa7Gdt6Eb+y0j9LKBrBWvKWI+qt20rVrdiFrjAX06pLd2j2shzcUnBUUp
	 sdcpeW4R08pVUqWCLy6u73tYKl+khn9rWLJnqHQ70F2GPaRAYfonoVPXzeJouz5Oxe
	 p/PLctyVFLHuI0Yvg+nJsRPq1Ppzjr/YvAIyYdMEi6lnmzrms30wa6+NDiCaJ+CHd5
	 b6TnWGivSzFJgaI2blpergxJsh28czDG5v+QO4qu/nrisz6LfAehftfb77/KytjMut
	 QDLxq5Rj59Tjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3456C982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955223372.11671.7673429518086655420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da517e2d55a6ae028b83c9445c69f911dd60f34fac19d159d773c354d76080af
Date: Wed, 16 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789552233
