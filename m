Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0477740B392
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787221235; cv=none; b=kl1meqbqFB6TNn2GFi4RFetQ+JsmC4An5RZpUNPabEYy1kqgaFUcwLYhRuPm90Jeb/EkAg1yuPb6wg9NS1+shnBt0XhUZEiliwkEB/SmzlrE1NOC1T48NEp95RSQP/ZsRbliaqWlhNStnqbpX1vPgaD2Ka8ic4TpdP5duIknS70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787221235; c=relaxed/simple;
	bh=NMHqWTu6FyeGYPz/1PgnEHiEi2BTYoeBaOJMd02oXns=;
	h=To:Subject:From:Message-Id:Date; b=K49pdQuLxqsjwxhH01w4yX4NmAp5e5JPATn5Y7HgUDVMRPI3oQwoQTSjxRcQHciUl/B0zih10Q+NmOfak4fDkNTDgP7igls2fiflY8d7aHlV86hvz7XySSNoW1fqbpeRhdfJP9Tz2Jo20QaJ3M59w5k8yh9Sj8EEuie9s4uLvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXE5F9R6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXE5F9R6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF192C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787221233;
	bh=NMHqWTu6FyeGYPz/1PgnEHiEi2BTYoeBaOJMd02oXns=;
	h=To:Subject:From:Date:From;
	b=iXE5F9R6awabEKhozUZg7rX20K6xDeonz9dcLcWMVu2EVJYN9J7AiNR2nK9L2mnJd
	 hyRjaTf26TjtI6+YOypMwKIuHYJMGN0Z/lvt+gQ1sF4nTeoPt8xx6irIaV2qfbdxfH
	 w1Mwh+GWy1R9PHIWssuanHlHC3bAdfNjc5PcQgNmuCcaeTNZ0+y2FO2c+c8Oa0iTP5
	 vfj4vCIe6uvjna7UD+TQYwr73YAPFbocGeZXTycilup6VXbLXMVnnd4RhWksnXcMSN
	 6yTCEuTNtm34JddTYDSMKhN8pK9lc7EfcYKQ6Uc4E24ncbCcUpPP9lZ5VcOJkVVLS4
	 D/0S5uXkcb7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD552C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722123370.2701.16368837861257950123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3499f20b3363c87c07e2fce7f988fd575c2c172a60c0d05734c2142e863ca22
Date: Thu, 20 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787221233
