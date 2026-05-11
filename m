Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172672248AF
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778539834; cv=none; b=ZLoSLwCv75FFgBk20Nr6eMjnRHMm3gVnfb/f4E38dfLjhVQ9gmBefv7Va67guJsGibj5K1dmNCSeAGb+2YjpC4RQSrLwtzWxZ+6tZeOT5Aqf5odCS6RogT5+/86ShtwYrDHwgg4kh7mMlQ21c45L/RH2+3Yv4NNVpukZW6r8b+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778539834; c=relaxed/simple;
	bh=7dqiDgeUSrTvTdL11nYp24rl/uq2/znX9pe+PKZxpns=;
	h=To:Subject:From:Message-Id:Date; b=I5AHHc0/cU976x+YjQKD/g5Zxd2MWFQYz0Xv3vm11t0hJ3lFdnkuF5RHD8Z1k0duzS0KvOhGRzERd+zMOvVdRJxIQ+xJP1nDAgTlzowaTTRQcGDSrgrpwPV4ZS1PbxlRe7eeqYp+uIb19Z9n7YZeROoSPh+V8+jAjOlRqB4TGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwQb3NUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwQb3NUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC255C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778539833;
	bh=7dqiDgeUSrTvTdL11nYp24rl/uq2/znX9pe+PKZxpns=;
	h=To:Subject:From:Date:From;
	b=iwQb3NURNtfxdMGMgDRbwnMI4CjRkKYajF6uCP/qYj8qB+EOzSOUCzBVm0iAVpxVL
	 cEDmgd2ea38O7bbHvadtDIf84AOTfa9da+NdTma8Ztaja0vmVMEz6/wTDneFG9fYKa
	 1yifBD/8dOzD4RDDcJ6kK+MK/q422fXIPUCqmFZ+tWn1mkNRDy0Da8rtW7n4RPePyo
	 eQZxe9LJJc0wW+RUuFLN414WiPUUEoLrBo1/D5nRn8u1P1L027U4TNF1qGTjnr4mVO
	 zz2UD8QGI67EiiiPQ4Sxw1ujldLXY9PxeDqNApzqfWjPgdmuA9rSsNiuM3Pf9occ41
	 o8qIKZin2FFoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95ECD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853983369.17189.6530860917445593289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9e350686b791e7414d62db7c0ac699c5edb9b3ec411eb2a6cd3b5b13a61ce9
Date: Mon, 11 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778539833
