Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9EB5672
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737770754; cv=none; b=lBCGkkUnu+A4SjTL/meoeZ+vK/dK4Vxqx6+kXsyhC/70jR8ocCrj9oYfnozJm6bMj2TZ9Lh1CK8tZ65qPg2PT95i0ZKdnTDTsVGOKLog1X0gUKTgXI5+ysKew66WrZsWF8/XcrUXbcRkx/pazPQCLKarAOYd/5uVTWqgwsSTpCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737770754; c=relaxed/simple;
	bh=oWlBaVjxL4XbxiolrUu7G3lJ/V2zNmeNH5014+l3r3o=;
	h=To:Subject:From:Message-Id:Date; b=ksRLfUQalKIXd4mDST+mckfJlEPH6ZvH6cf/D3ErLwp4MPJuA0k0bFj/1PLeBarQp0Iy02wAZ4WNCcrfA3pP4Oz5X5Ee+7n/BOHfd2DHEz59SS50sbMH7T4M6I/qCw4WKFDscoHmrtJiNqaUExICaV7eIegQ5Io19HWm+KAk8Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaFBN/DS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaFBN/DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB07C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737770753;
	bh=oWlBaVjxL4XbxiolrUu7G3lJ/V2zNmeNH5014+l3r3o=;
	h=To:Subject:From:Date:From;
	b=RaFBN/DSOu+eCNBe4UHVKhl0aW3/Ganz2F7aCeTXBlJoTVGgSFY6lidDPTqjb79cy
	 zIhXw1LILGPkglVqP37mI7Dqw/vyQry+WVC+d+5a+pxL9YMLmHyiEJffTUhBb+kHJ1
	 oXIpU7czc07YOdBUW6+o5v53c7IyT0pJatEZbpKmgYWHuDLcgIELjvjwmvkWa29Wf8
	 mH/YUUv4kRulMgXvc/ZuGCxNWLblY3dJ53JckH0w35gBIGIRk4t2nuZ7zRmjarxox1
	 4r5FGx4os4GsUKJc/zZ0CaiHjeNL9CL5Zk+3YwgzFcbAfGxCpip+7SAnFn6Y80XNc+
	 tSsYKXpe4WWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999F9C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777075359.30913.16028978874541739410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ba0a62dd93e04abe3cac13ef67c91ec0464095d68befce4974f5bc971107ac
Date: Sat, 25 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737770753
