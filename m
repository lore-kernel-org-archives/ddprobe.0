Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133E433F5A5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773433494; cv=none; b=XPVFTl6myaXKpW5/NZxF2+aj93rpobH9GS5OoSejxFaxFFsf3v18ytzsy++JpAPNt6w2yHFMu3ugwoNjV018Quxv1g5YiaCa8+erQR4917uOi8ePEHzsVIT5Fz49WTO+UObug02NoKwNOWhL7GNRMH+oGeHiVBMA+c1JQIR2eVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773433494; c=relaxed/simple;
	bh=F9cnG/TzbikCxg2bp1toz9TrDHtvF4Edw9XR26PQpQM=;
	h=To:Subject:From:Message-Id:Date; b=hzE7iU1vgzW/WsduLRnEb4Mj6GdnZNybHGpZKxnisGxiSDDltmKhNxo2Adk8pxZZcugd9lFCYAGLpFqlIKcEXDIhdSnzGPO74b7pZla2cgskPflkw40DPBYqZEpolRKPUk4WfolT/yHZU3I/oPBK22imCv69bJLLthzrPZbMpuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bS7rFKZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS7rFKZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F4C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773433493;
	bh=F9cnG/TzbikCxg2bp1toz9TrDHtvF4Edw9XR26PQpQM=;
	h=To:Subject:From:Date:From;
	b=bS7rFKZPYmTbg8g8GNWR2lVfd/nlblFGuXEY45JYSzJmuu1aHF6OcHppyDK5/YYTO
	 4smmcbpBxVO/l6NFO+DqHm6v8jlcAVS3BhAfiZmi7zNoESNRxyuRd4ndflfoe6Tu56
	 w2t1YrXjgpkKCjdsnIou2BZ7WXBEGaBDCIiy0z3atRJebIGmMjZ92u2Pm8IG3xXzmU
	 2zRpWHhqUvQ9ifV72PyPmm8+ThoAY66M3RuGe5wEAY7STpqbQViv9DAR5qj0DBcZAQ
	 j6tpI5mTDVU/iVWgOxC0fPiwrOuKWGo++xkzzYNltmikfvtaklOglqFGOHQcJjymHS
	 plDb078a7Yx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C8B107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343349357.9232.4100031716748672639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8387291c2b6e7d8603aef2bb943d1f71df3dc23309d89dcae956720f723fe093
Date: Fri, 13 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773433493
