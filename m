Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EAA1A7264
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781943394; cv=none; b=RlobEVJo30AqfYXDvEoPuHcUtWqWWv6FVKptaaxEhFxtF5bRDJdIwl1u2V7xYo8nbr1PcncwXChVAIuNs28XWMnhXroFgKGZPBdWl0xJhQ3MT0WBe6aTKae/4iWovYEE/YFqqeOxRLNsrkLpdiZLMc+FFoTT6/UQCLt78wR0Xb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781943394; c=relaxed/simple;
	bh=fc/AvHMtWm9uumWGtyFAL94wZBIm1R5KHyMfjjoAV1Q=;
	h=To:Subject:From:Message-Id:Date; b=YWXIHSPCy5y8eHwvsHuR6I9htvvP77Vr5+q+wTwLJC8eJ1dQrgThTZsqG0EfgEOvQRViMg6FiCyTBGHd4L1fb69b6LuhAgqgLEobAuXwFDuUwqosucH7Lu/RWjZ/ESVggYB455GNzLZwluLTlYDxtwFQKvqqYEIe5xVNoqH5FHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FELJ+qKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FELJ+qKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D99C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781943394;
	bh=fc/AvHMtWm9uumWGtyFAL94wZBIm1R5KHyMfjjoAV1Q=;
	h=To:Subject:From:Date:From;
	b=FELJ+qKa0dzr2GoPxL3Y6GGL0ejOc02P6Ip3WmvtC1NgkQbWNF2kfy9zcl6rX+1ae
	 V5Lo2LjLtLXWNFxfX9E0/Ys/JIr7kY539NMI6vQmIVqAsKYprVMVNOGm+wbSAsSDyp
	 rY83XxudabV3Kq3rhKGNs4ikPS+P/pN8l4ebPkJxOgVFh9xspIHAlYZmtk7Poeq+UZ
	 CnDa/wFy6w0RD0s8D1hv3u4/+di7g9YzKAR1PyWxfnjMNVQpfusQbnNG4z1jwDHFSn
	 GFZRUTSbHt0Cq05Dh9vt1do/fMaBQKUGVSNVqnJ5mLQx882lIwJEOBna41dVbdvjJr
	 NetqvhuebR8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA192CDB466
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194339379.17469.15045831337444477208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7af0d9ceb4f2999bb4393927c1d21989c0c52c6cbe14f508542cdbf5b986ab
Date: Sat, 20 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781943393
