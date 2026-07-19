Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2E018C008
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784505514; cv=none; b=RLKCOOBggNyS0n8xGXInFvlyv9LVpyuRUOkCPqy+Oruc1ua0/p6umOlpRtXp8ioafz5ypTrwWFn3m20XAXJAEs8b5tEoeEPoifDosjMgAIPGh01YhBQpKD3ikEJQt605BUc3ovfgEdg9L5HezbUtCCZaK81IT/2MTAnVdOS9p30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784505514; c=relaxed/simple;
	bh=Loa782Ncscglf4R1GJ7Ui30d974xn4WBp1IHNh9A68U=;
	h=To:Subject:From:Message-Id:Date; b=p7IXwvqec9QkkfAXOsrK6PCpWoF5sAo0tjz3kTMTL4KWqBQRr/6lnz5WpligclmXiHPDbPok079jggYyMugWi0MgEpzlMkhN1tC3n8rlzWhObNlFlDGyYd5Ro+kzRcf+Pg0o+Std5jTs99ACfH338sW+5sgU/7DUzzyep2AzXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTel2kYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTel2kYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E75C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784505513;
	bh=Loa782Ncscglf4R1GJ7Ui30d974xn4WBp1IHNh9A68U=;
	h=To:Subject:From:Date:From;
	b=FTel2kYGMPvc07LZ2AN+lGLnQ+SHaNtrh3KkH3fuuAE7Dd8q3yT9fx/Obbkxz8lfp
	 FTdutlMeclQA1eoJlU6zJhdASBe326x3C//fhzklJACZv6JGwwuyx0D3JlTGkzfLkH
	 f0WuKS0Ssd9bA/U7+aA79hxVSmmZKA5hqOfHGT1W5xyQMbHNwSPeiTeboFIaYi/uDQ
	 GyOY6RjKz9NBNdKLx/C7/yGQBFlkCAIi191EYKSS8f8iUpUgC521Ct/eKv9ppiRbd0
	 NAnVTtk9wSrshUCmv4g+UqHRugmOBpX3uFLWPxH48Hk1duksftPwN60y30gzr32p/N
	 WmH+w4utUPGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CBC4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450551368.23637.14291864967559087406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef35b438c68df17dc5142b1780fe3834cf787d0006f8678a880d5d41797bb923
Date: Sun, 19 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784505513
