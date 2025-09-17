Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA31126D4C4
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758134393; cv=none; b=kqXM6/x7vCoeJZviaady9D0UgkLPBWj8h0EdG/HlF7pSeF4ws1nAgvRfvxiL6kMAF9Z2fver46el0arC0mmHBgBKl5ISRcUkOegRpZ6oOyjiR4PEhKF2y7G4VJQAXpC/opyDNY4FVAX+TZxc3OGq6ABIubqoxuPwo43icetyMuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758134393; c=relaxed/simple;
	bh=z/pM0TuTYfmYTN09e68TvfTRlbDTKE3O4tZUdOhCOok=;
	h=To:Subject:From:Message-Id:Date; b=V5rtcj2kvwKbRA4QtlWafw0S4V3BbRg/SYYYequ4F9zfzMRVFFAiOCAcGVnVeCTb8Q4IL62OmHUSqRQrpZu2QTMFGcv6ZwomVMEx2xe7ixrDABfB7nicqr7dmTr//OR6lLXx4h6wuZKxjzRrMBmPlgVYrhL0eeTl09omxxdbIWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmD3wmHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmD3wmHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758134393;
	bh=z/pM0TuTYfmYTN09e68TvfTRlbDTKE3O4tZUdOhCOok=;
	h=To:Subject:From:Date:From;
	b=kmD3wmHnih2Pco1L6DFWXszc4ZiCS/4ygTy2lnctbPJKyToCA502TQJbVPmrcDRev
	 99J1A5t1c5aJG29ENqZX54q1oCMHLkf8OphYRtcFII9v/KURYaxQttLBK0tSc24pze
	 TNPUV4hJCEhHebU40lQtOjumqjDXZqjQdLOZC+nJ8CLfNAhuIV19Kuva0/h5qdSv7a
	 2VgPXo0Mi0jmE9F47ljp8WNQ4EWINBvNhRj/u6G73VmCOIBDiWi6l3dOKqVs9OUXs9
	 0ceYp+xWbkfaGO48SsHya6SH/ICLMD6HWNw+OUGLc4WoapMxyqs3t7UvBmybqpYr4k
	 cN/wYNrfEJrmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE81CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813439358.12406.8435637433061749764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a091167b04812522b4d45883fe69a820df03b15ba25f6c005920a17b75859a
Date: Wed, 17 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758134393
