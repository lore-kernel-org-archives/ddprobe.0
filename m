Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20007407100
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774972494; cv=none; b=DfnBPwLKubmHK2cbDJ5TvF3kNcvPF5Rr3GwohT84ZzWRVzVBuHvDTOaeggdqKrDb0c0M64Tq377c1fPg7/lq5bnak/v6d0hz7YupEN5O/VUy9gC9ryfl2JmPLJs5sHcm7tRo34ksbqh5b+tK79wICOsGbFusIdpliCIi15nHoDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774972494; c=relaxed/simple;
	bh=w8ZdveEq8IE0AFifb60512wbYpJSdS+hqmhzR25MBnE=;
	h=To:Subject:From:Message-Id:Date; b=LoSkw7JmjnDMwgQqJ8RSLul9Hz9LDNd9nXgS45jHXrXUsbV8WyO8J2Azpw0EJO9oLGmQxdZWknTuNx9Pei7X/56NNoDoDYw1ClZxwkKQ1OpOV01Ev4c1DiiEPxqnAtlpgDoCOrX9YiykC2vXKMnu2qiGlw7HyPeHEsK3yjdh6E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4uL/tFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4uL/tFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9370C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774972493;
	bh=w8ZdveEq8IE0AFifb60512wbYpJSdS+hqmhzR25MBnE=;
	h=To:Subject:From:Date:From;
	b=M4uL/tFQwjWGV8nzMicVnu+evgDXVFUva4wlwBfH+2rBdFoRgUXxeqNzatEFJavfd
	 DBBp7D3R79AD4P5c6WFOG4ALyEw2cSu6eOaicF41JK9CXVksAYFZ0xlKmKQApADhME
	 hYVrZq7gwAisaeceDt4meknET2XUfa3oEW7PpMFzkU/7S/dCh5eE1UVUtAfqCu4qEi
	 5dQkCSp1UCTB+UCPCGG4sXSVz07SBtcJejoGA3m+GzIJf9TQVrSjPHO/awsPVtEQS3
	 MeHoUTti372SMiYduMYzu6yCIxqmCTCGg2Fj6ANN7ZriQDAshXBy82TkwWpvGvliWw
	 ZSYtJFpcWXyMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D7109B492
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497249360.11807.16450819918165200475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc5fff466bfc27d07f67d4da1ea33f55f0d191b1b20ad8af6a4325be22fadc8
Date: Tue, 31 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774972493
