Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BF423BCED
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771182894; cv=none; b=UkFq/yUDuuXUAVEHJ384P/yjwEmxFg6TW1opPOcwylygVXeX34qmRa7acs9PER435xnksxbva6UovXgnoh26FQoSxZGpuAETUavCG3XYRAZiKwutAZEz0kDCmqGs9AutDa6fBR2mTF82GfL46EfCG2xttRR7Nf/N2PE1qGd80AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771182894; c=relaxed/simple;
	bh=Z+stvBR9/WgN82TAQvJWxLgSkqN3CueZLO3OhSv9IaA=;
	h=To:Subject:From:Message-Id:Date; b=odNZs1c4pesWntPgCMujV+yT0/nbx3QhBb3sy0L8dN9BOHkBzeNRv/AyxzR4Fgj/VIczabcrJR4+t8gVTbSpeqRi5V9phlqndgO6F9i2cWAcHaSqPtt5tuvznvNIEbUa8ZHtlQQFUyeEcqCR2QpCmp+/yyFBAniE5zmvq6nDwn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvHZIXif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvHZIXif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1557C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771182893;
	bh=Z+stvBR9/WgN82TAQvJWxLgSkqN3CueZLO3OhSv9IaA=;
	h=To:Subject:From:Date:From;
	b=VvHZIXif62llsOXwaKvOYXdlgBALQJaNzjJRw2knaJbjNazLl2QrT2rH3zaOn0tD3
	 f7jxVzOT11a95eqMa1U+qvT6hUQcn0FvE7qpMMrCA4+wpv7XlAUcl8x0olDV3s98PP
	 oNtfBFEm2VEylLgkrK/ntDKHRWiBZ57hBVStN1N4L+TVh1RvfPktVPxUsCDZQE6rF6
	 3xltJth4KWKjPbNTBCz123q85CZMb+OPACzuLPyoUuMjqfTrPLR93nt21TdSt9FIKX
	 MvFGvG/by+HqchkT720FMhMBPV7ATxbeu9J2DpVZdaBryNvQA08oc6E/1RhhR1pliu
	 rSQuw0ZMCgs3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B53E63F0B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118289359.17532.5510830295936585622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd0379ae677741b4fdf7358cf77aa6c4a690627f62e12813a7991d55db7203c
Date: Sun, 15 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771182893
