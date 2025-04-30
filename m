Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5479534545
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746053994; cv=none; b=kRSu2lbeI2jMQptoBHU8uWVBObbSwUmfZT0GNBrz7EwanR2l/Xm6seLDRTSSWpxPqfoi+fK1msK7cgfsfL29oLi5d7kcnZs61HTCZrgMBIf3d6G6d26lPYDvjY/CJDEoPSetCf3aFc2glPXIOq02m9MmvwhGM9oGiWB7x3BDBE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746053994; c=relaxed/simple;
	bh=eaVVCIhi/6t5vszQg7CiQeCKSf4g2uEBuHDh4953PGU=;
	h=To:Subject:From:Message-Id:Date; b=BvzhNfkA0J1joD5lgafaYBV6ntO4Zo1JlGnv5RCWnCyUy9PSaRYZwkb4NXvsZm4kp+HIlLpZZ2suy2vtDLgNfDa3SahyGTIaXYKFtISap40E6TSx2r6rlZCPPXv7FY+oWj8+mhckqmVBF1RSKsVgLCRQvLINeYgAz7KiL+kbNS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmJ2SuYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmJ2SuYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3217C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746053993;
	bh=eaVVCIhi/6t5vszQg7CiQeCKSf4g2uEBuHDh4953PGU=;
	h=To:Subject:From:Date:From;
	b=AmJ2SuYFUq1GNmq1ZYeomEp0/lkR8SVz2GZTkIlam6ZWz3MpcROKjRuQeDmc2SNBJ
	 eR5yhkIpesDuq9zx/LtrQdMJTeXBsnN9o7LPBmTfwPu61jTGTQX6jlDiv44kUZ6dDr
	 /gzeyzzaCjcciIq6gist9V/+aUsHNaOBc0OUqF9Eo46sOgWnrIhgO6zHqbJtn8+sDy
	 MOASYjDXmBrwqtci20rzbMk40KReHwfqnL/osybuSHxGeDzXGT4jiS9NZMWTBPJS3+
	 Kf9S+kX5ZYzaObQSyTxNaxr/sRrC5BJ1GJrOu+1LFGlT5kwdtsKUeT9APHEDuiBf8D
	 2vZQcGlhuRx0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A65C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605399359.10022.4604360637005510008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fc5f3586de049710c0796c40e7f74cfb8fd6ef744aa0027c7fbc9e1459d850
Date: Wed, 30 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746053993
