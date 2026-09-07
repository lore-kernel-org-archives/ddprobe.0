Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7567D3845CB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788811834; cv=none; b=H5XXswWtxSize4JLMpLK1S4/hq3hlP8dwh50IN1fD70Kxc3NWWzoY1d1+CIP7FXoCoSIcMgzo4KIU3LLAJhP7ik/947IkC+QSFOi/Xn8+yqc1HPt2eP6p/eDQEfpIoAuszSzbkeM6GyYSUPNn4GmhTP8963xn2MMmh0SiIRKkpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788811834; c=relaxed/simple;
	bh=/J9zxUye/X7kPqZKsnNQlpo6b6muuofUawloPWFRuDk=;
	h=To:Subject:From:Message-Id:Date; b=WBW+8IHCedR33K79N+WA7dAU/0lwRpx5ODfx65b9IXrWLB7DKE25+IWYwtoN30inW7J+8WIjnN4r1fVDYEQWiQoqinTDW9L+YMvVDW4hLfF0E5dxDrSfBQuDGiPdbebdzasHE76rDp8SS8BY9FTCoCX8ggG8OPUvLAC7hj4xSdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaTvp57I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaTvp57I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8D8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788811833;
	bh=/J9zxUye/X7kPqZKsnNQlpo6b6muuofUawloPWFRuDk=;
	h=To:Subject:From:Date:From;
	b=EaTvp57IQFP3oZ/oIx2X4OAVUl6AGTPKsdx09dzU+WEvIZlMvuEpr0QTq+HV3pj5q
	 7efYULg97Oqd0T9fsx5pXNK2cn3SgV4mNcnpJfMKDms6icM1behyZEBDK2FfhFfgcM
	 LXtz7JM0/GtdAIt2l/i1sRd+Zr+VYtY9X5BO/3+CeOmJ1OOqpUlq4gr6LMVz29RHJH
	 MPboZOQ9wvPsJwO0hRATfrIKe5wwKI3jNVA21wB+X/Rrwqwy714wLKYWaIv34+lr0c
	 FzkC6pWcpXmexI/gCtekeaynk7U9PrIa4FIYcoxGYJa4HI0ZxIQy8W6EDnyZfikAUE
	 8VnsqcDYWLjww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C3AC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881183370.1668.16725039460679387976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cd7688a1a558e9539d7fcf88beac8dfca0e2d8b9ce2213e6766c0d2ae2647a
Date: Mon, 07 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788811833
