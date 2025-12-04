Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA032D0601
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764860574; cv=none; b=FklC5DeJUYRY+q9Lpx5tZoL/K+bfOuE/jayYsaGrNhWPnQUO/lOvdq9epqWMifof9XPgy53HRZeU0z0uCEy5vs6KFv0UQn2sP6odUmbl3FPYErxn06zpgo39xx900PqljjRvXeLbv/aQfvIsObxNUJ4A+nOB9+1cTaAls1xJXLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764860574; c=relaxed/simple;
	bh=hxplQYnqP9EBxUk9uWDSJ2u7ACZ68GPJ1B01wBrV2ZY=;
	h=To:Subject:From:Message-Id:Date; b=hNl+dfYPSZ9MkLunuTn2jO6C1pvXutDEIHryn9uZNnzKVQlUA+MfW0eo4OefNTTcLC/S8hlFdK3RmbRk7TFrrBzaRQGeLDeFOfUWQCCzA1UoLTypZiJLnqvC/PU2Q/8zSWde7U0boM/wBb20qJTHIUAmD9bNrf4qhxIEA9IvbdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0dosx0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0dosx0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F73C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764860573;
	bh=hxplQYnqP9EBxUk9uWDSJ2u7ACZ68GPJ1B01wBrV2ZY=;
	h=To:Subject:From:Date:From;
	b=u0dosx0De/kLP3eLhLaKN0+4auxYlHDzKtO3i7roJnw9xdyucuJJZqO/sPhAQT2Bk
	 fugPLAsdcDnhC5VwABLzwkE50lTshtpHRJgDRb44Q/D11QyGPkzCfR2xgtJLzRccI4
	 8Dx862WCuCiIWkByF3m8Ba+SQCf5HGv0zKd1Agl16NVITmF2RX5QBZp90kyOR8ffvt
	 M7nvHgXTrrkqPR0robPDhqQqRGctJ1LnBjhAKxCpMsnNyr/aWw7UQOb+3pl0OunqrJ
	 rcNFXxmxN26umI95hIIweJDhr3GOwJCd5IEV6IHrteKHRk51xPTmmMeRLwsZpHG4QC
	 RD9NGS8WUzpjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95187D2168D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486057359.6223.7326662189133849510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cd1542ef660f595ff09f2bc7ea7f2f78b4086a2fc6c661033acba704c51210
Date: Thu, 04 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764860573
