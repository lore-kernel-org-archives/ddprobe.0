Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB363FB1B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736220954; cv=none; b=kxNvlNcpZsBF7pPhlPGLfZZa1qbR5PEJEjJTkwe4ZKRQ+vH0VdZwNcU6y9c1ihEvb0HWifUyiLufHqf1xOkwz4g02+n5BzqUnhiByOj9TNYCI734FRhUpM41UMK+23QZavTMeBSwrmIpuyyAe0lXX3s6/tFtn4aQnulHC16kgw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736220954; c=relaxed/simple;
	bh=et9R08iruM9HbdCH6w4i1QxMAjZqvgWRvB6pcW4InA8=;
	h=To:Subject:From:Message-Id:Date; b=Oqbf9t4y9q6y0sI5TzKB8ZFW43iV818iMd7Xg03j4zx95L/7ZlMstdMHcB6PPoOMgdBIGFdachyy6titKJi3M/jkcHSiUZi9fVY29vTd+ZcrSTZpyOOBm+FyDxU0W1eb2PqcsnpLl2ML/yxd2GVUqyjtArBpNjC/aUASofeyRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCt2MYS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCt2MYS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A846DC4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736220953;
	bh=et9R08iruM9HbdCH6w4i1QxMAjZqvgWRvB6pcW4InA8=;
	h=To:Subject:From:Date:From;
	b=SCt2MYS4KhDrxPhKtL09jjEljg7mp198B86mnHA9PmnD+PS+pWjprujSLALTCPtDI
	 zxYxN3UfER1cBsTuxc/8xB4hjEEVtsGFAydV03BxhDKjb4tGp8mfyMUqG+RGeR7sWx
	 yTTHhnrSU/TvKCQsIUYkECcoMtWjTANdpO+vYZSvE4RRHAkN+qFJ8wDE+p5UGnnAQq
	 iwhV9e9r1+kONuAaPfULUuAuPG3GGmgfN6whNTx1AQZ34p4BCCpIg+vydBBTIcHBR8
	 yg/Up0ECLqu6gMzeeByOzkYdbrZmVdIE0hJKR6poJV40rWt8006AX/mRTREPjioF8/
	 Aq2R2ZcUQIfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90906E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622095358.3951.5433065744372176877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48adb31eae34e4ff3c378913cb6e73dd79e096b31df6c05a2624bfe10b628fc
Date: Tue, 07 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736220953
