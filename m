Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741461E497
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717247063; cv=none; b=sCo9uOhnr8dqIe4AIAKKASnacVqGDqOmucmUQs2700QC6ONCC4jAnj4QVskzRUCGmN5TiAcnoOnbr04f/wN3zIlc0lpzHKZm8HCwNE6CZcg5e5ajCxuYDFndGDB/9Z1+h8qojBhpC74H/8MaACHt4WH5otcyguriSqAI6QJ20og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717247063; c=relaxed/simple;
	bh=QaNWrJEtsKViLof15B7fTXdKT7n7te9WZDAj8pi2vJc=;
	h=To:Subject:From:Message-Id:Date; b=H7p5DJF9zfalwk4mGKee/H+HPWG9DjLlLKB0O77Mxs2sSUYLaCKGevYU4K9O8DCgK0hFUDHBhp35klxV6u+hg4ji+MQeAIijQCkDn4S2IFGIETMk/IuWHFfkcp3esuhz3TchqkeIyaSeD90TMOiOWC3zFpOVArFXpoMwZwGNg30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO2+sZFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO2+sZFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC263C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717247062;
	bh=QaNWrJEtsKViLof15B7fTXdKT7n7te9WZDAj8pi2vJc=;
	h=To:Subject:From:Date:From;
	b=kO2+sZFHOnnfKpS0P0LYCcKO0m9wbjhFUNDIB3f7N+CAkuAqTdFb8mXrsNH9CQHHr
	 5IXJrxOTbjLDsz98P8HEmZOWZ4yqOOe3Pk9zr93Sw5dELVrHDv9VfxUlaIuACmlBVo
	 eYgp7UI6/zGeAKrQ6TrpNdMenBh3qUsfhDhZUDyU1Rm4gCOvk0nnavkHZRFTQKEjfV
	 u6uu42R3G79v7VcpNnI+kc84Em+8YH4GsXtnGkUCeNi/ZxpuWgJEw4fAOyCBv+/+Cv
	 uV6SJHubCeDBWULzOe+j7miVinFkLvvFVFGjji5a59FSKBGZ0UJLdUOcM9ukMb8Ec6
	 LSpZS/LJHRIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5400C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724706278.25406.5372973223052026926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79c9058325b380f3c64f2951aed5a40d7da4d3c68b29a58e0835f307f4121ec
Date: Sat, 01 Jun 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717247062
