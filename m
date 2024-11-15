Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2785BCA5B
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731702954; cv=none; b=BC7x7Gg7778WJKuoQ46eKRLbF6sEMq6nxv914R7GApItK2G3ddiCb+uzE3qhksXjU5l9jzt0p/aTkPTDB6M4h60S50fuH6vz7lsj81BREqM8H2Ey1BTdvJ7ysURU7guDR9bY6FQ2i11dRq6VQrZOf6hLcgnTnQ5BCEgUswwqKMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731702954; c=relaxed/simple;
	bh=WnWFUY3x84sMkf+Pwupj1+Cp8L4Y+DZhtW2sHwbT3nE=;
	h=To:Subject:From:Message-Id:Date; b=oUJCiIbuAPuBDxCIVGCbBjVfjdgifSrfRXqCo6wMBYXxKKAhidFWSaZKB++xH47r0V0xqvflsJBxuul9Bly7LWG36Eztcxnnd22UWlxuPbnuds+upgogerMO7k9PQyvH08k3rkvcTQHR4XLdBhqk//ngJYL0o7j/oQ5IxcyHL8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETNZN+zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETNZN+zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955BC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731702953;
	bh=WnWFUY3x84sMkf+Pwupj1+Cp8L4Y+DZhtW2sHwbT3nE=;
	h=To:Subject:From:Date:From;
	b=ETNZN+zEw+LATGqvAPyPFSWelG7++8fzALdrHpgKfTP2oUyklkFVjf5RplRF0wBBC
	 h3Gh8SxwFFxYQetFSdVFHHytWapz0NnqluI0DLweJNUIaVCjHDHAA39KAffqZZrgII
	 xnnRMnEDRZGn9hlbYWhUvcwEQoIyShrVsngswz6SUWUrEERS79k7UHg0O2eVdC7ziX
	 39gd2zv1bmOqWmdfDJflUxqxvv6we5Xbu9g8Aq2Kc7EY85nGWpEk/oC04gdGSnyERh
	 mK6DEX6U/aOgcQ8OLNMOUV3twb0f0Oek8Z3vQo85Xo62vhWjky994UwBf568aiSxQX
	 +fO1iLj1+ECBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406ED68BCF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173170295359.29006.6072736719670880527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10bb3b753d1d9178e60e05851b34069857ca89c588e7e122f3d3bb9ea1f8dfb
Date: Fri, 15 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731702953
