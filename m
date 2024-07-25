Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C917FF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721880354; cv=none; b=hLju6C+rU9CEnLGfoAT7/dl6aNvTtWmhfVUYUL7ikNvxVza6VMTkmC1yKcIQM4yrZXfk4h9JXLVHDC5FsD3aGsE0ueEcl4akp5tq4OoZ24XdgFJgb39rtfHuEnlUSNwJSgEgvsNlRydpancDrnPA3qEvlTmiNvkrefBVTacpdmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721880354; c=relaxed/simple;
	bh=J3zcCy4oEVhGdvD56t18t6U6/s1gpLVxi7u/DS7B4Fs=;
	h=To:Subject:From:Message-Id:Date; b=VMdpW60Mj5L4t+TDRHIiFuSAuM1cRbv6J+b3ez5MaezZ2rWlyWYEq96zrVt0HABG300iKf/qMLWx55VBAXhm2YPmcfx8DBXJs6sDhWCxzCYzexPWk3JNXEa63Rc64joLt5h8uPGK3QGxkEVxdryBf4yzpllA9unKTePcMNDsjEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVK3DD8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVK3DD8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC813C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721880353;
	bh=J3zcCy4oEVhGdvD56t18t6U6/s1gpLVxi7u/DS7B4Fs=;
	h=To:Subject:From:Date:From;
	b=ZVK3DD8cEifZdyQSMrTnmep7yr4/kBZmGWAIIeDo2fP/ZAftFmKI1E57KhWhxuigt
	 iEg+GZpjrZJe3ZsjM+XRvajuySz3A2SK4e2hnBoyPHYUxr06pNAiaKBRrmcRmDpWOg
	 c6JmH6i7yoAlfoLTgc8gwi//CApOLDA13yhWHdQesTEVrGICO9tp9OmtV0P4yaapFi
	 lUmTMdWeD4JBJyhRNto7P+gn9H9dtEMisccKtrjHrKSbkEv1NRt8HZUfUbalc46ujR
	 hGHeL/lQiinQ3ZGr9dJLu8EXwUe7yED+W8DCrtS+i7YeWlHYW3czJQ8MYML6er5LEk
	 oYXSATUynz2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D1C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172188035359.27369.5983713480304890962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba87c765e5558880ab34987e6234738c48893e5b2d55ebb427a8d7a8ec9bfeec
Date: Thu, 25 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721880353
