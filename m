Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A28E30F94B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781647594; cv=none; b=dLckPmLjKBxtH5y+Ti+WydE665oUT0xUiQhsiWK3r3D8Xf7No4GT7+GNYrIHjH6ia8gZF4LFLCUlVmlzi1F+IOvAMv+ALhQZ5Da5ccWDD5bw2KFoKNTQ0xMF3D039wPoDBOMkYn+Yhwc2XJmq+rw/b+uZoIuk0ew4/ZAYbsbX2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781647594; c=relaxed/simple;
	bh=EHWBXaWHuH+Q6ZidOcR4iGO2VxZTSitfQchRCHLpKD4=;
	h=To:Subject:From:Message-Id:Date; b=ByTFAqwW1TEms3F3jOHIT+kbnyA+iijtoF39Lepo9/RRV7o74bYXjXHXK5MPaTamyxHV9zu+BX9884eforXZJY6bXGR/dCYxGbQZnuR3E9nDEvzCamzBhi/W0r2IHQsoulkf57aDj7AJuKFVb+uBqch31xUFbHccjWdhwO731HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYnjRmnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYnjRmnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0230C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781647593;
	bh=EHWBXaWHuH+Q6ZidOcR4iGO2VxZTSitfQchRCHLpKD4=;
	h=To:Subject:From:Date:From;
	b=aYnjRmnkCC50TReFp5VGwHqSZhMO/LSy/3wcJZE7H/RV7a2oWQZsyrG5Z7/SCYV0R
	 ow6hvFmJ45Scrf12pCUMebY9T7JipWjkwPRSvWA0FsbZX3s/R+6DYJBTzTiQOqDpi8
	 dBxkmFHr99tKtPOmvixSm6TwaHNcGLGvcmmp7DwIHIIRPz7HcJd8sqb4BZIWOpVxXf
	 IWxqMejzDKnjB04Pa0SPcZk6sZvxKk9yO+8e4Hz4Rj5JWWRxa7PbNqlSu8XqLoHAKx
	 ttji0Sf78qthd9ML4ZjiQkRDR5ikREbi0HCP6H3+YsUtMwDI0/xCr0dw+7SrPL98m+
	 /8OLcsI1apECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47B2CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164759370.21433.8002878925690572607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b35aab3306a661fac8b4ea5a21c975b2f5bf088e7f4ff0fe99157f4d7ca33e5
Date: Tue, 16 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781647593
