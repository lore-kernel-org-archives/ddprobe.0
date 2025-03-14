Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C58B1FFC71
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741960734; cv=none; b=UniP2fSLilSI2bCOVAQKwl6vg604WGo6xhB58NuQeADcL7n+AUCem02p9aMhfz1qfvkQ7trChNWvgGJXnz+YR5MVF3neneoI1zBl+r9gHZ1inWdhMQIoobnF6lfQJbOfqzIkxOXIcC70tG0oh7H7DGOUkAzXJuKwAqa98AKRPKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741960734; c=relaxed/simple;
	bh=7cL1/j/SHRnIzpBQkjAt8ZjtYxX1sF+HnO2AjN2f9Zc=;
	h=To:Subject:From:Message-Id:Date; b=rCr9daObzBztDUuUWfDZDptu9580nnJdo6O2DtxVToAKe6XOMrVqbyO0L7ceHZ/MOVx6okup3GvTirPKEaHvJkprke1Kx3XgWx8KIBgmYomnNm5dDFjn5v0vLRxyMYI/V0s+ofvxXB8rxEhYxh+Xcu/UGzgnI1g4JgNPwoTAhms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0fvHyTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0fvHyTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B564CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741960733;
	bh=7cL1/j/SHRnIzpBQkjAt8ZjtYxX1sF+HnO2AjN2f9Zc=;
	h=To:Subject:From:Date:From;
	b=a0fvHyTwIyKwSJrlyDDWA2I8qy3TrZob/sSYypEe3gK81sSajV/tEHb3SbXBKJLix
	 +M5QgQ3fvrrinzwek94uXMDryDCIv6exaU5cynrQoJsqGhKwSHZcteKhZEV0jKVbvm
	 BEA+uDFMpLsjB26UZWUpagQ8PWzVUZtWKPtXC6fQEe8ZN8VfRrirxHUb9PGl2ltahL
	 wWyidvUTEJvS3rtyFc1lgrq6p9MdRvmkZHRDVqiEU0HHWy2l8ck8E3IlpluOaUiU4A
	 sAcUPZUeaGem/M0wqCZqDgYlI+ChzmxEllheExR77jSiyXbK98kfULbxv8NkdVFJ0N
	 iQB/7WiTwm/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18F2C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196073364.31691.8016817386497887908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae0661208fd0255372e69c603574a21ec83006dad4f750f33377b2f7031a6b1
Date: Fri, 14 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741960733
