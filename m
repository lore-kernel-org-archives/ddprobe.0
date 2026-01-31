Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127C42DB7AD
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769855034; cv=none; b=gaXcO86UE53Z1v7QDxcW9YpI0nPKFlgRd0MCz3Xk4ystcHWdMMUrpsbd0Nhm3eCTdJH+5HZullFdCYXVhFyV8HTl9lMoY+sf8IYYRzGxFPAOVExg2RQq1SI1xnsbmtlw8zbEgCUt5/cbdi7KVKb/mWt8mhf2Ld6h9H5aFx6U/M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769855034; c=relaxed/simple;
	bh=WZAJgJQz0Rw5IoOhwIvt05FlAXkDth6dwrh0Liy3W10=;
	h=To:Subject:From:Message-Id:Date; b=blkC5KeQtxtlMD1UHDku2KNoTXQQeVjxKf1e25cJ4dEWY4Q6j1jzpXqFmcjDx4H8vUsJ7ZNqZt75cot+YTMtBwcU+g/Qzt0Ck820L08+Kj0simaT0tg/Io/iQRGPLDObbkpPSCiaXeY3yvu64/TOVNF/Y7xj53C2pMTDL5UQ7Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7XUXn+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7XUXn+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52CBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769855033;
	bh=WZAJgJQz0Rw5IoOhwIvt05FlAXkDth6dwrh0Liy3W10=;
	h=To:Subject:From:Date:From;
	b=d7XUXn+jELQsrbH0JL5yMlDVd4wDTkkd4Wxe6N0/vIrtaE0xtLbiTlRQ24/59CgQ+
	 EmY2OA4oXye07rJiNbwZY6UaHVJxxafWNoCgWMc8Z+7DFBXGwK30E4N5VJV6ZcKqGY
	 lufjl2IV/U+V86UjsKR7HEX7PXsNe1LH7zk9kSOe7GRCYGqqskx2hB4sHybYT/T/h6
	 WHeKcaSKIv99r+newax5oNSniXHI9kBuzpwEMrXgHhJiuufdFkiQPOYW4MT/gTQcL6
	 TUvLUVaADSGIroJgSwdXDxxurGNMiJO9XzG7ndoSd+ekcn+UBP4c5bDVPhd0AIoCXM
	 gF4qgyD46bfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB4D79769
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985503357.29539.15711296263101877847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6512fc4b77a427f92b0256d67053077f7fdef98720d786ded584fb9c8a1a32fb
Date: Sat, 31 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769855033
