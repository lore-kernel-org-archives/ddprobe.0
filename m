Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5028E3D5C32
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782217594; cv=none; b=jTInv1VIl94kxd3PxB4GhBwmDgcOxxW5MQ4uWIGy/eQzLhH/p+nlicHkEolISjLR3w4jHaCsV0JjkCLEOxsFuugr1gPW171+SP+eftxR4y5b4VOOaQJbcOak7d6pwmCjN4XA/siWLOWoQymYXDgqKxlDKh9cMoklJz8PHqk/Tmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782217594; c=relaxed/simple;
	bh=FTSh4pWkybAyyruEgP6YYbF+dls7vMDuucNYfqVciOQ=;
	h=To:Subject:From:Message-Id:Date; b=fVEla7Z/WqkcpS2aOebY0tqZSSTo/GKUFKH960Dmv550EfLv2dL5FvrSif5ScvUH8W1COrnDtkAFFxV8FfeObi7C0qTBFzeFHT0aSc0t6fm0wqhKtbaBwDQcrlILWNhvwJTqDMmudPou/X2YP0AYBN9f98OtrZDW9+Y6qSH/tJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEiZ6dzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEiZ6dzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C80C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782217593;
	bh=FTSh4pWkybAyyruEgP6YYbF+dls7vMDuucNYfqVciOQ=;
	h=To:Subject:From:Date:From;
	b=iEiZ6dzMUQkaLebYOYEAKoF8u15bwW0gD6vhlE9A6MrrWDbedBxiX22PUm9LHhWzX
	 0FryGieZehE8qoAngRiDxILMopA3eGaJvoHhLtc9faz+Pq/4REefCsp02nxATBlzRv
	 n7jK4/on8Z3aF7L4hrU+G7GIB/jDzNqvSLvLWqN+9UttON4Hr79uoQjwqVleV6jdal
	 +vPh+JxQfM9rup2jYy/EL/zRQpFuLe0JLZ9TLbIN3ZiNm7b/P8/LbfQa40H2FbhQOt
	 1kR/9QHVS+DW2q54dfNEU74jaQ66rpmRgrIvIInCbCou4pCbkfARP2NGhX698TBKNb
	 i4YaXUO0ZWT+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FE5CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221759374.24934.12292292422433062864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3d6c7fbe13b995f545a42635e697b28a0fef603d187d3e543a70e11981d038
Date: Tue, 23 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782217593
