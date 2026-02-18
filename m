Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F5318BA6
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771447494; cv=none; b=oIFcvbtdQxVkb/NFX31INA64Qw2yItQEH55/f7YRq+3MdLPXJ9a/VejCYGJRumfl9kutOmLMi0GIc4UtHL1I8U3nEmExCCIYhNsAFExbQodxqVNli3TXWDygewOClKSX+ygoA+03MRB5LxUK5y/NElvY3Zxev7PWVv2mo2EC2P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771447494; c=relaxed/simple;
	bh=E2wx9puIC/X7SNck6Lcherff/dT3ULYYToFVGiKz0Pk=;
	h=To:Subject:From:Message-Id:Date; b=B2VhSZwXndhOD585XHIXPCNcdf1rndVCXIEcD4DTUqSKlfybF2xjv5XBh8kH/zzy3Hb0gpnFOJvpxQXJ04p9hyTRHln6CLzLIO770XhUBoeyDpUmgFvWPCaZ7Xu0xuGoR5mkN4zDkDP0QQ/mTXqeNAIHgoEgASb1JXkceOENOBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKlY+BlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKlY+BlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D1AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771447493;
	bh=E2wx9puIC/X7SNck6Lcherff/dT3ULYYToFVGiKz0Pk=;
	h=To:Subject:From:Date:From;
	b=lKlY+BlHV3nB9+/3P8iP1tua9PVm4TZkY8euvbEd7n0SsXazGjJt1W/6zmOCXqtQO
	 qfjsRlsGSugJh47qZR6VgtNdjFBGjb3x5igWZWEl3z6GNGqD6TbkTHzU0xUNcazKT1
	 XesSqTpJP3eZ8utNNbJVvV2a2gSOIGJ6XWQocbxRas5Xsq/et1m+HvDbo7Yh7oBwiv
	 3hYU7CIcDIgfCBNrAn7Pt1dxUb/dlZQ7IiR0eD5z8HYyR7XNC8zcfj9HqvG/op2nLU
	 c7ZoseX8Vacf5+H35aGF3DoSsIUQPJIBn3yU8yicDzg447aYk8hA1BKCNJBoLBePjp
	 S7/NelqlHa1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95948E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144749360.13139.8200918005318593723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5244ab7b8c322854aa127888f94cfbe939836953289d19233a9f67e7200cc8ee
Date: Wed, 18 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771447493
