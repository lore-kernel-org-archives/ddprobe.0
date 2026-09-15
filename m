Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B634AA1FA
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789486236; cv=none; b=kCPmi+ONn2OzqcSm9jasdjALigev2/nFKx1skVn3hk9ttfg7CMV49pp7B9HxPPiSWGD63EFU2x6tXSQcIrSQLwvb7Iz6GrdrOCp95Eydv8wtU+lp+gcmn6QHu9tUTYbDoVLTz89qnSAbRm9b57DbZJRhoTRHLZHqtVmIA1sBnyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789486236; c=relaxed/simple;
	bh=ThjnM7xjpgbv4xBNuoU0hyKtfuBDcpM4SCeAdLu63F0=;
	h=To:Subject:From:Message-Id:Date; b=EAZ7ZA5aUA8GuhJWuvZsxL/PgdRRdY4ifVjsSEDW+0wW7+fuKlIP2bFSXYT5xwViXxnk/Nc83wP2Kv4sRWVbCSE5PVndX7oTpT96faDk/7IaCnGn1D0klwa6Uec1UTOxYT8N4+pWPfqTxP8qyNMZ8FoZkZrEm7tMZHMAYbidWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKT4yNc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKT4yNc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D2FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789486233;
	bh=ThjnM7xjpgbv4xBNuoU0hyKtfuBDcpM4SCeAdLu63F0=;
	h=To:Subject:From:Date:From;
	b=dKT4yNc2BOCgyIvODy4GfqYJUT++dhhJhH6hLj5Gkfl41YuKCFthWsjKfUfIDe4av
	 YeCrX0CC0hHoaZ7bloJ9RhuILWx5HY95P/v2ZvSrzsuSw6QBx0gsw2h7vnM2NxbRVE
	 4E+OvZvA4GdwZsTeHz+74N5MFReymhsYiFLHWArSEtX3XFBX773yO4CT/87L8vpCSy
	 K7BBMwn0Ao2v7bvu95OJ7A86ZclGe4T+4YnyfUPL4zlqqZEIQbbifE95vj2xCEZZL3
	 OF7Jbpq0nHQ+5a4dMTfQGI0dr/5Jqarxu/hQuEcP5hYibLAhGAJZ4wBzsfr+3hx6pe
	 w+cDhNdpSJcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD048C982C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948623369.30499.10055982679511721158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bddc300bb97d7cc8b3f5e5643dbda4dc4e7d30512be7056a6b57306f3b0910
Date: Tue, 15 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789486233
