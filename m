Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D87227F75A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750410594; cv=none; b=LEWVMVIJ008e0rhWtc14le7lmIhSCu7Y4bwyCDnwjkLtKHHO34T6ts5SY1vlC6iYPxgOrRGRMHrAqOf7tohr8WuB7naVqML9QlAIQ89zzi++9cBjTYmWSuXwtt/N0X7BwiABkpLWPuwW9LXOUEZp3SrwQaauTKnXxJmVvzp2+mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750410594; c=relaxed/simple;
	bh=6yCxH20zaEjorZPpTJ5o76000AwtKxECm037mjQ9c7Y=;
	h=To:Subject:From:Message-Id:Date; b=VCTESNMXmUNSiYVUb9FhGkJPXBV9P+IcqgI5eXNCkI9pcd3CwNnGMz74E/dg01KEFHEN+As0x0FGXDOczLTd5f8mSG1ZVejpj2RJrZmAjQ+UoI9sDS9iOo337ju+1DzKdfdH9LBX456FFFf6eDyAICnznSa5PGN9gde0IO+Hlvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/v65toV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/v65toV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0694C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750410593;
	bh=6yCxH20zaEjorZPpTJ5o76000AwtKxECm037mjQ9c7Y=;
	h=To:Subject:From:Date:From;
	b=U/v65toVSgpve7kY74cPmmTp/uIL2DyRkA9UHEvY2+yCXloWwPKrdzC8yUzxHvWNY
	 smdo5KlXpAczFXa7DRPKqYvLMXFiLGMOYkNEwIugBXx1YksC8zB/8ROPnooOxUpP3/
	 q1xtN9GAKh/61Xk781WmDPRYcAJ6XJX0JhLBP1KvOo9oByBXLFyrIFcxjtAxtHTAec
	 p1j5twSwExTdV1iz65jRHMHihSCIAPHuT4bwthk4vsHNhOm9hO7Xv4j0z/TZgUFH+h
	 c3iv/2bM+C/NlYhD3S195s1XCMDtH/90LISaQ3oclx9lp1xhRpQehMIfQBpx6mQXoH
	 ODy9nAgGs+hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ECC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041059357.14930.780311139402017350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e94dca6992cdf287cceb048fe79021dff03fc06d1b07335aa90462d0fb405cf
Date: Fri, 20 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750410593
