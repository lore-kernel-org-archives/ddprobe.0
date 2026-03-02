Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238B321B905
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772432694; cv=none; b=hyylLHo9TUsFEiFM93zwOywFi7h3ElKPkz1KvjwVs2h2Zkz5bvgMSrfkPtMD5Ru/Q7ZIJPXiLF/fWETC0A9NNuSvJnUq5FHCugD1q4jT7sgDdiYeYEKFIiHACpGty0fD0tjp28dTClcEtPo9UM9GfslnSNvxsbUxIQolszMPrLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772432694; c=relaxed/simple;
	bh=HlbBJw/FC7AW6WCOcAK31ghuSZvIw9ey0tAOvy5Vccc=;
	h=To:Subject:From:Message-Id:Date; b=IW1F3aq4rUVesLIAYcCyBbxe6uST2dTIQpljfbgYj1LBDVWGum6Hkhe981AtDJnNYMZZ8GC/XVUPdlWB+emIvuo0nJ/oZUpJJyvrdH8s55WYljz3zzSAjPu2wWZ5hEQvMi8mw5dRoceUw4lhcMYTo3Ilgc0hA0Vad35ZqFs1Pig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGvk6zaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGvk6zaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE51C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772432693;
	bh=HlbBJw/FC7AW6WCOcAK31ghuSZvIw9ey0tAOvy5Vccc=;
	h=To:Subject:From:Date:From;
	b=pGvk6zaTehc+NQ1PDy4jDmy+zgFx0Cb8wxi7ISXwKmwFFg89RkeKsa6HF6GvXK2Do
	 +jGvpVC54nKKkM2bs2+w7lIxWs1Qmo29pow0YpATPNvGhmI9gr/IqLZKZIUsynrsch
	 YXyo+8EtX+kLE0n9xmp8EYOekA0q/wgOr/Rxo2bxsfQns6P9LlncPdLJcX80tmpqdC
	 F3hccmhWZAUaXfvVbVuo49R4J88k5+yT31TD0V0wGjpOqdJC/eeHsoc6B06mkXHWBT
	 UDdTTPlL+sVuU5bhJrM5HPxEAT6qOiN5kqxgni7fy9d5v6axUoLfJerA2lHyHE43Sc
	 1DX54gxs17F5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95218D58E62
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243269359.15285.17698647905604173044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc80cc1952465234603c5adbb7688404141f59bf965dd114e46c87128b880774
Date: Mon, 02 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772432693
