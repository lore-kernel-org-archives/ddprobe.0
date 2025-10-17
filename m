Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED4825F984
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760738994; cv=none; b=bIgsE+CPn6iwDkuhk9lUEHzj6uTH8DssCJArHD8eiS9g0o1SftAOaI1hEQLYtOc5AE67eCYlmz8oWF6SvWffUe5WgxCsC8x6EBHVg4hthWMbthx3ObzhsYcQUnMRfbS9+RcSRUpIZ9zmE045TP8kLqDjg9YbZUTjyg9N9pEcWSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760738994; c=relaxed/simple;
	bh=HFhJA7UWIbNQ0ilFFxvBxunFTUUWY8PDmLhgSZQJVFc=;
	h=To:Subject:From:Message-Id:Date; b=HOiaqYn7iYon92IH7Mi2hTT7jQUP9D+e79U3ZeFFpgPbCCsFQDVehRJVLdevnWDqJux8zU3rshFbLrwpEjw3bt6B8IPkEA7wmxWmTw+cCPOfbGlYHFMh44GmCkpcyfGlB4RBJzBRDgBibp5FWkEMaWxor/+faE+59+rHolcSIOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqerQxRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqerQxRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760738993;
	bh=HFhJA7UWIbNQ0ilFFxvBxunFTUUWY8PDmLhgSZQJVFc=;
	h=To:Subject:From:Date:From;
	b=EqerQxRIDnmYe8Pr8QVh/LuZdrvW4ImyZpNlG7Fpb2Jy2IyHRc5qbYHD6vRy9L1oQ
	 d8YisDzNRNhFwJZNn+EMJWYxjr9qJywKK+rEuvT11xrP+DA5hjg+pw7gzCIOvtmeeT
	 5epDadaRPhIKxPDUvBNdMFyIQnEnhZeKPl4pabWdH1X9p+ltQu/AryjUz8buDFjjgD
	 OU/c6m2ZBfboII01ih8pMU+tBbj1VMUYZJuj+gd764c3FiKl/eB4iYg+P7ly+ISMYj
	 fbABMmfJQbYDmb0m4rIVqTkSpwyvSMyh8zEXMXv7rK+MPg8NIWKOlJM6OVCTZJWbZx
	 vfDrgfOQoXCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91964CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073899358.8171.6727326521069630366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500d48974da7774074a1ef348ccce44aad7ebc5f67da71e9360bdb679da19548
Date: Fri, 17 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760738993
