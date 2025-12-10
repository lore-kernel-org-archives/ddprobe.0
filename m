Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0D0146D53
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765326174; cv=none; b=keDznBg5fx2D04vtdlnaFwQG5BuyGLZ2JYChDAQo1VmK+u7haG6mN+0CrFxIDC+u2GLsTt74383t57tSJ8DCgH2exaC4O/PscJEg/C2uqmu4h3O9tpOOSmHI31O1d2k8nUrs8y1nnQAAyk923+yCoz+NhIJf2YMfjKh9zaqoPBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765326174; c=relaxed/simple;
	bh=nbfQtrt1LkfQbAvU+cx1baysikHlzJZ7l37rweHGQU0=;
	h=To:Subject:From:Message-Id:Date; b=KFD7Lmu6V+FLbk3QQjqvB2euxPLYtLAznnjNxtH7oQYBXnYZwk1E6sTs5T9fVRzF4HKoT3qz2MkoePE+CyYI9nP7IppKcO+GoaMhmfezauuWCXQXvpDMQ9MdJ6acXHe3mMdxe1IltIw2w5gHWBDfNliWHWipSfMlTkWwXm635dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGvTrsoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGvTrsoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0D2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765326173;
	bh=nbfQtrt1LkfQbAvU+cx1baysikHlzJZ7l37rweHGQU0=;
	h=To:Subject:From:Date:From;
	b=DGvTrsoVstTmOesXYQlF//NyfOwHqhUgZhZ/oyvQG6+eWNlqYrm9Ugx1UFDhBDhDo
	 c+z1pooHBvgUkZQ7oKkXdtEKuQVrIS+59UADaMlPgSsAmDcuwxNzQu3fIoAOe4JMVi
	 TxwkYtTf6gJSt9rpJ7OMloRimaX7vKqs96YI0tyStNOp+QUh+2xd/aGq3ZhYndUWpV
	 mzOlrIzClSM8zC0W1OdbkflkEfez3/godgUVR/7o8I8/X9XttqTIHpLe8wQxzJtwas
	 wk9AFNHO3X5Y+oHQ6ua1eN2vxdJq/oK1Ur5Wxt0Z7gcJfql/fVVfwiMSQ9gySmZ8Ph
	 ewjHGUEEfInCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8DED3B9B5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532617359.20748.17569544740092164791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfc86eae40336fb65cdc73b9598f260b1042943e829e2bc0f187b521f7c4ae1
Date: Wed, 10 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765326173
