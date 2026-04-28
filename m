Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327C5324B31
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777354054; cv=none; b=bFw0oL09IDMrFXLglDa1OtoYXk7v4YytRQ9t05f7syOEE12NvWmNIF6O7dllvkTZyMGc+ros2JxVb/1xNPleHQWx/3KIxbPQeirL/7Vs4z29heHoEXTP+Cz4fm9Uhdu2ccCPLiF/ppIrg4LpINPqLdahINDU+PQhnpWi03tP1kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777354054; c=relaxed/simple;
	bh=VIRBQi3+KSSitCaRTlCLC7Bw9P1G53phiqYaNGIbjpg=;
	h=To:Subject:From:Message-Id:Date; b=Y+VDu6kHIOhNyOqmDn3DRga5EBmRa7OAU6XU8HTkb/1qvGHvdO++nvlnManHCtOhiNnlanwvJAOdHwsEKTKekJF5DJzRjVd+XCAQac4p0k/7e/RgqqfnHkPKVbhVq/N0KEBA53zgbBhViTFJVdOSbFRj+H4tljhnxe3ZZd+qFDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo0NsnWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo0NsnWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC65CC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777354053;
	bh=VIRBQi3+KSSitCaRTlCLC7Bw9P1G53phiqYaNGIbjpg=;
	h=To:Subject:From:Date:From;
	b=Yo0NsnWqq5LYZuzcZGxmFyCLeY1ck3fT7gnURRAsTv6i08UnwrpC2uJGXpGIWa4Mg
	 W97rCf7gAu1InLxblOCt1Xd5pNFIvrpjQsdv6HX5GESv3SkOBjJP4UF7x4W7t9f7Lv
	 BAhndmTvW9adRbz9dT/MC8To0qYVVrXAe9OZRPvPwvNTtdnQ5yoaLITzMa+3R9zIwc
	 9PWNrf3tMPP5u6b6FC1gPceUK5gEpQ3bGmZVnjpdsmRf7iq5pTQdfuyEqmHJBSsEfh
	 HuGn4f89aYyvk6eKmHqS3b/tbk/PsjCcv2msx4N6pCjYQtDby9wy+KZG09149P050U
	 mr/ROTsh1QvTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13DFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735405368.22003.12546382656865561611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f02803a19f24370de53880fce2371db68f775a580aaf6e7898de064374fd3e
Date: Tue, 28 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777354053
