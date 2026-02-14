Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153C02749DF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771098894; cv=none; b=KsFiB/YLIbKHsjY+3+91YV2P347AOCqmFTZl9qr05oxLfR6Z8aDYLm0OpcjIcNX1tPGPRzQotHrByNPjSabF4yK+FbqY/tDAnPAdXs7iNyCmB7gJZc9WgE6/h+pSKCfSDfIdzu1uPsXrPC46jwrLnme9bzYR28D6wsdXKLPuVsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771098894; c=relaxed/simple;
	bh=mpnU8ZYD20qZ7E8hquHjxSj2o4chgEl+dDXz6whEZwg=;
	h=To:Subject:From:Message-Id:Date; b=fTIFCTi8wwfpOOiCnPJMT759fmttFyRoIbDN/m8B4ZnNzhZQiwc04MoSty8YFF9IZlMEwuNlMEQ3qUfYoceMXCiaPKCefG+BS9FFVUsM6G5UojGEAIDbeTOHW62JVTfM2SY0RRZJwnFDxl+w8lqTkvlE8DB6tkXH6CU4U5laEYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7+zboMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7+zboMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC1C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771098893;
	bh=mpnU8ZYD20qZ7E8hquHjxSj2o4chgEl+dDXz6whEZwg=;
	h=To:Subject:From:Date:From;
	b=O7+zboMAlqC3kiU6fbEGG+2a5fGJJg8fWOUaJ0eldVChIHYHkAfs0JyeZxYRCP09l
	 HkA99D4SlJxlB+u6XIh4MmsEmsKZBqz/x09PCtnPKtBiKpRZq/9hK2kvFEufmnBDbO
	 cTVkBKE1EEQTNr+zGpyp3aaRISMj65R8kBK2ayLiSOpfcbOuA4lRUyK6gYv+WYeAZt
	 B3sgcDVE1XwdXltwxzGMUMRWe4haqDb3YBN17+vnafrm3pVxjds3ThfqjZBJz2iTV7
	 9nzK38tIRf8BrLtQqAW63j50EjYx+wSP3RoSVSMrjqkQe/gE1F91gEEvVAv9L0nMt3
	 2GNTft5IExdxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993A2EF5851
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109889359.18032.9999785761531652453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832b29b5a843fbca02370a814d72ab01eca71898798a3b3ababa14c84d38d591
Date: Sat, 14 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771098893
