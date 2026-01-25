Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8B25776
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769309634; cv=none; b=YTTw3Fzrw6iQdl0IggwZl+EUqYzRnGVodJphVzOpluRQ5QPaVqEWuWU6x0ytqwMhiiN1EZGWMAX7CLf59ExozgWAUd93jY0SUvRJCu4hfgWKjUIwag5U4sYwHmn0DtLla27B58dqjvcGPaKMam+W3Le4vJVcvK/GANOraGiZf/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769309634; c=relaxed/simple;
	bh=tGexboKOHFXhL8xFamoH5uA1nM4/yFEGFEm1hvM221w=;
	h=To:Subject:From:Message-Id:Date; b=VjKaPDKRbgqZIkeBR0W0aNmKcFKMEUurx+OK2lVvTdAuKC2fAkfpY1E/s4iYtS/uucSmtkDiZdiegzfqF7TcdSrGUmbPDj6mN4I24bW0/4FKeg+PZ0zL5Gl3NffQfjO/u14/7BLRU2t2WB/3agOokGgUgC5kGn83K20WTHqqVsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTsKBt6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTsKBt6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB7DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769309633;
	bh=tGexboKOHFXhL8xFamoH5uA1nM4/yFEGFEm1hvM221w=;
	h=To:Subject:From:Date:From;
	b=pTsKBt6LJtp2ntUlXeEaYf3D0TatTUAY6V2OvceY/UhnE3mIijLNqMFxTRFJyTVFg
	 k9GL7O4XaTPMdvnzBlMzv+ZbNLs1+IJzOi6DpGHJYb+5+YsPkqaWt/pinernq3KjgT
	 jLF8ME8yZymqou2qvzYJXHgDNxtx2Dz8Xyx3tu+aUsiYPbagkTrSc/zA0tawRyMpVh
	 F9zmyJu+059HNIp8rVcpiKGyqnQKPO321bjBD2aB328ueiActsISgHOh0GP+97fKDC
	 mSEYrFLzNkkJODxu3sDYbG/XcW705kT5jVo3LNVUOYVHEEBI+tSPKU/xjsIoFxi8J0
	 JEjdZxGkk8xlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FE5E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930963359.28095.16157118935076879988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025b1320eddf58b19afcd3d9bb80e08b2e54432181ad6dff8bb8d187de98b651
Date: Sun, 25 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769309633
