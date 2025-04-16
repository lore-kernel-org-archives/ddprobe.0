Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4522022FF39
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744794594; cv=none; b=FKLkB/HrebzzFaU6uMoyTYhgjKGJ7ndMlQ+bXLxzirWilaR6Sqx3zhO+3FgxUgT7l5qCpAwNO6dm2muGZHNMdcEgvp5zA8hx94mYx+J/Q3JCGBnk7LplWXiAbJNDvOlngvS4GO4T99PXdjHZc/aahKj+S4wr/r/lKjF5MdDv+SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744794594; c=relaxed/simple;
	bh=Jpl5BcW/BGi4iZ0AaAcDbI3OH5YSnXL8PLkdmDQaTpA=;
	h=To:Subject:From:Message-Id:Date; b=GjIQo/9dDMmFpdruuRwD6Z/4z1OklFbor/j51J4wUq4211uxXx6bwJINgG4LOCOfnp0FF2d5xIJcdFhARsP6m5O/Pf7akycucT1xNTUzUG4D/1O0E1A1VW1SCFVo1WB1gg5H4OBIt5p0RET/zXSfhGFw4FheElsEbezhzUVTQwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmJovX0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmJovX0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD887C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744794593;
	bh=Jpl5BcW/BGi4iZ0AaAcDbI3OH5YSnXL8PLkdmDQaTpA=;
	h=To:Subject:From:Date:From;
	b=AmJovX0UhLmV9JtPEQVJ4Z5RtOhnWxzyS35ecnnMuSx8wcqy6Jwm4+j1LZjuP42gG
	 r8tWbiBdKqO0r5HLO/bwkiV6n/fWSP9n1wzdfebCDSt96Xo83pkk9xdil2b6XsswHM
	 wXgeAiT7Fsu8/Z2t7p7UsoiEKq8OtwhQS+NbWB7HWT6/FoK1JkhPhIUHRgdzSs9csa
	 +SWiNIRSZcYda/twm4gBKEe1ltw+WaBSoZO6Fw9jZKuncluv0uj3+SNrk45w71hRg3
	 gc2iIDcJM6aGEVqvaSVWtUU5XusPHekgwVRUA+HtTpVOGvEovlx6ssSq0hqEyHXjLb
	 P9XN94WCEu+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5ACC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479459362.21343.12530764826319299667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf1a15fa4071bd9097934a4fae37f37bdb6fef2b30c0fbfa605f9b446ea1881
Date: Wed, 16 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744794593
