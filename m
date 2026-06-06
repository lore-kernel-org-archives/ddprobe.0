Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF5C4071F2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780754074; cv=none; b=NUY+25yHnMVugp+MFwb2CoNvicDCjlasZ0v6y0DWh/9Jzdr1kzMwOeH9Lm00QvAsTZagN+9Pf1YhCqTguARV5iP/23fu8ee1bqxk1C7BA3TUNXj7xyUG60n0Q4+lNpPRJtSVTtO5ceL7bOnC83Rjl1xrwWkUEX/3K4JBeqSzqoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780754074; c=relaxed/simple;
	bh=TTsXVc8O7+j7ZriCCbM903GtVKfORlP17t1kyV5frqA=;
	h=To:Subject:From:Message-Id:Date; b=Sgm5miAT3jL4Jn/4v8iPdseWqfSXdncqZxrUmnRU7r2vorIa+r3mbmNV9JwzniO9Q3Swi1ygiOpL7GvTh57bKG13assA5QekOJC9bCZ9GJHwE64uJFRebK5i0WUt01gNtydIOYbFp3ahptA3kh4Hjx9/G22LcCJepbADqI8Ea9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOYt/79b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOYt/79b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6732C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780754073;
	bh=TTsXVc8O7+j7ZriCCbM903GtVKfORlP17t1kyV5frqA=;
	h=To:Subject:From:Date:From;
	b=mOYt/79brzYLJYIhm6xGwDrJKbI04GojwjH2CllFN/fs2NRmBV4UOUwHW5j90sdJP
	 83HrccLbfuDuqplRadRfyRPnb58uuLQ889fJq3OGatektpCiNXnU47Twno5iAilANj
	 xpiBjYU61r4+M6o9/yfGSTfrHFGAe/CfhltreLVGzlJybazc7Y3Oy06fP/RdAq4m9q
	 eJq5k7TGvPwEOh7po/LOVlGvZk+9XemjS1zIw2Tl04E1A3i7GFZmH5dgxi3NXvk8Wd
	 QAfxE/qnc4Mwmh7mBzEef+X17Vt4t4LZF1M7xv2BJALQdqsGr/26cLN6+ldL8kt8sM
	 I3T2Sx6I6RytQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE84ACD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075407368.13851.10053465356542458979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838f6a9c72359e0b7373c265186de48696666996371c0d2901da4ccc1a9fab8a
Date: Sat, 06 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780754073
