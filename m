Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3A622097
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743834594; cv=none; b=qfxZ1F71yV+pgngcuPckC4I89GE0Vv3jSscbwD/jVVX3WFla6JWndP+EQlS9AjhHY+lp1UVDfLiahyRgkCGaZ9gGJ1yZWwDuIkKTu629uxqOjLVQcA8dwvtahdONq/ETolQ8EMWs/2LLLFwTgQjX7XnB/eL5UtaY+vCLms3URRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743834594; c=relaxed/simple;
	bh=1c/tKiGRZLVlfwpCg7lO747m9lNOCkMx9sot6YWeR9M=;
	h=To:Subject:From:Message-Id:Date; b=u2pP+w8HLy7O5afRSOA7+q/gV2PEV+WSG8xpPKZTzKaa4TeiH9dlslTDzzmH1m4a2HhEfXqPmc166+GatGUCKI4iJMOfxAChsrAgq+497RYi7SW1eIcqAjrMC7dQ9bMhHHY9utPMI1Ru+HgNj6BNvvU96/GJQMQuXAxpKNfQk2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiTkj7aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiTkj7aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DCBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743834593;
	bh=1c/tKiGRZLVlfwpCg7lO747m9lNOCkMx9sot6YWeR9M=;
	h=To:Subject:From:Date:From;
	b=MiTkj7ajMgh0udjDXJ03Hs4Z+pNcaPihXui2Xx+tld/hBPRSCAyulpz/mb5Wx5VZm
	 VKCntAl9ypXgWoapkT9EomD7/aEfsWaAj9PK2G1ImJT1VW6gwVwxlnV4PMur5PkQCa
	 HrGuqwvQ1zDcCBlpu+abvyjECMaZm7rJeDlWm8SVukrCgadvSR0MoYXpCJZhwmlU28
	 PVhWDG/+bY+xLuwCEsbXGA4+fX8i0CSiZW8dm9h8TFIR336N7TPs4d/eyuTmzeoiDi
	 ErXCuSDXNCtFIzuCVTIxbGWAcBei3nwPh9lsTGRfl/YYhp4yKmuLnID5loU2AkeNRW
	 oibM4q+gbW9rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56EAC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383459361.12284.7064923585068331458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8eb39af00567e05d8c8a7a83cf974d6a60cf3f973d0d3f40cc82b255dfd6439
Date: Sat, 05 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743834593
