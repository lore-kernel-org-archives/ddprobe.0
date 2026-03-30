Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C426736CDE8
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774885493; cv=none; b=BvaWKEGefT+d4W0hAahfVvcJOUEO9ae+cY15D+kWGYFknfAqvzXWKDzj4Fs6uVmCDrd69C744dKLLnuva8c/GdENeKPWOcpLjUIjDPtI8/w15DRaMoOkBDbVn80ZhXqmvVijAoYwnwVUwwKuBK+GxOuUXrTHFQaSSq0uGegQD6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774885493; c=relaxed/simple;
	bh=BB9SLSmaKSKm5CFW43klpnVhr926Heq6bLYZsJOtyXo=;
	h=To:Subject:From:Message-Id:Date; b=TCnbxSd/yKalB4sUUxH1S1VPSEYFVpTAnJmVLdas/cD1mD9k+3ldNAAXrNeW/fBmW+u52wyJk6Vgq5uwOWEqqhm6Rzoeeyhrr9w3/V51IT7ef8ChFID7CTLBXHpstibC5xFd61NPtkRHr39ajZi/jnbv7TRP2XV/RkwdDlaWMNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKjNgLeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKjNgLeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1042C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774885493;
	bh=BB9SLSmaKSKm5CFW43klpnVhr926Heq6bLYZsJOtyXo=;
	h=To:Subject:From:Date:From;
	b=YKjNgLeqf+RgRt+qYvY/oH0q3LWwegtbENVamHjPN101pb0nYPBTZwiy1uxXwxKgK
	 1AOxFeCTC/WKK/uAXvKjc0/TEY6f19KYm4AXlH3SnOQDa/UVgs8DYZDeRW1IeF4JF/
	 MxS3C5Uqe5JqUC/kU+kYbVHNwj4JblXI2CJGIG39lGQzZ9H7h58NJ5uXibOGzFVWq5
	 AOZkJ+mWS+LuArXpLfa38iJV+pnOsdgQRTn/Mzyv1vGSF5/1JaESs3TwLPjFAHYFPP
	 skQpGy7ONRklb3LRgVtXOE+KE9OkBchkb1UCpZNDey38dv41KZG1cPh9iRekg7h15p
	 A89jWFqV6oypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A711061B0F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488549358.15648.11160703738597519959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e6542e2c6a96ed665e1918b44cb12ce95dfe2c71921aa17277a4c822fb7f09
Date: Mon, 30 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774885493
