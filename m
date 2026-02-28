Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9B318A6A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772258094; cv=none; b=T6rS/z76tXGyAysp/qezyuUTJ3+M0vWqOxcjIDdC78zwL6a5DmPUlpexWN+Jvg+M5wqC/EmqyX5QWyMl+kw7rbSHg8Xf87oejG6XGQXN6mozBSn3GZ8YlkszDvphOTIbZLEjzMPpcdyonfXVRKv2S0iYvyQtn831iyeVsTXRwaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772258094; c=relaxed/simple;
	bh=LNy4VbZGHgLdGp+NPu9R4zF2mCPcfR735sLNpz1t0nE=;
	h=To:Subject:From:Message-Id:Date; b=qBorwkCFzgwA6rj+qcBF681L30ZdtsmNFQkdSjsf9jINH01br/8iR0VVIgQHTSyPkS+YudNOwN3dcq+3/nL5JQ3S3hz2j7s42yv2MXMID0hbaze5s1Gk+sW/y8ruvxYcLh3/6rVXnS6sKS0y7CimYdpF2zvwWaiShAhoy89TVcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXMVkfFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXMVkfFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB86C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772258093;
	bh=LNy4VbZGHgLdGp+NPu9R4zF2mCPcfR735sLNpz1t0nE=;
	h=To:Subject:From:Date:From;
	b=RXMVkfFp7Azk6Vdr2hrfBo7EuygurlGzTC7gd1htagxs1eepu1OUqqiDOdDYNibpo
	 gvUEvOlYLQm4OArfBDRe2ef+ibftmo/xS5cWoffVbm4K2ylGd1wI/J/Rr6hSwAOopk
	 yGDA3im9du5WkJBbO8rwQgytxZOEH/K7m9J65OYDXWrGmIK85tKZlUjKQ14z+gLgFP
	 NbchwXcSXTPcGbeEgFljKfloTzXGVPkmXajBMw/kfVsMDZY83ZEYEy2LqZzQ+aFCO+
	 SEH/cLZtPZyBTEmSvDy/bb0bIx+3pT5HlurHKblNEPSdXUp2b1MDXoM8s2LDsrBjGq
	 SHgaxP6W7FU9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2C1FEE4C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225809358.20385.563726220857573150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd8299f961fac4603f52db56f28a4668b92a7edd997c96392fd8baa885bc0f3
Date: Sat, 28 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772258093
