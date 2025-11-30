Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7C136D4F8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764461574; cv=none; b=g3C2V7O3a8miYTtWmjkMpfuJsZ8MApIwgaTqx0LO/jRImZuJuObEfYvKLf4dFsy3xHACYYsInFa5ecsPPIJ/ouZtaWwF0r6KRwvsxm2cPXX8DC0a+ofFZhjHJ1M5nQE0xEj0ws7mzpmHSGxuhL57diQ6Jy3BxPT7TccsoRBRejo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764461574; c=relaxed/simple;
	bh=Zl2TdSjh9+wM6+yTxml5rDhANFoZSMb++7CKKY/JHoc=;
	h=To:Subject:From:Message-Id:Date; b=jIvSinXye4v2d8z9BFB9wtaUubOwn+3ydDFn9rd+xRRPebms+/Tuv9ihG08+nKz7utJLinAFfW+8EF/AeS+0nSoxIsWl+gFVpQYsYTnd5p371Oz1wW2QpmeO+0A8fndRX9ZPlC/Sdf+bnc6Jpq9q7XYy6eYqQNebVJKwppAfPGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdoNO++F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdoNO++F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A892AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764461573;
	bh=Zl2TdSjh9+wM6+yTxml5rDhANFoZSMb++7CKKY/JHoc=;
	h=To:Subject:From:Date:From;
	b=KdoNO++F8T2PRX47a9FVyRYPaDPZmyxlG6+uGhKPoTBAtC/LAbckmfUt4y2i+ksvb
	 a02wYxCWPbBqDWbyXCH267DxDjavA60+6ROtymnkf9P5hJ0UN563iePZfCUjNDnTMC
	 u04Jkytp0XOMqKKXtc7ZVYxCjv36DJivsnxQ4fp7V8K5u4Jd4+DURL/HxzoANOKmct
	 vjLIyixnLDW8Q2+yzTX3fyxUsSjh0bTSd6Lb9HFrifbxdDpmOHigVgcBSmBtw9ijdf
	 2AuzEESjO7+hx6kT9gJW3g6RyMqDajtINfGc4gAZ72nOWB8xHEMoj4Jlrx6wDbJDdl
	 XdIdGB4g5bq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2CD116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446157358.12098.12798102213834895133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8650c58750ee1f44216256da62e5a064bbef09c809cbe905b494ae2fb4542c9
Date: Sun, 30 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764461573
