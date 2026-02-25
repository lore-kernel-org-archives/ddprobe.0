Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB0D749C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771996494; cv=none; b=p68kA27TqHQWZhTcpI2iWrcHGgc69K6fu0GudIdQO9Fv2909y2GBZHTmwU9hTSA24eAEKHsC73gPzf6eetQM2pCu4uNqYiulCCLjYMq7Nv39BEN6gN+vdWoUEfODVJL/EGzUtOkeum/z6EZn/wgG1bGNj7jTBo9BbMmv3zSOCE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771996494; c=relaxed/simple;
	bh=14m9G0mSHikkaNTP6HAv0umHOmoWnO6hnhNmQxBFSJs=;
	h=To:Subject:From:Message-Id:Date; b=rHA4F7qOUfh3MPYScsji+drwrr8bmZOcvN3hbqBkxQT9ptB5Op2v/G/7UMIt2u7tjXJ3qtgSOntBenUtOdsaXRmT0irHfe96L7GWawBSiJW4ldUO7ip1nOfhyMBNTHU02EvJTbZAbUMs91gFIm9PlE9Yk9eVcZW5g25fAmcH95k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTV6V8wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTV6V8wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EEBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771996493;
	bh=14m9G0mSHikkaNTP6HAv0umHOmoWnO6hnhNmQxBFSJs=;
	h=To:Subject:From:Date:From;
	b=sTV6V8watLpzelcxUF7O6RkjgeFz4+yFqKltx+/50w5wHyG2FQi916PJgfZ3542Ly
	 ic3meGpVqfeDabksmtlvXMM4lLI08RgJMVxVdDhH2AMkG4gdU3C0fi+bOz3FL6DPo+
	 PZKjqOol6YJlHMg8JYfnSwa5wvcqNeDb72ijtW32NjgWpaiGG9DZ7i/6LSrL8Aa8MY
	 uXtjPTD55zjwMaTT8gSdXJqlYx+l99rmiYyv3yHzhp+yg18EqLCPSowuKvKWouAs7s
	 XK2hDCvcuTaeqIOgdkm69fgv1pVH+icnC18oUXLRx0YBU/Ir94U8IBaFKBEQBeju+K
	 llE3qqGoSQ4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339BF5545B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199649359.10509.12156427056845576303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff6fb91e8c3b175f62f1c0a01fa575d1300aa3211de6196767e2f7fc0fbf462
Date: Wed, 25 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771996493
