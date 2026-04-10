Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D885230B51F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775846253; cv=none; b=q/+zF4Fvc3/maHVbX6F8ozNDFIf1NUQ3Yqac2cnLs/xisqW86T0R2hcYF7t4qKeCV/JWUfWXYcLj+vil9K8RVnOEXOki6wrE6uvPQqeqwWb2SJKej+sMnwZrbuPi9mocTUKNY61B9P/EPXZHSSmSVxrLGVw62mXaXHCW9obMifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775846253; c=relaxed/simple;
	bh=aPjldXdjpCPoM9g1RmE5iV6lfrJfY4swYG+QRLbtHxQ=;
	h=To:Subject:From:Message-Id:Date; b=XNW8ONkRk5NtYwgFQSgttw44dg2s5x2ypz9D3BsBWeRiUXwiH/6Cg1tsrbnDOcDgQykuHy/S0h5tPUF+xVuxpmSowi0ujBGiw+h73lH9azor3mTkKiGSrQxbFkJYpgutV44amQVucdPao+srAikq1s2fHu4yHK+mjZzuzxxZHgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6TI334v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6TI334v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71CC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775846253;
	bh=aPjldXdjpCPoM9g1RmE5iV6lfrJfY4swYG+QRLbtHxQ=;
	h=To:Subject:From:Date:From;
	b=p6TI334vk7ySboaxqDq9eXr/tsRQVPc3VtBClbiXGbDqRgqjXQIff82VLgq42oKFQ
	 moODv2Sv0pyUUv1pRgobd5/Hc9iFiEgWoHjZr5n7ILnBdLhRQaTY6j9Ydj2kUUmKAb
	 80ubS1WYqPgAOSLyZqH7AmafiH4HwhVX2V28W6XryxqDrgzzTp/Yoh4o7RrfMSQjId
	 6C6LB5mc/1QDwRco74Agt1/Uc6Ml0TV5mUNuvv/2mL2RZxRZVYoAKvA0uaQO/qeuF1
	 e9VHcnYlVP15RT2PL0Z83mH8Z3NYoq8mX3ms+TKXGpZwaZqOH37XpJxUW36/94NIin
	 bSqMp/dzhzLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF2AF459FC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584625369.21524.2491017004888298835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8423fe850eeafd4b51affd4c1a56074555cce6eacb8538e5b7702361f01971e6
Date: Fri, 10 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775846253
