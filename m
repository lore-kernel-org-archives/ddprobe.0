Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A6D41C69
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761818994; cv=none; b=hL/ZXl/hadl4Dw/l/QVTZGqi4GybRojsZdqB+F/b3dMyP09kdDq7IHgbq2HZu27k+GfmdytiWpr+mxhJaaSMFYeRpl8meG+GU6KDGdDLe89BMUl8d+64pBiiNOgbvQgL9LdewVtSe8NqFwfkcrNsInYjPJwQMASRWEC7hfPtlVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761818994; c=relaxed/simple;
	bh=o8mmGT7tu9xqLWIcuHlYiIyLL3fjU3iAZcaxBgxlZ7I=;
	h=To:Subject:From:Message-Id:Date; b=amQKfXHHErkZrl6OQ0gvFKD+Q4ygV5dV9k19cvijfveDwmDTEhlJE7q+FCtrS5X4RXYXq78tpo0rIgf2ydPdtD4qX0BJWlPvwVjJk8PZmEnDVAI9aBfr5X3s+j8iBneFNWUyZcGfotDPqRfyG2u5qko2VmM3riMa4p9fjbLZLQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxc+UKZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxc+UKZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A464FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761818993;
	bh=o8mmGT7tu9xqLWIcuHlYiIyLL3fjU3iAZcaxBgxlZ7I=;
	h=To:Subject:From:Date:From;
	b=Qxc+UKZbVFwnbSfg28SNv2mlPkncRFOMMkGgkoxN9UUNcx5rdn42RTcJ+srMW6E2e
	 6OvsHmHs/tXL9ye3jO/BQ4asW+GUdnEJH9Xc9cLJsVdOIxwKY4ffB3PANCSEPq6+5T
	 MVAfNkzDXJXLJMJQ02VTGaSCeIC8UDLwZr6Yqh0jr6w8FuHlwOXFIi6a9qW33VeEjf
	 uDjsfp67+FEmgUplI4yFlgd+iiXKwZ3XpS5AQEF0Mp8shgo0Iw59ldCm9ns90kcS/E
	 31ewqJOi+O3+z/1+U+hL+MPmmRCNlxavZEaLwxudwwLVpa6ACbj8dnuOwSmUnUuC82
	 SWCMVlUM/5PGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C30CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181899358.3543.5542135300906163252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bd62e87dbd79be30c17fc2c8034d34b020f9083351735fd6b70f7fc771b857
Date: Thu, 30 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761818993
