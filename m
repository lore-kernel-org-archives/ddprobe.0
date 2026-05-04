Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF83A8F7
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777874854; cv=none; b=O8EcQQ5c+peXGCqs6DxsCBmtxrBJksshZ4Bgk/7BXNSxwWtzQhJDNhKyUBS8ldbQYO5K9a48ja40cpLfRla2V4h8akejHj5+QRlmN4m8Im4hyYftbuBzKvluCeYYnOHlVMwSMfp7momCvJXb3cKUN4Y+1Ujbt5T4h2Yc00MpwOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777874854; c=relaxed/simple;
	bh=13uB3tlARr9Q71hxmQ3TvWnAUyCxUzQ1R2kFnvZrPrg=;
	h=To:Subject:From:Message-Id:Date; b=pa423MbwO33HTqPIETnzRrvkJ82MY1IDPqf0bxGTcBZQ67aL8ZqHZRIlLF7uD19q65GyrAYib8yVTDA38CmzwJJ1Jj29rjomDQ+R9n5TtwKs4PRaqoFrnXlz2ePrC22HCBG+Fs37HpnK1QiD9eM8uSYDMo8dOCYC7a+7UVgSmG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owOtz7RO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owOtz7RO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2975C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777874853;
	bh=13uB3tlARr9Q71hxmQ3TvWnAUyCxUzQ1R2kFnvZrPrg=;
	h=To:Subject:From:Date:From;
	b=owOtz7ROAqk+BN5yzI2fko9jngagBAcYT35hLRkLqokX9ofZfrJ1vogxMAq8aMOtu
	 dq2NYArUrFauqRKu2HBu03dqbTnucmEcci3ZkB0PwzhpCwQqKP1wUz9j6ZTWWsL0po
	 Z2QKSzzHbXaf5hMOdYQOEeS9y2RLm1zRXnMG8XYdUloGfmgDnolf+3L8EHmISURWUh
	 3zn4V3mF+mJdTct9CyXWbU2Wkhi4/iMTYYqRUMZGLfCjYkaiACoh7Yybpo5K+sq+fP
	 7XBRQ1Q23XLoZCX/3PAIv53UUM5by5hrvne2LJGU6y3TAGVVDgh75CDmaWMHxK88f/
	 jJUkyEYjzhphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC07ACD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787485368.2424.4529067693739640740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bd7605ca17deebe49dee172c8d7c5e8d8086586fb9255acd50b7e7609d6f89
Date: Mon, 04 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777874853
