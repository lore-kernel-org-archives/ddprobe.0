Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC0EBE5E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763583714; cv=none; b=bSS76CbK5tpHl8arDTv79oYaXB8wmkGbSw7/3GzC5thEk7Kw3p5gMzPUIcexoaPdMwC+kuHdZY6SCVfdV0FpP8kiguMv8qmt6o4AUCnBHQzfAWKh5JTSdFxzcynOa8INz0qynMMOaYVyxwamlzolO0fPQJKV1X4pfo7HEBQwnLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763583714; c=relaxed/simple;
	bh=0Trly4F3eUSGATLAPfB2ABmWE+KGS9Ex1ZgCjIQDA7Q=;
	h=To:Subject:From:Message-Id:Date; b=UBL2sd5FCDzoMiYQCOW9bs/4IHQ+BzTmHNdYXAF7/o4LVqLb/u2xeM9YzU5VY5VC75L6zvOuIc2bUOBLns/z3GBix5vK6GZjnwjNR0Qse92QoNkHbtr4XYWnUaq30pn1M65UPqedaHLdRYelPeEcmSkquwx0FSWoga2WRqxZEdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBjBndHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBjBndHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97E8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763583713;
	bh=0Trly4F3eUSGATLAPfB2ABmWE+KGS9Ex1ZgCjIQDA7Q=;
	h=To:Subject:From:Date:From;
	b=fBjBndHLpaLtKoe9nOw+nW7r86vcw0PwCVU0t+4NyJrg8CN8s7+EwOBpI1o+ut6Je
	 G9J4EeigqoxnM9zdfStome9ITVSb6VVmcTBdkqIiW+5GeFsJTIaWlS5n9jbAFDqc+s
	 TezmikM+zuEi1lobdssHNvL+bcz28cOxih0oMbZ2bhZoRcT82dRvPPVzvrbIVYGwyb
	 YDwvzkQE5Q5ZEQ1a8/8L/C57YT+2b5EwroiWws6DGxopFc3In9rdrBDz/wES2eWvTb
	 NuqRutaEt1mn3Z853eQR/vUpGSFEKtP2ntwh0yEw5P1diAxOk25avzsU3EQUjfaKk0
	 9yg+LPYBaD67w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9ACF58E6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358371358.23839.8694824359276217327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35f4ca65b24b4e1e7e8138f18fd327217f89faddb8a5f8926fb53a8f785808d
Date: Wed, 19 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763583713
