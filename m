Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DD3C2F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765152174; cv=none; b=iZDkOA1zh2Z474PieuaO+DGIfhiZSj8mHKl/xRiodoihDM87F3YKfknbeOWywlqMXAmLxjhjqRIToGljzqD/L912/ku3nUOBLHnVqDCcr9VcNwBkcREa6GJ77sj/8PdxzzL7buqigPDyh9DNCZutRkbyQHAyGEHGrqBAHooDIoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765152174; c=relaxed/simple;
	bh=bMo6X0ZCYLqsZNqDed0Fb+pRVDrYCqabSAKWWV4vgDY=;
	h=To:Subject:From:Message-Id:Date; b=PRGAqPnI1eiu0ZFIbmEgAff71MpSurlrME9VGiTrOOPIbaFhQlKDOjmge+644yu5eNxXSuBF6YXrcVdYsoolgr+NjJVMPb3+lFw0yaFPFUFAj/H35+KT1qXkEoTU8fNcubJdOgBq9jnQXFwv29hyA34GD0rkbpAYdow0g5jw/zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBSGmFaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBSGmFaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FE1C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765152173;
	bh=bMo6X0ZCYLqsZNqDed0Fb+pRVDrYCqabSAKWWV4vgDY=;
	h=To:Subject:From:Date:From;
	b=LBSGmFaAE127SSdZZYKkIT2n23kYz8PVAWo4D3Be3xG5ZlHvxTadF9HESpbyP/e3x
	 t5BJhzWYgwRBsdXWP08gWXgP0e4EEcBz69Lw6LYcom+fkStDE/9auHWCHaG1IUsd3L
	 bL9cymdpSsxXhSefuK/c2w6TY1BWUcV3vYpk1+fgJmFF+da4A8XY7SZuAwmvf291iw
	 vtMtRLnJYB996vbRBRQk31nqk9azxYiHuOxzpu+lUYwFpS7yjXWsJ/UwVSdO0Y4vVF
	 Xs84jvCap2WGmXuuYaMyQxVvNAHDHyY88ymw/89Fsr/Efg+yaxNZ9Mjwh3K10wBNjc
	 LUufspoHrUWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97960D2CE17
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515217358.3846.737907454944813099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b811dda134269fc75f8586f7ea647ddf20e2e4db7f85501dd13190333244d66e
Date: Mon, 08 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765152173
