Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248AD1E1C02
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765309974; cv=none; b=JBvqIKwlaj2xiA5H5AKOA+UxOFA4lx+w3i659ZlVE198zfD7LtWv071zfRH/vE8WUgv0MEaSNdugMJQiEFjIIVhcSggoqzQJnBFQQZB/461H8XVY9nBvAVKjlMYLx8wlLfOzfVMB63SuGoO3zz+fOfTJ8JfOQssPjPiaXVMn984=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765309974; c=relaxed/simple;
	bh=5xJPyJq/e+AcjXMsq+EevSyScdA6UpY3W5DmikBcNq0=;
	h=To:Subject:From:Message-Id:Date; b=Spgy2gk4EoP7WEFDeHZpXTjrj5GdglZWu1OCAOT2g9lQdKADDrnUQRmt1FlaLsYC2E/tc1OMlRN0GX/GxcTkT4pYxXd01aQOF4jiT0Ouqe6jYfe/hoxipHqxLahWMUNFnz0AhnqaolSHwjg4mueBC3ULPASjUvl5d+ErqhTZ/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICDBO+PZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICDBO+PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E36C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765309973;
	bh=5xJPyJq/e+AcjXMsq+EevSyScdA6UpY3W5DmikBcNq0=;
	h=To:Subject:From:Date:From;
	b=ICDBO+PZpmJHCNRzXMfCdGt+k7X9Krfj+BgVhyGHIGExkFtC/3/90OGNT7+5a5vdp
	 mIg8BFo4OCWm8IEIdBVzOhyZFuABm5Q1sABYgQaEJibo0FnZq4jsqQ9BWXZqj3A8vn
	 Zz9T/qAaPTwD0XZT7Z4IEbfwmkhZSjJFNIaF2B8huEL387CUbR5DYRg/yrzKJ01Eee
	 kWK5pOr8kW/1USWksIKMzP6T1/GcNraPkFArXvqqEDQvIRnwLVmoCOUfsNVtqRCK1k
	 rxSWib1PupqKfnlOV44QldPPvq6BdM6F1h+22QNMvmpBaFXPdHDz6nlYcKxe3yMeQL
	 PR5IMhinVL/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C54D3B992
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530997358.31091.1680712528253865493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc96238cf563f32d1f1a0d24af4cd48185e3703ab02e3c66cc27d1e72aa984c
Date: Tue, 09 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765309973
