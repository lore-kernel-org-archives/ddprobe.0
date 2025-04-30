Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11D1373
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745985594; cv=none; b=S42tOoFYY/eQMgx28h45kBlePYTvXF2jNWz41gdUhn3fm+y9RFdVcD+FLVM7WbRssTm6Sk9hUqQ4rOK6+dF0VLWUVLOnGGtpEFGxjinD3LeUkXeLs2qp/irg0OugpOmL484fLNBBGfMucrAUJNjxJXUXGqZyBkwQVisl2QvI5GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745985594; c=relaxed/simple;
	bh=Noaj3vUa6wYz1hy9x2VyZpkRz3rv3ggXDyDJVBTOFFY=;
	h=To:Subject:From:Message-Id:Date; b=LUYSvIKv2JZG4Rv8Dq/hYKwkPhpXS4agFsZ4OVZ4HLOTO3mtCs7OPZbUxPk6A90Xec00q/1vuTGMDKj1EpYF19A7qd1HcjV0LbjnosAb9XxgKuhXCnIz8ufsiO2cXwgerFQifdkFc6Tx3X5dxxD6ApbNl6jnmFXJm2glfH6B7nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdNI9peV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdNI9peV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745985593;
	bh=Noaj3vUa6wYz1hy9x2VyZpkRz3rv3ggXDyDJVBTOFFY=;
	h=To:Subject:From:Date:From;
	b=bdNI9peVwD5xh38gikOMNSwKnbWG9NGEKY8z9edSXT7OZjIYMplWo+k7HF+slVqSM
	 ZrF/npdc+ra+mSPuYA6uoyqp960dqqrOr7flvQqogN1udeXVCM71P0PcF/wgzgPi1z
	 LZqzDEcBDVtjTXUz3PWUxQLjHZFQ4i1bc7Ns4jh3CRtl3rW2GP+hbD3TLbb6xrfOx8
	 EgE/SVhb/81zc6tNIFufRe9YhEGgrQnHbtbklExmm1sWUR1FdTzONTalAjU0UXDchz
	 KVzGpDvR26nct+IeZhBEpmjhiBe6e4Svwfog29aUn2cuFQFF9utJcPb34jRaI9sUB/
	 TOgx7nwDAYdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34CC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598559357.29642.15574101607242696560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60842a65471570e4a9b23fab87b35787af93825f40e8bdf8fac5326a1ef7f028
Date: Wed, 30 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745985593
