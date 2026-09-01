Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DDE37A481
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788265234; cv=none; b=Rbe0r02flXmdvXQ35RJ2mfvm9OjZgUUGcnx9mrHZdVxZD8R8HHIXXd6cE0W2L62h5Z3grZTJJ4beNOsd8bvN5asQ7EL5DFwJsneLfi82T6hZdoN5fY/Ixvfw5YbfAUfAAvRsFFxgBKIC+QrKAOiGeSFJGpHOf1LKZCSRv8RmvlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788265234; c=relaxed/simple;
	bh=txui2wjhbGcXiv6GO11xk2c+5mKmoVQIKpgjZf9t7QI=;
	h=To:Subject:From:Message-Id:Date; b=ftgBsLIaTRV/J3fJZwDClnGpj7w9Iu2Lm2Vis2UAM4sJyUgQU+mRxuMkLnfdGjGFt3mc7EewHu/w0lLkDQ7J3DTL1i4pQEL0Ud9/1HR4sy6o7ZkcM1igQbxTWhYiS/Um+RsFQReoxBqLhzzCKsxKNQPcFyai/FhouQq4Ri5JAfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4iYvqC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4iYvqC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9431C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788265233;
	bh=txui2wjhbGcXiv6GO11xk2c+5mKmoVQIKpgjZf9t7QI=;
	h=To:Subject:From:Date:From;
	b=H4iYvqC1Xd6AmPsuz9/L8yiktMkO4hKZ/gqlpTZbv49YZV6mNbAy2X/1lqni1aUyf
	 X8BjU3CpDBZHl9pTZrI1VXgLCHkldXthUw2qe933vUf6BVqmgen2H75CGDwvPjXfmh
	 CP2qkwFfVtEMAV6uWwSsJTwT74UafVg+EhqUXRMEMxH0y3kalrFz/F5hdSuiykLpED
	 TOOiWnLJCvnRkdD7MRXk9upmjfI+OO7FgCUeflvk/w9YAK24rD4Z5ody3LlmkUVZTM
	 Lb0As/6eLc6fyLjyvx8WrkL4W0Gv3zpWrrQHsHzIu24BfXLBmg2vsnhBWWIujug95N
	 T929Pb1Krs3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED75C624D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826523369.25014.11391577597158103333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f721a28c226810fa12c55c6b9b244fa98e1b9ffbb06b2379031a039f030f6d
Date: Tue, 01 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788265233
