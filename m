Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F265318E
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711845497; cv=none; b=loOluWBUqStGDYs+XTnbL8lNxPyo6/JrGI1LmnpsEA8fXyniZCXPUAa8TfC+SNRXVqep/GIL93IN0yS863qOCrf+HO83SY9Fzsk8rjUJcD+NGmSCRfuRMnc/+EX2pHux7nnx09fqSH7t57QI68N9X1QTBvKA7ucnZAET2MS/tlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711845497; c=relaxed/simple;
	bh=1s/7v/GYMddTXHbvRNPvFoIQcESVhZzgKZwLOKZVZIQ=;
	h=To:Subject:From:Message-Id:Date; b=fFVN6qdRiLGD5+Dum1R7Rd8FdK1OXuKQ5KSJMn6d6DMThs8+VihdZ9bdtxSntIUy10eHk/hsyC0kYQYYZ4gEa96DuOUVA+mn8wQwkLDjot/gmHMQcVFsP5IvOOp2Oqst3cumT2kcW/N2Zjl48LvMqdvab2hCmpMZ/KikIEXYecw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gefk9KYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gefk9KYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81306C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711845496;
	bh=1s/7v/GYMddTXHbvRNPvFoIQcESVhZzgKZwLOKZVZIQ=;
	h=To:Subject:From:Date:From;
	b=Gefk9KYciWZzMeZqXmTqHt8nwoMDVTFvV3IfZD40pKsIZOw/OOhLT+zktuZSFeHD4
	 S3CcO96WNGl1rpPStYeIU6g786NC1c5Xda4tQRFT/ooBE6qyI3nl95YAIel66SoQ9i
	 P6AS5Kd/X5Y4i7swXB3Jl7TkVzsGsZiPUtgwfeOovzjCKqg7/ZqOtfDLqNIvmp9GK8
	 FUdza5UQHnvq/JNwEdTrdyJDXuS6FK9jNjsBudwIXMQ0++ZxAeORbUZffsau578HED
	 anHcvWN6ZmYfS8UrQ8zzhzBhGeDydd3w8AbOQAcp+4S4r6spUKJDjcqbFEuvecVvOA
	 xgn/xdrL3oAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE5BC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171184549640.2971.7024491046167367255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e617bf31707be4f833f9c2b581ea025989ac7059e2d73b743bdae1c03f62e01
Date: Sun, 31 Mar 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711845496
