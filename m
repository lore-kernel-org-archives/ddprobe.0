Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D4143932C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783574314; cv=none; b=BULj6kl3iyAgtOGb/D3EaPMCofkhrDUndGrggViuY/raxNLJIItOaY2/bx8+6luLoZhhCYHro7r+1+1K84JMGiTxbtf3pZii+NPYgYyH4i24insbeKA5Grl1KHhb8ZI6tEE7nsqbexnPpSTRU529EwEdWWPHmxLiRDR0Gz5oCrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783574314; c=relaxed/simple;
	bh=dnutIsOnr5AxkTKljdhTI+GwVIXeaElvvhRShrwiCoQ=;
	h=To:Subject:From:Message-Id:Date; b=QdukSxeqZX7HlfmWZ3uOeOwIO6biHZyk1wHMOPAs0GaP5odCQeotLZVHyz1FJJhs7yNWy0+1wgrzihGGIvG2J4y/6j0lF/8JbZ9ZvjUrGazYrX/D0GFsUuyrLXOxCT0p0QNgbYpw7MrbawhgyVxeMgz99u9KYXjorTsN7Vu36xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha6Akndc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha6Akndc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB449C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783574313;
	bh=dnutIsOnr5AxkTKljdhTI+GwVIXeaElvvhRShrwiCoQ=;
	h=To:Subject:From:Date:From;
	b=ha6AkndcOWCBo/4/xcvWt43dNlV221G8fJ4uhQcImWtdGI9tgs0RJB0YiwRzN1zOK
	 JeBT+mcLWihyNO1HEY22gp6qvY72fuZLXRio2CU3IRkXGs3NA7TLVZR8n0Fgb2JMe1
	 iR+w3gYHqH4WtVpc7VNyI4tL1Xoz4oPKhtQ8JP9C07CB4FkT2kXBO2d14LrySiLjf0
	 JxgKv8SDudDdo8h5gURuzWRfwukGgkhhLvY6lnFktel7fWUzvyqp5JOZMcVD21cd7z
	 YvEGUPOP8LIhaKTRFLuzgkHk69JPCBUnNNi7TSl2/6OBOvMKd1Su2RZnuMQ0QbcbFs
	 w76VwLJL1gkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83C6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357431368.20852.7029766335849406984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a9bb4b179e2a65fff216e35a02d4fcaa126b5eaf23bbb52da3bfd9639e2e33
Date: Thu, 09 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783574313
