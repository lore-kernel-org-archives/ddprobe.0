Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D587260B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749266394; cv=none; b=AND0Yj9R5KCqbfZoyt+YCAiskB2k1bPyRPMLpzAqbaHSQDuRNTnr0i006cNu4SwFPuUJG64+UiQTbLMgK99Pit8UaNdoA0Ii+59j7r+2kUoUJGsgQy88oLh9oxB2BUuTwozzybA99NNBOiVWne4BIAeDYR5eNNxv+q9nbTqe41A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749266394; c=relaxed/simple;
	bh=MZea5dl88XoQJmC9D26aCaY31TTEc3fO2eUqo559jDI=;
	h=To:Subject:From:Message-Id:Date; b=naCD1Tw8SPou7l8srzFx0CsMcJrgTLzM6lXBvBlEul+AkMe4EVqOUmTUJlmhSb3fAaZXUi2gZeyYZPkSftWXLSOfwtBtrBjV3OAbifuc714kpmDVEXN3En/TMLvYURCOghVwXJGGphl8tqPzDkFTsK4z4qNO6dNeYS+HvSRpeGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3NEsv6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3NEsv6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B70C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749266393;
	bh=MZea5dl88XoQJmC9D26aCaY31TTEc3fO2eUqo559jDI=;
	h=To:Subject:From:Date:From;
	b=N3NEsv6Vvg56M8Ue45rX4MD3TYR+wSYDgz4Qu7cgfwAXSXroOJlAn0HgEhyYsHeNJ
	 DubHys2E9TufJgjvZy+II38WInP9kAGtLLqef4+9d+MfbnHCwAOLDU2oWz0XcJUOG9
	 U7co3upBEc9CHaoEHasU2U25NGgfiBmzlKZtgae2QD+tbNS9EFwgTCsKMtWnz8DdZS
	 GcK0Rc9R9nScn7hUazVbbWVjw3c+IKgZVApWiLjnCCTcMe7vMOT97+sa2PRAYRgCh2
	 F1kyZ8a5YadyWWobFEkm6PfoUdKWrJiZaFYFhw3c9O2j9EY+VDapdDr7n4312ChZAo
	 eLi2ZfOZy4KSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED6C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926639357.19089.7564219772159767068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486b98f823262d1d892740eee4831851839ac2d3f8e165520f358f45829e8038
Date: Sat, 07 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749266393
