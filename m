Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCD74E36D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791981634; cv=none; b=QGjML/VampvcsgI1XbrTvvDQN8k7zJlQbuU7znUFi76AAfeGZUYqqERoKAMgt/kDwq7TpEyQRkAWZcEJvR89N6/QBINYBiP7Whk8JTj+K/vn9UUpw1h7JqxfPgdTktVATY6piWdlsHHEKlV/ZKLqmHFBuhKrele+HGRnoaoTp7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791981634; c=relaxed/simple;
	bh=9mdyPsdEZjzL6bG3/dW2WMqNDeFIfYPitbfX8X6WbPM=;
	h=To:Subject:From:Message-Id:Date; b=Zsudp9via6m1e/0v+2QA32ls++tlv3ECBgHFT2P+P8I7avd1laj3WJxqn2QgOZJXCTYji9cuhvESzYdC2hAzYf/PmQHniz2M5bW7vt/MCgo/0JcxnGMuEVh259TxCz15hwDeHLvHtI6Lfq1XRsBNyz89iNNO05bt7i9hwG0T29Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2yXgayI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2yXgayI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF004C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791981633;
	bh=9mdyPsdEZjzL6bG3/dW2WMqNDeFIfYPitbfX8X6WbPM=;
	h=To:Subject:From:Date:From;
	b=o2yXgayIQV1TakjZiozuHWBc2/QU50hJ5GiYbWI8dAuoHZCXd3WSmLD47tAAQKKCE
	 g0l6x2rzxC6kJRusNlxXx/In44fTkh/4FMRYgNccTJK/hcUucPv4q7mN8Gan5T+2xU
	 +18YD3uVB7EPbOuHrBpNjZIltvzdcKmT4XamEP03T1Q3ku/zNj6wY/u/gCsL3/P7QJ
	 QF8d8OTyGF5TKw4RlWsZl0SqCZ1pgfS8/d5u/tylzZZZh/9Vljbmh7VQSKGlVLyD7g
	 YvZD5sWU/kezxhyJcOgVJQ0cPtgWvSLK4MYYtc3nXh7ao1mgEdswSDSJAjrgJ0NPkE
	 ol/YCFrPA85dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE42CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198163369.19749.858306385988606301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3a1adc3ba737921beff0d2d6fdc05dbe2fff650f5260a20ddb3d8444c5d9f1
Date: Wed, 14 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791981633
