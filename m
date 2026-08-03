Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B3522576E
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785717034; cv=none; b=Cu3mj/zf9bZaBT8kK8tqK5+736f9jtQBUxfzlulMoNvRKAvg5ZEC4lph3kOFFWPqQ5IZ/w0kj75ZBoVq2SqG5xVMqgA8/h+k8TxCAVWwCKB0zG9ASv+WmWFHgq8kmyLC8xR2UKsmg5F99zo65kP2S/PgaoTQJHK3EYvbSPMvW3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785717034; c=relaxed/simple;
	bh=/DIB40+SkyaQ8UQcWohmoNEgXhjSwzh7wLnEmcuALKE=;
	h=To:Subject:From:Message-Id:Date; b=WNDFWwPt0DIoCQYjmbtcRuGSvxLYGdPdBqZkULn2K6R+YDci8vhjjvn7yMwHshvE8F2MfEt0TvUWFs8zrvibHEU7CEQIe2xCi1Cptqs6hm+2n8M56s74gKBZ8dns0vMr+/ojjc3DYD1ExN9G9LyXHY0af8b5F371YutDFprchgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YD+whuuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YD+whuuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33B4C19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785717033;
	bh=/DIB40+SkyaQ8UQcWohmoNEgXhjSwzh7wLnEmcuALKE=;
	h=To:Subject:From:Date:From;
	b=YD+whuuv766EuFRBMZrkXeDmYE68rP5Y1KWJl2a0zePuNoJAxsr7D7KpY8rwl0aeg
	 XsU3dRoC79tHK6mU5HTPEwEsd7XQmpb09uHa6xGBfHim9g4DDy/ktzUrnyvNjsdjWB
	 TFPlFOKMXuHMsvd8aboeepFiqZVYcSlRZHHPDP9bAahBuUWQVdJdF/DrW06W6s+FIJ
	 lEwwas1v6ZsJvAyTAMbZI/WNm0iRkGAXaEQWIwedl99Cq5pQu/sApAvg/tmGdLY7EM
	 uBqVybVNgETFV+rxqkgBeDZeu1Cv+purQTgta1yAA7xijuTeZGaFufA5gZfzj02ULA
	 dD77vfBaydUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF692C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571703368.7661.14450937093683183321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c226c0111383394f305d0e4a7f1a21412a931eb0619c7102fc07fdbb46ae1d
Date: Mon, 03 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785717033
