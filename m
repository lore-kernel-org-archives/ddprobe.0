Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2BD283C8E
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748449194; cv=none; b=GX37wKJn3yGJvPXFw2Qb2kAWce5lpTVGduZpf5DcU4CyoOh+UpVRKC94mL3aLSYjliF9XMiYDR/Ah1wVp3c4BpvXHcFPNiR/bISc9SqCXz0vTqpqdP5yaITn41WFHo/u7zP/pNgHKAebd8zuXG48dN3Nk0ByzttP44SHj6mTjwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748449194; c=relaxed/simple;
	bh=s89C4v61lKG1h8CoEgI5+YxxHnO5QeXlSwvep7Glwgw=;
	h=To:Subject:From:Message-Id:Date; b=gXmElqgfVRgRBFOPRTCUwO1lhgxrkwxmUl4QBcSjBGPCp8n8qG3eKa2aw0CHpPIts+MIqInppIPRVCwcXnuDHGnSZ0nKpWX/N+Nulb08n/Ql2gWt1Ioi8DPXOtUJ7OpyOmD9c/ktpH67bQFdhcBOgT9bWXy47gIlcSh25Tgd+Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg6NU6vA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg6NU6vA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0440C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748449193;
	bh=s89C4v61lKG1h8CoEgI5+YxxHnO5QeXlSwvep7Glwgw=;
	h=To:Subject:From:Date:From;
	b=cg6NU6vA7mb25H4QES4+k3xMDhDcf2MmEkF/NrDw89HOOeKeeG0J3V3h7eicxC0yX
	 rz1O8eDESt4BrHEKIyM58R5YpxGkuBqkSKXt232SwZ35RVyTkMBNOu/bwotekrVFXc
	 qLHt6Ew2Aj2Dh4TBMacyAV1+QP6Y09itQooZj8POl7N0qwhLgngf+UMHhBHOKkNtT4
	 QMDC0vZjPsrR4BocCbs44+QJsVBfzm4tFf9Rz+A7OQNyHJBQyJz9xP9WtyUydDI2Q0
	 J3oxRKnk9dNXuwnGRuI2lqrHTA4aWSr7Lzziq3PXa+EgHptV9cgrBsoOJrjIzStUkw
	 ViqgZocUPXE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90348C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844919358.30892.8985914870785055416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb8f0a8ca298c050e1166f4793590f4001ff7bb29e5c510a6b1d63e3e5eb3ec
Date: Wed, 28 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748449193
