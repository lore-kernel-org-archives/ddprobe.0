Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267DC274B3B
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779733354; cv=none; b=rtBI/Jpy5DMZUHvoxjN8EMafjsVukr6LDglTta2S24DJFu5l4Q6HonQ6+4/jRkxpEuGPCv7KZCna9vzjdgvwMycUlbakbBVTPH2DOEpvoZgA1KM0cGv4X+NI/rV1FrPmGcok9T+TpbZOK2kLJkGmNbu19uK7+jtMWu++cz/PSCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779733354; c=relaxed/simple;
	bh=sYd4lfQPehJm4n8Tm610/1eB9BONiuqi0/89nXXKDcA=;
	h=To:Subject:From:Message-Id:Date; b=DvzwShgCUvscMXY9txx5fjJYsdSVOtQzaOA+BKVabE+WOCmRZDYdqBgO8weuDQx1m0MVDi2B30Amz819N0+vAJhbEV1UFX2bHmVyFTB6KwLsimWuH9q9fnT6tAg6PcrQrTHzUNSs6ge+9u2UzkB4UVzIT29EBDwjD//UhwMZW+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlznVMPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlznVMPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2005C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779733353;
	bh=sYd4lfQPehJm4n8Tm610/1eB9BONiuqi0/89nXXKDcA=;
	h=To:Subject:From:Date:From;
	b=XlznVMPWTEHpMskLuUPtvYAU+V0wBGUuTilpP5HaMDc0z3f6/wuxOm9EELQMAyVOd
	 C8NY6RHShVfck6p2xiMIa4ZRh60t9BUxUXcDPCn9nrJFk6zqQK7aU9j79G04bVaiDv
	 +G8YP7TxbWauUArm8DORRmfGL929fYeG311La9tAKhhZPnhdIf3D9zOpb8b118pqKU
	 1Wo9GrxpJS7d2l92GW0XZD6qQ+6wu1WyMBHlc/a1ZFH22cdtJ17oL0UL/chGlHIh8U
	 SU+cA31pjjVZGZL874e8NRWx75duyGGqwE5ldGfHAKqgF5Hvs+BXea4Mklk04Kx/Aw
	 zwB9/ePsJoxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EFCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973335368.29542.3261325277978056053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735edd43ed234ccd45f89f7f51d32df88f68740b62df295de38ec01524cd1cb5
Date: Mon, 25 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779733353
