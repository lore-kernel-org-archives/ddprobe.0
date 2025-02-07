Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4775F187342
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738956954; cv=none; b=g4XDe/6dBacdifA3eBB6QlSxgQFe3fv8dL31Ru/F6F4qwDWMYRYUZo0e1sGI6re+GtI63BSaL+0jI6u5EtOEKfI31EhJGgTWtQJ33wlt5AdzFDyEOnSFmQBuwmh160nw9oS78Jo5efM6H8JjjKBY7A2eb0En5H3pOuyf5homXEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738956954; c=relaxed/simple;
	bh=ovUtRTziKFY67F7jKTYYjygRBytE0bNIWsr5kTVYVNo=;
	h=To:Subject:From:Message-Id:Date; b=OHK1dX1ZlyF1SYmHYCKI7hJb5sFxSHHtq2B1tqFY8GMOBnX6Y/qe2kIvAq6ienTZAy2fZgLp8GrbshZ6W/duhE6aSwOUJa8Ram+fBopnh9ipqDGLnmrkb7T4nn6WnzCrMw5VMTxVeTLcskS5MeuvuRKqmRjcN9/OqfInDTB8yh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POMZ5jrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POMZ5jrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5536C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738956953;
	bh=ovUtRTziKFY67F7jKTYYjygRBytE0bNIWsr5kTVYVNo=;
	h=To:Subject:From:Date:From;
	b=POMZ5jrnX5ehzCqZM6KHatyTorOkl3pIfrzwhaugkHUYB+NU/Fp+J8ttjcwcuC3KH
	 1K1b1Jh8Vvl8rAuh3DWdRJlvtTPNtlnkGWepMWaQ1feY+scAu201dD7yW5zOqcEmRk
	 KFBJmoVYOLrvOxlUbc4MhEMYgOAHuAEJ756aAMk8Mbp1Oyle74dSJS4RORF1G42+ih
	 IVYgKXTySou5IgbNbl7LminaLHgHYm05wbSwDLDZayUiYcmNRL4RivyBRt1qNsKBWp
	 ohQjh3ur+TsZlo5dxc4YPG2n/kWF1UckaMB/DR5T0Zbocf6QAXqHRxG+m2i3nRNHG1
	 how0VVJI6linA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE35C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895695363.16957.4557124761348341971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8873b86445b6f30e7463daefae880e78de7e4f633a5305dd60839ad48ccc7ce
Date: Fri, 07 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738956953
