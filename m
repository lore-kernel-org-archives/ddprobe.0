Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1333FC8F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767930834; cv=none; b=FWLUL/2qEPq3rSW7oWbLILyX7sZbLSR/z+FYLsoTYf50UficmciPujRI6T6IliTguMc7iiqSmcWoqNLyljdNY7zKbPXR99mWwf4t8oSpNmJe8J0ukzGRlQCEtJBNHGGuilH/FCh2n0xoBd3oXNN7AAQUCiwnukPx7HRoi5789J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767930834; c=relaxed/simple;
	bh=uKoxx7bDc14zXMl/yIBil3pO3JVEk8JXqat16AKfNL8=;
	h=To:Subject:From:Message-Id:Date; b=O3Bdralt8s26DqZgpGolMByF0VjfJkxQmjTEctyNl/ljUtqIRYkkjPiktu+ib37/utErgjC0MX7DDldJAk1+uw/fsg3E9eXBx8lk/a2JQuV+C35dPdO1/lzDiN6NrSXm4fbTGODkwhH+lICtxyx6f9HBJWAGrr/jjYwXHRTkzas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOljF3WJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOljF3WJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA88C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767930833;
	bh=uKoxx7bDc14zXMl/yIBil3pO3JVEk8JXqat16AKfNL8=;
	h=To:Subject:From:Date:From;
	b=mOljF3WJ5WFcoFgTPkvTFODoQAfq6uETrOMTJ1mtl+ALphjikmPQxicTXnC4R4Q+5
	 jgtnyp/LrHrr616KLmZoT/G+6vRZJ0p0QyXhp1AbRr9xT5AJT6TEeD7Qphu+AZDKDR
	 K0r2mp+9vL7pxxqw6ekxtVkYhrRS/LEhBzyAXYwXZ9Dc+uwOG4gScZzBcmkOf5Fmj+
	 6TGGTGA1Xng6/dL/kex6QpyRQE7tvbSc/pqR2GcgnMcBoM70wQC45gsQ5eeLNYniOu
	 OTSnp4V2qv3D0gWVSdzgKhJwN4UKpNeP0duZ62v6j6r48yk87cqbw/oq9j6sR53wRp
	 IOLiFBZWIrnrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FFD232D5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793083357.19498.11744897015173391664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a6232438e6b02ad8b248b8c9218d6ed8503046fc7e8fab78e691aa477fbda4
Date: Fri, 09 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767930833
