Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472F38F44
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716009143; cv=none; b=H98y5tVzm9PJUWQGAzsgoHSi/TM1jNfFmENl79zS1JPEUIhBPC3GlskWc7hvnYxYQq/iAMrnHDVkLOFdTAmyKn4Ty+1xaOEuYo8Wxol0nEGW8DQRnEQwYLwbGROveA/XlT1mXc2hqoogJITwZUj+N8/xR8VqBuxOeMHxGAcYUko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716009143; c=relaxed/simple;
	bh=J+6SDgoTEX2Kze5Mee1xu+QOuinoIkrPDLx66h9yAEs=;
	h=To:Subject:From:Message-Id:Date; b=hUSkChlPpqEu1JnKYwj+wzyjyRzEP1K+up2dxfXDMtMzgXXSeP7jvnsoQfBzgWtElyyE5S4Y+0mKPmLk7LSy6AdePYmYrZy/0k/HBpU/U2M3++YxV5oft9YvH712S9NjtvpHzvojefYFwpz2QsX9/cGjM+p75KtLmJEA8MgiNO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm+vbmZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm+vbmZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CDCC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716009142;
	bh=J+6SDgoTEX2Kze5Mee1xu+QOuinoIkrPDLx66h9yAEs=;
	h=To:Subject:From:Date:From;
	b=Qm+vbmZOr1fGXSeKUmnBT+lrsqb/wE0bQeFlTQ1KFQPqolVj441aRiJp19N4+Y2p9
	 lNPgOJDT+HePupkn9na9xNkpjzppNNO+xIAKe5SBvGoAC9DvHxSOBHi4pqZShaojrS
	 cWDOPVhopIGTjDkVThI2TPLe5tYqX6jdNrdniX3wFujy3yil8TlmyqYK8NvsVDsHeK
	 g0bUZeSv9yFzbKPlxJnCAhJCxoElZ8YSaPAC1IBVg3Mw9TWJLjC4N+78Y4qrUQ3CED
	 dEGY7+V7G14wxdGubXguqc4iPkxn3Hpa8kUD7fjlCCw8amEGjYcWAwK6hBEzwKSpRf
	 +nWR1tixtME6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2413C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171600914276.31750.1119125848281927556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd7388c5b59f26c1e2daea6e61d1faa110b1ad848dcb3cc20272087061150ff
Date: Sat, 18 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716009142
