Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B2C3064AF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756819194; cv=none; b=pORw1/qzIeda+I1AlOOsMXr+ezkb8PH8W2deGKGdf8PbaCEQ1s76uXhVd4HwlXYoJlrPdOwRHSZInnSp5OdkTDYqa7l8K8zGZsew8MAxMddCyE6yvrym7H728SIcBUDiI9Lno3KtzGhghwYdYciNgxA/5C00MScZy5v3E5ADmwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756819194; c=relaxed/simple;
	bh=427cA29amU+LUmIS13a0FjLxE/9XfnJc1/n8RgGT97s=;
	h=To:Subject:From:Message-Id:Date; b=AsJtkane2cZIFu43XxyI2ed3zKxpOnE9i2USd4WeH/CcQY/Q9gem7URb+7kr9QnOb4mo1vp7XN+8EOJHaNIvnvBFdm8enC2r8qxN6avALRB7VExy/CyCOHhTqTXm4QULyNvscGA7vgjUscIiXfKiSYGUgDITif6ruNM4wYcN3s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDFE7JoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDFE7JoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A028EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756819193;
	bh=427cA29amU+LUmIS13a0FjLxE/9XfnJc1/n8RgGT97s=;
	h=To:Subject:From:Date:From;
	b=PDFE7JoEUfTlaxmEOlX6P+9K+dcpuH6OwQj9Cpv2lkufhH6dWvvJ+p7CLvQ8ACi2W
	 R2V3jL385SQNfm32oJAbmzmNqm4DnNIIR9YwdCPigqsprVdWtcBmaiD/12duebvWZh
	 e8to/gMRI6p7+LLWJigIrrWldteDF2zjuNlIo/czeTNMH9MPiWn3+wmijXww0MRJ01
	 yzyngZQ9j8SAm1W4YMLa7AwBooCGzb1hakE36Sdkv8s2s4cyMwmnp2EvAc0WuPR2B4
	 A4XO4PqOGLVAgGBocJU7mcOlItJVPaJPq0aFPN2v4W8Dm5ppLjGRki92E0sjNiOXe7
	 2E2pInKnUjefg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D3CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681919357.32024.4472520207868888621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d599701dc40131a94b49e68f888b9583a020bdb83eee0998f267f3320d9f5c87
Date: Tue, 02 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756819193
