Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F745145B16
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740253134; cv=none; b=sxYPY0xvkzBDcMx2zYE1QkTv93adbuOSMIAEYKjNishQ3wu0eGrMkulb20TAQoW6XL1fCGAmy53LU/Up4e5JDpc2JU7ZbyEHuo+YAZli2TCiV8P+4AQ6JFVque2aWWgvs7Aw4m4BS8aWnCoCJ8CC21DzTLV27GemtwThtDrovUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740253134; c=relaxed/simple;
	bh=s0x5etq4Xo4y9e48RnwqHS6yXyZW9lE+6PkuUh0/dtM=;
	h=To:Subject:From:Message-Id:Date; b=L+AOaO+88xKXbu4SgoPJMEXnCTa1Lv9EiUs6XUxw76022FKVorsoX+Sau4PMxKFHGd6uSSs+4JbibpluCmC6hAUe3spaX6Nq4znlVu8e/kuTTc0UsX/NXFMfQh/DfJtJKsdakIaFUbrwe1BXccISa9s+4Q+ZVAhhjyJ+9+ZDQuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ01mG47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ01mG47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501EC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740253133;
	bh=s0x5etq4Xo4y9e48RnwqHS6yXyZW9lE+6PkuUh0/dtM=;
	h=To:Subject:From:Date:From;
	b=JQ01mG47pGnD1/rKMDfOu4kThZEfiMddxAQg6ZPObhDMzwD/ofD3umESi5vo0gM//
	 wWl+kVkooxzYPF9zoZos5dbs41snYWKuYO7919ECyy2595B+t0QBvdyrVa2xqmjQBD
	 Bx24a6bHl9gm19+9MPR3RFM9/1mVvNSU8oem/8oYqVmst6j2e6mg82M/AfmnC4ygiD
	 auPAh0nKSeGnbE1cn5ysAOCrKJKCamfCv/y4YUD71HYFFKDQhc88+0fridXq7pKoMG
	 NO5rbcnGasxRcFjnt8bC5U3JQc7Fvz9Fw6vNGTPviD5wJn0Gk8WZjKkzM+7S74immn
	 Mz62PB49L+Ijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2EC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174025313359.15469.4822823501523747249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f46f91b6db793c310cb5ba93fe5928b6ce8546ef5fd6c849246e84eadf675c
Date: Sat, 22 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740253133
