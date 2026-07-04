Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B03279DC9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783196314; cv=none; b=LH/ZLqb2GurvvWNQrxTYPxzISM8SzetEBTFFNQtTX7zoRmgySn5AaP4kOznqa0wq9YpqDsWwuoZ3PZVx5VjWO+J/D1lHtKoVCjVtLbACiO4aqyjFSFVxOFnKCwZG9fXWpy4rQCh7wreZxF0ljq+lBk26F65SXYopTpjdUqKHhm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783196314; c=relaxed/simple;
	bh=N0j8aSl2PWRoVVSNvmmUNsfonhv3W3B9rIF/4ghBtvo=;
	h=To:Subject:From:Message-Id:Date; b=av+J+WUhX5Y7j6i6GbzH4L3VnO6aoN0JycO7dHtK4zVv0PRdhXtsqSibPOYDdaCUBlTgmD9RsrA5q99wdjsrmNwRH9VIzfcbdc6fpKLYzNZXT0/8h8em+F0lSJ1YRAo93GIBtVH3rNRlYbstoNnz60iLnuJkdUJ6jPEPl9AkkKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+G0Iphm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+G0Iphm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC70DC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783196313;
	bh=N0j8aSl2PWRoVVSNvmmUNsfonhv3W3B9rIF/4ghBtvo=;
	h=To:Subject:From:Date:From;
	b=A+G0IphmZ3O8RTGzK/+ZEXY3Oi9k8FnxTYNKNepVspqcuQ78IpGHdp9KL2MuS4u/s
	 H1mvLI92Ugdi3D29yoZiyAVmk3IDukCdepFKLGG6TXEYnTjpBQ9pev4fKf5Fw0x6s4
	 aQScGHF9KPSQK4kisywyLDf8Bz3h6g2LA5ra6KK7+IGGUtuWLeWfRS5glsLl56M2ds
	 Y97UnLW6ptNGg/6PRFKXrPW6gzGFPyU98O7fqCV5JrvLPZK+kXU0/wUIH6SO+2vAMI
	 D7ybhq5b42ZHLPBz7SauG1+BZn3Mjcx+2YY9ZcICSwBKgMvXHLpZ5BZSKY8W2hLKG3
	 4D/R+el4ctA7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A876FC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319631368.28201.7341666350562915023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc1564774021a1b30a9b4779d2b13031d0b46b5af6f15d579ad34f925cd7674
Date: Sat, 04 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783196313
