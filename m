Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF581DF736
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787961634; cv=none; b=lPYZ+38WFhQT6s3ESoZbaSI6CFCxAfgbyKYTBMQCQQLgBWVbzv6LAHD0f8vsgMPG48lGW4y9fDQFH8UXxD5Sslzq/RFyKgqZLlx9j1W71BZcgrRRSVM9nYNsh39mLW86cthTnTc0D/CgphBqmwIbKWyrGHOY35KbTWHgtEZSOYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787961634; c=relaxed/simple;
	bh=XRmb8xh2jzjG4R0ZuijjuDnGSKll05p2gyLZIB5NSkc=;
	h=To:Subject:From:Message-Id:Date; b=QngF+OhZQ+i/2DBpBcn/wRTwmBvmdd2Y1MNORfjt7WISXwzgUBEsGX6wQ/5bdKWraq4Hq5X4NWjy6q+J62VwvvBZlX8V07w4riR+5uSXjQsOXgsN2V93dd7MqZZ4SrgkIVWTfnfRVQo4zQ2eBoXTiTKbgJcqmucEdsmDCz9DUrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOrltDFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOrltDFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B1BC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787961633;
	bh=XRmb8xh2jzjG4R0ZuijjuDnGSKll05p2gyLZIB5NSkc=;
	h=To:Subject:From:Date:From;
	b=lOrltDFEhViBOHI+YTKqWTyZSiGiql9gkc0wbrb/RaTijWFPz05wV0pQZrhJx9bo0
	 4r0H6rnYdwyCa26xDJ8Xb5cM9CGZ1dDvwSoDxzB3D5D07HBA7hMyFwnrxHMm52e7jv
	 dHYnQpqblT2bmT2FrXMYW7bVH0ZLHdu4haIp518CXusnfQeksu2eS7GMsdCiXx5Pmi
	 rEo9SpdOv9Ov1bf6XfUGoD4bXAWYmCJqKe5VFwAM0MAnnqH9oJyFWFiuYxrC5iUleP
	 eEDbj4FEYVtmI5DkVgyXJzxFZxrjdxqnnjrE6FC3DOoTpa7gnVfOuTe86t5J3oOgDD
	 a8ba1OhazFiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B620EC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796163370.17257.12591051966246023769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad217816f285d477069702ad8370c1abcb585d095f1524cff4319fad85ee4a2f
Date: Sat, 29 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787961633
