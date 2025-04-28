Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A2101C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745873394; cv=none; b=YKe+A1MaFiNv9RDxu+enZnU1xNoVZ6NNnt0FzAUmHTy/Kiz0et/obdqFg89EOsQ5YHF9yDaeELoGrMqMngpNt5BMpDgOpKVBne+Goc6fInehHIHt8r2KYOYJV77+Jv4/91mjPk0QHQqxWgw900FgHnlIGbpZHlsUiz5y4wmGlcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745873394; c=relaxed/simple;
	bh=pAIXPbEzC3MN/WsZOX5j/L6LgyBDu2aSvwyQCbmsnic=;
	h=To:Subject:From:Message-Id:Date; b=AU0MOazyYonZEU6+4oGburmcjXeucFbeDx0+IXPXeWEBGyCnFEMql1Ip3IfcZtBnEHAK0GmMAV93iFGKcviEj4K9Udb9yoqjAVy2XTvc79ri3t5sd64mC/pYdAdF3ZEAWVa+k8UdN/yC148LBwbhpG64HMcFP/Ap8gbTDDVONOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiAXpT63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiAXpT63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE0AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745873393;
	bh=pAIXPbEzC3MN/WsZOX5j/L6LgyBDu2aSvwyQCbmsnic=;
	h=To:Subject:From:Date:From;
	b=BiAXpT638YO0TQ8Cd/mHmUeFrtDun3882poXs0KaDfDfLIHEvTjdk7mzqCxlkNenv
	 dZFwSe3UDuLeFD/OBYgin/uvFAh5JuB0QMf/0NCk82N9kXwGuRbqGUm2nwVmtyTpnx
	 AO5S0arx5bnDMAKQyD47ydQdWEHUCw8ycrhHYP+MwwD8FKyqmz9oyew6OktdWbw3lf
	 BvEaNzE5LspQAFvCb3j8jN0I5rt0T/4axcdGQu3y6vDbTIaJEp7OnuWFTsL2OWeXMD
	 GGYRHdqsw78JUjteiSOhX52oUJ9N7DiG1p7LWVSic/4trvQxvZ9i2KsscuwUqlRT6z
	 RnWhBYp+RbV+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA4C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587339357.3894.15227970867915179794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a53817ec49b4981cb0151acb19f72a65b31ae8ae77fa1e801377845afb24df
Date: Mon, 28 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745873393
