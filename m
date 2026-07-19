Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243F03033CB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784452114; cv=none; b=p3J6/VmJalgbb2rxI2GzBWltqjMbsmBH8efUDqpPXd65HtMzGpysblGwoPCrCBWnagEqH5y23KxB0Sj6ExQa+XwrBIkMqWUZyFda2WhNDfpkQLRqUgZpTrv5SBSo/3qPh4G+gHGWhkx/fuLFLWOGcneNeShNX9t9uyzyR89C2XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784452114; c=relaxed/simple;
	bh=K6Abf3mw3he26+Wjd9HTVpVwJM/pI1MUtQvpWOAVaGQ=;
	h=To:Subject:From:Message-Id:Date; b=A2/9MI9vrjIkYMlomojblzxn2yAf0Is6hdtGqmrUMgL+E8NgOmOuchsqculGwrIiksPilGsrJCl1T788zOoiBMqfHelfS1lZFtKMfvYcTbrRQsKC2CvFe3GG/ko3e/juoCk8gMtyB/T6PAfuyxd4nJsuTEPZIdagNSFL6i+WsEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWTNjoVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWTNjoVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E6CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784452113;
	bh=K6Abf3mw3he26+Wjd9HTVpVwJM/pI1MUtQvpWOAVaGQ=;
	h=To:Subject:From:Date:From;
	b=YWTNjoVxYSEacKMnBrtjtmjDmZKATlajzQ/iQxDq+F5ZwQU19r/gDl9lmViSr2ucu
	 Q0qxPedkh3LHyosQcraI7J/4g0j/0TXUAfedCFOqsOAu0B43jh+/LieGccFH/4jI3/
	 1kELeIip/+voDnMzCk5WLFw90EQTDCEnCQV75zG+k/NGhvvXX14pdjFhwP3F+0f/FY
	 Ja6LJ2BJIg96qxrGqb4eY/KbfyZsMyuzy7ZBfBoQ+TApk/xUbcSUcg9Vdwf233+0p+
	 eiDpeicIBlf1oUnGoS1DhiNIQmFtczenPfddhdL9iOD9lIySw2NMfLmyj4YdspokSo
	 qZAXKdmkdPoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BCC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445211368.6672.8334549299601266696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d3bc42ed39d53cf7c3cb9b44149573eab7c8bceb2fef4138cacaf30ad5930e
Date: Sun, 19 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784452113
