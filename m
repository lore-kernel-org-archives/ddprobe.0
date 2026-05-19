Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EDF348C73
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779198034; cv=none; b=XUR+F+xW0qK2UCfKei8A8fagbpuK8s91CFLDC/nYsixEgfxO5a9iY4gbMae1McROTuXW6pkzCBF/yNCUEAzqOCkk6674m9PUnqYSjcHE8+JQyksiNPGVWQyQcgLnkLHKxD7quPUWL4eZ1EPKPkV34Mf/DO7/jdlbLy9fBAdI3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779198034; c=relaxed/simple;
	bh=+BCAxfUFsJvX/6d53eeLP1lRAD7kJ+lIEjp2eIthFng=;
	h=To:Subject:From:Message-Id:Date; b=GGZYtfJKCHRcHfzz9M4lyqrGqr3ix2LZ13nNHDtIxufX6Iuc02omxtWrVO6Wf5G5raT+W0g8QhkJN72VXb+yLdZVcBzUWwfLN+xT5lAJ3c4/3CpUnkDsbUtxetfP29osqpaiUsjuKT5NCxxz+Y4u4ojDfVz6AolrrRTbkthD8IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyATc3tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyATc3tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB442C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779198033;
	bh=+BCAxfUFsJvX/6d53eeLP1lRAD7kJ+lIEjp2eIthFng=;
	h=To:Subject:From:Date:From;
	b=NyATc3tnl5gfJqQfuwtSUSJe180yPJMs71gBbhGCggqwNqu2S74VUiuXFuYx8Alx4
	 CQ9f3hVyCUYozMHNa6ToHCM22RytNm0OO7IJh0omTiR7mDOz1gLEttlSbohZTb1H2p
	 TudxUL1fpJFYZ8ULVhDz+r5Dt0jugm92H4OtgwZMv/ysKizZ8CM5Hl24MXo+HUDOcC
	 XPVuhwuPv635qj8cCvMPKN9MyRwvKwi7aaa9xNzfqr5Fl+DCbIb7B0c2E7JbbRXmYx
	 6zyZh0MrLV1xwCqT47RidPokhcVhDNgrmAUqq1hP4x6HYAD8lc8Xl9f6tLUcZRMrCa
	 vKE8pwYkVUKRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65BCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919803368.19255.14939004840047689293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e0d247db39de31d489771025ca1830de889f6a489a6a7b5846430c34e48325
Date: Tue, 19 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779198033
