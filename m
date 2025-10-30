Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D44133B963
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761827394; cv=none; b=QkWRgKa/TNmEMa43hpaVYEwCycXbmV0GVrH5ZTZKXSMB8Vhu6e//OHQBXhGbDXpzDgo6vyv1lgT5kZ34jns8VfZN92iUIoSi4Jl3TsEUMhyItcD/gJbDFAKvbt38odjPEcwc7lybcv4wGJSyQ0Fnef33ndP53IANLJXYttv5tCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761827394; c=relaxed/simple;
	bh=63xgo5z80iZoV+B5iGN/rsFqgppHcG1JP+bvJ5+hgqM=;
	h=To:Subject:From:Message-Id:Date; b=tH5SDkS3Z4ZcTI7dBHuyo/4/O/q1Rr4nKvsIq5mzj5Z2LjoceBUUEV07qsTzXbSCdrMMGOwCJfjQ2xzjHFTshquVwnWb7oM2LmnhlmjNkBpEDP9Qve8Mepq7PauTUj785Ocl08z+RMOlMwKCsF0EAUsSuxvB9gu1nX8NDkxXXCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7Wpm/M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7Wpm/M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F0C113D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761827393;
	bh=63xgo5z80iZoV+B5iGN/rsFqgppHcG1JP+bvJ5+hgqM=;
	h=To:Subject:From:Date:From;
	b=W7Wpm/M0hCI8pbPkG7su82gOv6wxhQoh1DUCmcCyUHen42cVLDxHGpvuu0d/YZnGE
	 9/QSaELJEyLrYQfVkQqHUR1TvNq+8NlfdOYyfX9H6cH8M4u869ZVgKY+dpFjAZY2nW
	 6F8F5AfTfBxAkbS5GZwho67gkGvE9hsw2qi0KZj00BWTnr8E1k9wqnXpykupRnWOHy
	 unANEDhbRqQN36tb8plXRtyK1wYHZgYBaJMzypJoD+ZOv0hL6eNhTPo+h3CbuFjMbu
	 yvvEL11TWY7BZuX6CkeV7KlImhRzd03Czyjv6+tGFyDYCKvQs1tXyrNdz4JAw6FmXW
	 Pt+TG93nWKjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1398CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182739365.31196.12244032133174202651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f4d085e0112e0554a81b97fe3cc249be6b9958591cac562b24057eb0e9b41f
Date: Thu, 30 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761827393
