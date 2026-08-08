Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F1633D4E4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786183234; cv=none; b=pIZfTsZeJpO+GmDLuhlxYzxuERcG5cAN5qpI7E7y11kWdO9MX1pnQSgKWDCglZ2DHzxAldl3PhXodMZ3+oHoXU2py2Hd7p6g7sEx6cx+mVD8xjtxFz3ISKmZAp8txYe+wRh+i5jdIwk12aDuirzbajvqqhFY3Oiwp+TQS+yk6Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786183234; c=relaxed/simple;
	bh=LvhKPeqC2W+LQI51HDv9YtV79SJyoGgb0ZkIR2XgzxQ=;
	h=To:Subject:From:Message-Id:Date; b=mHZC8Fjfkoidp4HupkOAKXA1vB2+N2aY6zFI9Fml3mhRa6izdWbi35DyltrTzuq1CRkl6yKXtED/EMLdvWmdcel0S2PAKNCA5qmRoG/PhyLebRtdVHhw5sDEFva4izlH7qvyBpMir4iqhfAg41+7epYkkh9whkiPrya+VnfjapY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiKErrbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiKErrbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65DCC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786183233;
	bh=LvhKPeqC2W+LQI51HDv9YtV79SJyoGgb0ZkIR2XgzxQ=;
	h=To:Subject:From:Date:From;
	b=tiKErrbxWfL/qHKPRjsGjHSV4cgRoH5zcZEMh6P+waKTup560p1QYQUBi8WB8eXPF
	 zXPjCincBrBHufi0jupbElSH69TafRXu6z++UpEChJUxxrFJ5UmA/9EDw5fRQtxG3f
	 m2v07c0h5k+H8EmYP3tsB/YkBPTe5jZYVQomMB9BARb7I/h9DD+572V/TuQEfuX10H
	 6OEmwbcRmOwcIsKUXyFrPqvAXts2RY7wUp1l1kHMZb/P32Q9UcXU7QcFoN8dePRC3M
	 O0wgpJFsCWfQZ62R0azQyLlun6vn2C2cE32AaRkIecTrnyZ5Te/kNvgM00vOT5z5Fh
	 WkUmV56RA8rqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07C9C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618323374.30630.13367014037725986424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa260bcb7b9530c186c0dad4a800fe8c1c562c88b6e9635963bfd3eea9571bc0
Date: Sat, 08 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786183233
