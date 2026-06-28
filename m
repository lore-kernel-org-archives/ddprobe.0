Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFE5145A1F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782653314; cv=none; b=SH1rpQ3gINllUR0N12aU00r7m8H/lkTfvHGKUejQ3+cV7fO2ZrUPjFfbvJqsCAMycln7PUDF+kU/mTIrI+jX1n2/WDUKmj2iWCGOyAsSThrCcPvYH/siCUdC6YRqTkHFg4x7rwjm2JcA8Cb+IMhx62dZqThHQAJH65Txkd3XwJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782653314; c=relaxed/simple;
	bh=1OQNIfGBiY4J3ReoSsc0wFtnOT2gtPFrcZJHPmpAW9g=;
	h=To:Subject:From:Message-Id:Date; b=rmWRtG5W1cdIQXVdyza+Q3vZM0lW3X3g5d7R2TBaX7Gx5X+qwv3rsB229uhE7L115XCSldRu9wB8weBrfWyEt6Jmpr6dKmiyX1N7wceDFDZKB3XMvxamiYim3yd/J9V2MDmG53J2xoEMZDKL+KQ9lI3wej0MwyEzVW/q3QINCzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCXbAtx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCXbAtx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C97C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782653313;
	bh=1OQNIfGBiY4J3ReoSsc0wFtnOT2gtPFrcZJHPmpAW9g=;
	h=To:Subject:From:Date:From;
	b=FCXbAtx+aoB3rAABV39PIYj6c1gTnrvneDucnJaN7HSjJSoAWzxT5kJh7RZx1jeTE
	 yiqZcHm40e2pOtZWegmbH2YiZtBagvqQwNMAjZyVD3Hpffhj2ftobvfeVdh2/UeF6c
	 npwBdDnmRxt3vTnXYUXlnjzG1YQ5KuoounUx3aWEwkDYx6eE9iTFC3+MRgNGvoKnAr
	 weNI/ZSLIeeyyZRC/57/PxhR5vXj/bwarAQGiA8zAjuONeIP50pvq2rCFmG1rU6qwr
	 aSuDPZBWOBq6PH5vYUBQxgZVzWrg63OYTqaPZo7AtWpjQ+6O0uPzB/sHANtv/XiQka
	 klae9lA7TdMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FDFC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265331368.4560.1759033328001877510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e6d68125045acb1a693fb772e2fff1dcab3bac7c8741219e79ea0145f465ca
Date: Sun, 28 Jun 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782653313
