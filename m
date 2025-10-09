Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A52EACF3
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020794; cv=none; b=H+pZv1NAxlCGC2v1uUgYSu+A+SjhGMz/+PJXqNYl+v77FALJwqiFMx+d7dSt6stkPWIprBbnMulPaMMfxTpWU57IWDiXnmAwUpJeCgeOGZumYsXrp2p5KtZka/f2ShbZMOnxTPdhYUqCLzvyX04cY7mhDZXobQgy5vUyi0lTuDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020794; c=relaxed/simple;
	bh=g18310cAlHat9Ji4A8W2gZKqVg173m3WxynusD7Zp/M=;
	h=To:Subject:From:Message-Id:Date; b=G3YWhy5bVK/36lOmcVnSfHtTwx8tExdOuBLXMFLi8kYezmhkGYb1K+KuEgjQQnsz2f+ZXD9DbjOtAdkDdKIXhDBaNTd6AYyx5E4iZQhsGo96r6RQI26nPZHgXCV6fb3XJwZbIlufggOre5RBXL2Bm/hJQHKQQsliRcHANn4tuNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alT+OQKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alT+OQKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8440C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760020793;
	bh=g18310cAlHat9Ji4A8W2gZKqVg173m3WxynusD7Zp/M=;
	h=To:Subject:From:Date:From;
	b=alT+OQKvWSQJA0Ua8exWwIkzCL90FoEFPmc88BlKbidHQNFiyYjk7dBrD0xT8WiEz
	 Z35jQL8pXgKKud01vJU09ALbR2vYSAm0avZUORNYc06ZB6JYXPqHRCF10zWFMGWiXL
	 mRDtDGhusjG4V0YYTNw2611IsEtfqGqZRNre3acqfN56uqbiz0IlkE1wWGqH6mtbi7
	 wt/mhsU+Nzswd1+pk53Dt6Mq24+IWt6caniwtVxxFZ5E6nCl09zmaPrH1txuWT9hb0
	 0/aBpFXmwI32gwzc/fV//i5eUX5R2kRYjZx5e/eD1+6dS0nYU5R150RlBEo9Akh8kM
	 hPLAwQOCFsS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94912CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002079359.17578.7614669423186087567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56529d48fc4868c9820de065730f2478e122bb74c6d6a4ff62a5e6ef330a6b5e
Date: Thu, 09 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760020793
