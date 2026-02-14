Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653D2BEFED
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771110294; cv=none; b=j+bHk11YO+qEV/lpvuWtmEea/6DCfLsRTVtJ5RCRtS4XAHZMpRliMb48D2a2KK1cQfmMkzSGSIWr4GkppXdddtpN5TO/E/lKpm4tqGM3X2hkqavhTXljJ+jD7rJOUJpxJOH8fm8pdM+M8XtvF+F4ebE0nZAiioaDYtL1O/vwJ+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771110294; c=relaxed/simple;
	bh=zqdDpnqfxWBXVI/EPGR6CxSHzlMNqjHJolUsMUomvSI=;
	h=To:Subject:From:Message-Id:Date; b=rKL+ZoIXYVd94H94gW3cKeLkCSkLbRmn+y4KGgQmlF69NQSeRnvZ1yOOYGi+U0teCuzHXeKBndH/63m71EcMa2rJvj8iC4ZW56wdaboEMRql4OPyNrAZnROeZ/i1DOvNvKlEnGdF1yBBU120bJkn4VrqJrrvmGxXgzzKYpEylYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCLpETyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCLpETyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EC9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771110293;
	bh=zqdDpnqfxWBXVI/EPGR6CxSHzlMNqjHJolUsMUomvSI=;
	h=To:Subject:From:Date:From;
	b=iCLpETyxHHi3iLqMhzU/4jXD1LLG+QCL9x1MaK3ZwODCvC+MRY3f0iwbegqrd4G2Y
	 9ShN4KxFjva01dacz8mdqwPcr4RLbwr11rlRGBACS3oxhp9Ufp9UAdleBHqhpkFpw+
	 CjZO+6A0ripp+l8/7HmANdiOnEj1QmEFH5Wh6g5YA8oTGkM1yubKzcZpBWnannC7o7
	 62E8WvpfsbB4WHZvdVnj3NF+DtdEnUJJJDq3GfjHuzjEscb97G8/g1m08mwWtSwR7D
	 TOrgOa15Wu/4YXURTg8np4Irx0kNJWpnMaxsooaTWvEEA90IHCrzc6nEmvrWI2IYBa
	 qGG9IXR3vFTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AE3EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111029365.12635.16748844058417458998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5102a46c2ac0597314dbcd47c7af225537869ee0c7ef9ccdd6ba7d9c0144533c
Date: Sat, 14 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771110293
