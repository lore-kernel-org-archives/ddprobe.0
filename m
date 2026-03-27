Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8E72D8795
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774655694; cv=none; b=qcc3ejTDOPFtcNLoq1yhcO5XGBizX0nDShL1O2icB0jJ2v/fEc73PY+urwlknhqYkgnh3gk5DJy7CwsOfhj1J1x8+w/YOybMeQZDHYa5hyd8xtOu7USkTr1SxvFbs8V+Ls/irJk6vhouCCplN18/D7teHlaIsQAXml9QrWUvm20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774655694; c=relaxed/simple;
	bh=C39eARQGLG7IyZXoKZSctDVBAmV2RfADt/hmAfRsQPA=;
	h=To:Subject:From:Message-Id:Date; b=MEu0Gd5M298TlmPsBEoBBX/+Mo17lnb7LB8mhZHvYf+L6YZZfiaLte15yWqGhmtRSPBtGdBHtR3A6tfNtb+n0/mLOtTM7iZd/XP7tNKlEkLsCSapXWVmHDV8chxadNErz4hO8DPYQULRbfz05kmZ0UAh8LbDowwdU+23hPgAD54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpqq2ukC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpqq2ukC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DC2C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774655693;
	bh=C39eARQGLG7IyZXoKZSctDVBAmV2RfADt/hmAfRsQPA=;
	h=To:Subject:From:Date:From;
	b=fpqq2ukCpSzYUyOOFFMo6vwt0axO6rZ0iJGDGrF/DbOQI1mMw/ZxVkRhWAdphYmU/
	 /SG9ZqDn6xA2YuLrt6640HMWxetx1Cgy+1iqqoOLj88UdzhgqoHUt86i2Ey1mKbky7
	 /SXnorfrgtMJsNFKKbc9AcB61Mop56VSx2zGv6Lq0v5GogXkou42s+4SGqu/Z3N5GB
	 nOENvzeWqTmu7fZ8HmmMpEqMBQ/AVEyvhJ8N0sh+FpvUv/fCSerc/inUyZH1/cwlcl
	 dcjAo3t2B6aAx/S1MZBI8HbBYL5BW3WX7EAfNKBqILcVKoxf28eWpS3/J35DyaFoGu
	 inbPo0SlUXkuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FB210F287A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465569363.22574.8198754401767500588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04313f0d394f839ff9f66c97be54c706887b18d3a3dfc6a3ac3b5806d77034ba
Date: Fri, 27 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774655693
