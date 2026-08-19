Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61349388E43
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787100634; cv=none; b=X7TM+bBSnxDwywdPaqfLucx+kOxddNbZSsC6Tf7SN5NGOxGzNp2Qit224iPYhZlDbSPN03HCPv57KNSKTYEPALX7qnsHPmRG0yDJDDtaehZSACYdxWydfT87AjioOOfjaVGVAoOpYO2aNd/X1hp4lJhIOCcoDKxTBQbkcn3hBUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787100634; c=relaxed/simple;
	bh=mKPytsNkkv8GWJ4B0P8tlo9ZOD+umGN1culCt1eW6wM=;
	h=To:Subject:From:Message-Id:Date; b=IsK94gIMXBaUxse06qYHK0+ZhBWMGTUWm336+OAD0dwHvJkMeKxkBLaiAAppHccfa1pNrmMJwnHVxFEBaG0VMrlac7m5dIT5ZnMebSz5VY/nEK3FfDPiwclUOpzEd01IdMlKDXySFLw/ZEbyxR/zLzfLcTR/TPfEfT3i7h57hXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJPUrh7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJPUrh7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD59C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787100633;
	bh=mKPytsNkkv8GWJ4B0P8tlo9ZOD+umGN1culCt1eW6wM=;
	h=To:Subject:From:Date:From;
	b=vJPUrh7XZHp0dsa3hs8dTEVhHl0ZuvRWvOUsjY1SQnC1MtKyQ4vYaeRt3+LrScAW4
	 hXy4TVoFWXPxC1Hxt8ZZVZuyrLdllsGh7cFhbmYBTkxe4BW1p5T0mWpW7X4ByXs1Jh
	 Y5mpySg5JTc1gy8Hb8twGczywxWKcm8pFkxm3t+V+8XX+V++3LK7SprNF+r4RZt8zU
	 2S2isfaSULmKLoca/Tj6MjrJF/qXbySCYTm4DcHK2qbS1+PtqzRoYkLxIisadRXSxV
	 /J5c0H1vLLvyBiHKZbqnrWHXiyYeVi7bH5Z9qjNaJzZgxIO+HoesyGN+qrHmvA6nwr
	 T8AosigD5IHkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD3C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710063368.14634.2056123386589906704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c758e998c1f7f3e6808ba3ebc300241b2034a49b96d213c68cb0c879c761a7c4
Date: Wed, 19 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787100633
