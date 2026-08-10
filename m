Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D44424D65
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786379434; cv=none; b=ulEBPrpW3Sdk/CFaP/RQ5CwX8+Q0bAoOugJn1rX3LQuLKO0cd7QesscBu8kaVqvfz4TljWSIxGgCEwuc7xl4Rs3LSViXdqkJDDCqcQKgRnJIGpagN/eqlvh7lf5awSfvkKXjnuIhyucb3kb74HDgjl7Z4+4MrvKKH8gOdrijtNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786379434; c=relaxed/simple;
	bh=wtk6lvd2Q3HKZpHUMTaTO7ZRsQENCToRwFVwpVuWxsk=;
	h=To:Subject:From:Message-Id:Date; b=MT9ew4sQKmn7aRus9En3LYE3CsilwS7mxzTF/mp+ZB8zK2mqud+MAHDIhWuGGY9fv/PC/WLRbvS20BF/CMMtrWFBLf+Qa02QzuulKFBoYnMY30B3ySD6QuYcQpiXgzXLylZdlbUK+s2IzErhr+WTMEbcshCozlR2nGRH9oBbJFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHsEV8Bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHsEV8Bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4803C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786379433;
	bh=wtk6lvd2Q3HKZpHUMTaTO7ZRsQENCToRwFVwpVuWxsk=;
	h=To:Subject:From:Date:From;
	b=eHsEV8Bi9yut09GQ9SkJeDtPF0UKTT+nrNxPdQHj1/v/5C96loMJu93lwtWvXFBn1
	 8U0epkvnZs1HS4M3Kd+eqCZxGcbQkq1Ydyi5l+DmhnLVmA+3DBiy6jWQ2Hx2xBsK/c
	 ++sIHV3XTPGO3ZTV9Q4pvR8GzHcLgVffSVE7UsxxbG4xRC3O3mePBfYtmFBJ4fYWfD
	 H0doD/eDu7xEWXHcOp2dcB2egXKDO2pM901P8AI5nOk392uVZLhqurHfFnI9jlFFJb
	 A3s4ZXThtMemGNUliO40VmGoZes6i6qYOgiYJkHOWsXkwmvLvLM7bj8OdW0HszLCm3
	 QzomYzM0YDNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE51AC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637943370.25507.6225847936194042961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b5a4e4b213ee3e2fcfa6e2e5ee8ba5ec1e7b1e8661652ce83b0b136d4ceb0e
Date: Mon, 10 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786379433
