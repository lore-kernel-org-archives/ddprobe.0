Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4B420C472
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738605356; cv=none; b=fxfOGieA8vAqVzQ9rNd/QBhhk+ullpI/WAvm1Duu+FsgMuIWJYo1nImeE/7Qb8Z43xE5LfG3Y4YO7WTnOqr70I/4QFNol7kb89USrFJffvUc7BjHqUBn92oUqqTbCy5fLQ96Pjc8Z2+Pkj+ng0stEo8Dr/7YDNNiz45ov0m+SAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738605356; c=relaxed/simple;
	bh=QQxYH/94CwHQvv2sxhBNbxD8OonAHu+UH/mt2vxxzFY=;
	h=To:Subject:From:Message-Id:Date; b=CfkFo15ARMUestsrAYFhkaA0a5x4VpEbvJvCV3SoP3pnJPX1mEvI4gdEASKh/d5ijPFqi8eAc/gfZNeIv9S3bM+pbhUtzODltm0qfeSeSg70mGehpYJhM1hqS2cC9/EdO6AVCdJdoZlvltdcrXRjtTjyjgQXkBxZGpQlES1vQZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByxhlSFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByxhlSFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738605353;
	bh=QQxYH/94CwHQvv2sxhBNbxD8OonAHu+UH/mt2vxxzFY=;
	h=To:Subject:From:Date:From;
	b=ByxhlSFzzxFOHkyJSaaviA+9GmOQ4ikHhHnzBzY0xqF5qM6fjz5B6FNfjNXbDYeQG
	 C5oE9MDSDR/0AwIkJhLsNaBUIUOqrJ7VS4w87PM58GGlFXxoRM2DY3BDbRJ3eGS3wo
	 fnks/zyIoxJ4TArBS6b+c3myoaST9SLuyd7zWrxcrx9KGX5UEN7Z+W0oWWdOwMl12u
	 4/Ga6HZYJwxInkb/N0phzIWJD/Tn8kWWnHtzxPJCFInJexVhIvYIIlwJTVZbfMQYjA
	 kx3k7Sv2dX3DyGztpQqKQS8xG9pfcCgdrJNUCH69MMcFPss199V2RM5amoo++axRfO
	 k7r5ZL5wx+oZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0643C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860535361.27030.10460758297803206828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25e35289e6ac3aa3838571bb35b5203ceae379ab45ab344eb28713873cf0ab0
Date: Mon, 03 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738605353
