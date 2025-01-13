Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2D71FDA9F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736760954; cv=none; b=lBo52j70s8Aob790Km/9U1xROdHYm7LdnfirtozWbhBiAztg79sjmjGWeACUsyAAvVax7sU2gvzWtDMb2LIquQGgb0fpbIS8wKAyHSyrcrZ2237fLs46yJB3LT2SPMRWQFGF2Nkali4fzCQEVsZPPkOXU9KNkZOPv/dRTaIjwNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736760954; c=relaxed/simple;
	bh=jQAjhh52NXtnhzMlqnH94pFCPh7qzgoZpHYgF/8tmLI=;
	h=To:Subject:From:Message-Id:Date; b=pXs/tf30tcO25UrLxx3CAELXZNfufXJgc/ErnrWsuQnAP5ZDiBrit+zoRXJ78HPuFfaLa4vej9ZUruthRXOzLYKJeZsR86XG9eAxbfuBMZAYUsLQSvbX625Sg6aVLVqgPakuULBIGb86yiR6Xwlwy3bai8U9C+6N/WVg8PbEIik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKuhjVFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKuhjVFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7807C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736760953;
	bh=jQAjhh52NXtnhzMlqnH94pFCPh7qzgoZpHYgF/8tmLI=;
	h=To:Subject:From:Date:From;
	b=eKuhjVFcDGUTdsLmeH5ErhpoJHZUiK3xRi+IyUHb0DTbdbkLuyj9y+rgnOUm3MGAD
	 TFPraLCCa5S7ZmEAjLCgXu+JiHcu3mYJKb2GMYxapelbv9iSFSJy1I3kfecUY4CBip
	 Ik+/BNIfKHuCNSKUeXzMZBYsZPeH2AkVsthssZjTaVyLwa796oDZAl6lOQKi4H7xJA
	 NMoGRKeitSogzMbxqxT45tH2a57Jb/hn4zCxgEnna4IBSqD4J4vFXkMM6jd3WtjpJY
	 qBTFLqI2hG31HmuLlWfm7h8OPpLS36KBcYFCA3KR+fgA7iVjuEY4AWOcnw9j/fqoMd
	 sKTogIlsGCmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB69E7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676095357.29199.16449518799757836106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c051832868736cda70794c8d5b43c9b69a5f8fff3d6eececc554c2276e96d281
Date: Mon, 13 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736760953
