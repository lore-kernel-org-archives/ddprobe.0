Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E4915CD52
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729638354; cv=none; b=LFmH6tPvoruYvpmUV/6yLKrZl2bbn5j64FxWbuahsvuAGL07nn04n346Rv6lwvR2fe4WZqApbgERx5d2uu5Xnf7KDcckLOpvNoFyLUXAhvEPhmM5iQ1keWPbW12WhJJFZIYF4fyO2EV9SxMr6fZtk3dTL4hLqWV2MLV5rc4XjOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729638354; c=relaxed/simple;
	bh=rdsJI9m1WzUbQDJFAiombzj61KSo72ZoruoS4wmovGo=;
	h=To:Subject:From:Message-Id:Date; b=bPKOoKaboUlzo+NoKqS80gDt2seAhtfUH5W6daHynHLj5R06eoJUaCrsT08ys77AYhMxAQA5h9Jz0zJvHrtKFDObzxX1CKrYIIQNCgo4YR6uutzLIGrpMJc0w+FVIEORE0OTq/QZP08uoeHQioMuXben70v/WjBr8RVdhf6yE14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXEwhq1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXEwhq1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B756DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729638353;
	bh=rdsJI9m1WzUbQDJFAiombzj61KSo72ZoruoS4wmovGo=;
	h=To:Subject:From:Date:From;
	b=uXEwhq1DXKcY9GhkqQ8nOm7NHJnj/QA04GdSvFjmNFLYdUvA9LqacY9YJQr0CeOcR
	 DeNZ9ZXc8safixo6o5U04VWZXFc/Xj2s3d0RYYUY2ggp5ql5KVEkgrknDRIA5cnY65
	 r8QLiZMNmfGAEyXGDNW/8IKN9b1bOYV0CmEcDYNQUtRWZBAq18qcU+o7y4BIX8859D
	 1/DBa6l0dbrWiaET3v4idjW8j7HgC+Q6SWGgyrNfQz9pYsmfMN8dTG1vAZ0q5IhK05
	 n2pKgUt4vaVbWogS64yCVH6SZjZlDaBlX2Gr2dKLJoXQokVlPkis+dFjNVZEU48pTB
	 iQSqyPvL23y6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC0ACDD0FB
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172963835364.11952.8238930158387580949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca116605c5a72517472bfecbab946b083d1691e713bc911e678f32239db2c542
Date: Tue, 22 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729638353
