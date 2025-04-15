Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE49241114
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744745994; cv=none; b=F7025EMz+RmkehEhvS2TIWUmpWTk3w7t42RSWxGlNLkV1V1S7TuHUisknbicjkzk2F+tcBbRPU+dadjg+ONM2GeZBRSA8ybtIVZUMgnljtYncoEbqHT/J5SNkBCmm6fbbz5I6xHEBKmvt86R9lNYLb1FJRG5e2vXhZRuGjm/o0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744745994; c=relaxed/simple;
	bh=LwJ8Qnj/v7K1f7Zn9b/gGR1HHyeSXtVjdzAFONcLhbw=;
	h=To:Subject:From:Message-Id:Date; b=rj4z7BZvQxIHbTyS8C4rDI3WwPsclw63+zFw5nNprjk0gRDh+TgTad2iV6Im8rIpoQqlgAW3ADhyOBoH+PiMhbmSBH574UB0k3Y/NLv1m8dlEPKxT9Ks/cENdKrDK74HtB1z195/X4yVtRolF9Fm4Ub2PK4UryMGC1nzWKi13X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLaFnPNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLaFnPNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744745993;
	bh=LwJ8Qnj/v7K1f7Zn9b/gGR1HHyeSXtVjdzAFONcLhbw=;
	h=To:Subject:From:Date:From;
	b=rLaFnPNbtyYwbZ1YFooWqhiSeZXm56+6kSkynREpGG9Hl5IR5uGZ3F711Ax/kJXlC
	 FvMq6ZEFVdVterqYxjOveSgGa5UgIALRDwoFOtJR/b8dtYTnM4I4rJGKZFLOE/qpdP
	 nJQx3IXwb1vaDgdWr9qXLlAyTfaMi8Vpx3xfSaNezH39F/XtMSw7orh1/4+jksKiim
	 6j6VH64y0HKHj25Jge9K/loBQ7NzJ71SLpPovcACXfId3neABzgKgxD0fgN1BE3nue
	 OZhUJTNxyORZjmI5Y0zraCKEMcCJ1/TNZ+fvsF9DFlgL0a3TbIWea3pcyV8DzqXLXf
	 qOf2r29McVvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCEC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474599359.22907.14905282773912983057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96cffc551398959629631f3a3d79aa466755aa501e1c1dd7fd3b2ff88b1ba68
Date: Tue, 15 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744745993
