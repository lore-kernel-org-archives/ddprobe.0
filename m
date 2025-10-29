Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3109B2BD5AD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746394; cv=none; b=R/62PQa2pn4F58/OYt0KZOX53UgDgbIJDxndyJ58NVgdnAMfDu++8HkTLtU25NsaY2qu1Hq7LZjSDQ+OE7KneJpCYZsSGDWHYxbx8X+QGYPeFGmHtrX2m2JBxdxtZd51UEYpn7zHAPhGQ01fXXsgAGzSi/d/s1b/K5vjBpBV1S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746394; c=relaxed/simple;
	bh=DC3f3LHhMh0CBATK/cabPlfuMUAcKG6kKeUdyVALNKI=;
	h=To:Subject:From:Message-Id:Date; b=Nr48MRG9HWB+7kYFcQU5erRU+dhF4B8brPiLNZR+KhBP6v0Fy7IZ8OLdW2+Z8x2RxNx9GyndhUJCEIBMJwq475N4vL1JW501lV8doSd2Nq0etO+1gIINhA94kZhAdmGy7KMFcpsDFfBE2nODPn/TMWy+gzenbLncof5Cksti/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsArLUml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsArLUml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2592C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761746393;
	bh=DC3f3LHhMh0CBATK/cabPlfuMUAcKG6kKeUdyVALNKI=;
	h=To:Subject:From:Date:From;
	b=lsArLUmlRJDzb/crLwuQJ9YpaFyVY9Fyen02Jonqox0r4s76mrMCD+TDsK3yPw+46
	 XPzVj2bmmmKnTipu+ZZod0WBWC224daPtBSi8kCfLsr0kRGe/fZSfSJ5RgBoiUSPKo
	 +YA8W+0+14S3M5h3AeMU26mOAM+6UJIFI0Yu/8qNq/GkIZJLCk5rgbOS7AcdVROO8/
	 lL1nzK9PefgRBp9OtxJarZyfHvRITXZzmAVdJQXEwI6t+wk1gvnAObTMe6ltCLuR2o
	 7w+TBavEsPuUqNNcdiT58B5Tydi/CUkK7T8SPu1VTFthgHYrA7vyHGjIpNZrevqRIK
	 KtY7eAImAumTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59BCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174639357.1878.7118540199093058084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a304a5e54169e43ff88e747b294855373bf62b52dca2c0625f1539cd0e449d
Date: Wed, 29 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761746393
