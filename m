Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C0337EFF8
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775544934; cv=none; b=tpXK2SVbYfcMUTvmqZeKt+alwMV5XZLX7nHMZ+jpb0Qt2EE4/6XxsVUmfVdJ/71Ry4dclXdS7l6PMVj8cM7aSNS3BIjNlwcy6flQ952xINGoV6LEplQdDqYUgfwbXwhHDmFYobgfrUZHJmHcT4WxTFdZ0YUqzSBkY1uokGm0St0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775544934; c=relaxed/simple;
	bh=a7QsTBwv26JPpsOQmMi4oQpyvtCdkyjs+aEnwRpvVnY=;
	h=To:Subject:From:Message-Id:Date; b=Edp14zyiUfPPaHc1n072QcKOQuaGw93TDcQvPF6dePIkZdU6ttyT5sSSMpEhk9CpKR6RKsjw+ChJEoD+o2dUwrTFC9FxUb6AOQ0pKWdaLEleOFp33WA3Vbo82iYdNB39LOdVPHm/lM9PFrUKt++sB/DqnoDxHZHuHyaLqFkLDiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ux4uoEtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ux4uoEtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE189C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775544933;
	bh=a7QsTBwv26JPpsOQmMi4oQpyvtCdkyjs+aEnwRpvVnY=;
	h=To:Subject:From:Date:From;
	b=ux4uoEtzALyeoMrXtnWjWDvMRxwpSS2y5OeAyBuFwl5Z2R4gRnPXfQFsQ0xpQZzLw
	 qaFs1iBWOV6SxTm5mNKEMAAKmsOCJocEF4/CwfIgCbJK3TkckK55+cCJuY0xm5mRpG
	 sO8T7xOHwWlAqMT2ShMb00i7zgvJvDek1kopJ+aNmDEz/xmoGCe/YTDBvM/NAYrT6p
	 QNr8h9KxDOhAoBS7KxW6F843SDIU2/jth/L4CnGiDGttL+tq7Q+LFy506p4oTQFy7L
	 ONt9F5HoHBV19HnjtJ+rbchlwi42X1hnpZkkYgv9uo57NeHjI2oCuhyJc5OM1zsypw
	 MKQqGe2Qpi4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC069E9D832
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554493369.14727.4509501504921547001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7601a5d89118bfba7227a4e95146c57ba89a5373ff0a6dbfe0a83f099042c843
Date: Tue, 07 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775544933
