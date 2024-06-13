Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A75D13D28D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718277503; cv=none; b=GSYBvBMV9wch1ZzspVx5YnZmW7ANrAyryitAfzXtTFLJF8An2stdYsZSRqeinyLTaoiZKSGFBFQzuDY425ijphM24jXtWvM/pD2GWEuXZQhbDL24JDmVU3FppvRgxiKCjxktL3+saEaNpOC9dhyNbpWip3YJs+UNFdXFHc8TRDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718277503; c=relaxed/simple;
	bh=+GfnU/+alPIkGmeZLIAsd7YIBEO64j64oHVQG5x4Oww=;
	h=To:Subject:From:Message-Id:Date; b=uSbUaIyuxmG/ES2EqrOBRU8I8B1EY02wXpU41Lw8mCNs2GIjpTbtDOTZz81FuejJZJ3nrtATKJp9M7SlVEVaesZPmukDwz0EA0WIJyvT1mGTRj51F71+L6T/1YebYX6bcePIQ7cuQGSlKTgTAmENyCqbFsIWDLrTrjZjYUjoXEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBNYcrUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBNYcrUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDA5C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718277502;
	bh=+GfnU/+alPIkGmeZLIAsd7YIBEO64j64oHVQG5x4Oww=;
	h=To:Subject:From:Date:From;
	b=qBNYcrUeI+kac3fas6J+GaYm+yRZhcyQ1JupGA7brRXMywAXOSSheJLoX8UY+vYtN
	 mZrk6+1uz2Y45q/fqEGVnR0Cro1bwdSK+8LL3CamIfBA9Qt+3R1rd5g/m6eObmPiP+
	 m7q+CSTadeSD5xbcqfp7Io7UWHHw5C+Zck/YwZle+FsHkqJ0JmfpK4beZiU3r/WL4K
	 iJ/s2M9YSEXUeMufpfb5Bf9AF3iRk9cF1cjHcxp+ZkboVt0AmW61y32DRjhbaLZ55v
	 X4JzB/PEMZiqjJv8J9Rq46QvYo1HpJ4qZ/VthM+lWM9h5anCUHHb7l+/mLRgxkbIfp
	 IpSNmcER6w6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81A7C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827750280.31793.18261409856743740089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544a4365303aa5c27b986f1bce2b1637bb0a36ddf1fc098a59d33074a6b41bad
Date: Thu, 13 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718277502
