Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6790F3B1B3
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789274434; cv=none; b=XWzeNQo94cOHvQ0OPDVweDbdzHYgj0pJX2FeKMS2QhbZvF0SgGEk8KGynyq3qjnre6jfgRPwJgyR7j+WjcN22Fr9Qc6R+rbEuKd3eFI8FC+VI8P6bcsUP087ZZndMEPL+BFk/VXMCirGpC6Bu7T8SoYFMy0fgHICT0nbEdNU840=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789274434; c=relaxed/simple;
	bh=H2J1OaUyOk0+7HtcqA86BNZVD9f1Q1T2cEEO5m9wXPA=;
	h=To:Subject:From:Message-Id:Date; b=oZOiNGx5HzPAgIPgf9Dh+jhpXznfOXJZZRGcVFHwj6DN64tnj+3vxdO7MWJl0bKkdZ0BEGD8bONANvamCDv9rDbY8TJRrzus7GP+KHEsuNToQB2UYcWbV3zSkkEMsmbHI29/wOGpj2VPLVHx32q1r2wI0oyVCEPlSXOsk0BtwXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVdJHXnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVdJHXnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ADDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789274433;
	bh=H2J1OaUyOk0+7HtcqA86BNZVD9f1Q1T2cEEO5m9wXPA=;
	h=To:Subject:From:Date:From;
	b=nVdJHXnT1YlUjxPbgO7FSgVF3dmrWl0TB8BpsCxFPc6ImuEtARDz6ljyj0FtomH/J
	 2Z9lAJUpWVtgxTiszMiNrF1tKOGPt/zRS983Mz2Yu5QgZWm5iUZF6BYp46gTlODOLN
	 gQb+JniIzEBz/AaMC+kw2/ONyAKt7rEs0wVV7nWRUYTZr5mWMZX1Xw6jebXktD4Rg5
	 epyzYW5uSIbnfyxgUce3F4hTuSXU8L58u7mFcCNBwWEXz5NgC3R5KJntRweqe6Qp1w
	 QCUm++yFH6GSVAzjnNAVy4uVb/2iIBx5ksVk0kBBq5cSdD+NMFrqXi+tP6MT9LkQ0X
	 XuVXOGrNkGGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3ACC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927443369.1064.13917386276074149377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d957f95894793ec6d15732b6faf4da079340a8002e27ee5d050a2518154f5126
Date: Sun, 13 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789274433
