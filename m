Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41A2475CB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781476594; cv=none; b=cFf7wM/79S6vpJTpQlpUeWaz1QxKGhwH83xmQevnNdevLhVWlBpRzNUKYh2XplGYkH7xnyAxalakkWX40UJLf0ijaWkNrtzKjPjy+nOibb3qVfR4UnfFi8MvYg1/f/n/WwNzFy+cICXvFtcOV/inVePM7zURrqVdEFrBaS6uY0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781476594; c=relaxed/simple;
	bh=y9MhECrZgIAA+7GsSCG2dsVd33F/6ahNH4/BqROkX6o=;
	h=To:Subject:From:Message-Id:Date; b=i/WiKyclvRW29Xue75MlQA363e4iO00kXeNAPgkYKNPj0WIjc5r6DiGEqJDvFMGVQo09ZZcsaoUSO/uBhu1t1Ju4XbgbrCgjzi8ifNi9lOlP6TOTeNoXXABAiGuovYC0h//lv8a/nxDgDIFHv/QW5xNEap8238yZxXg9z+Wymts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nslk61PI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nslk61PI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC83BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781476593;
	bh=y9MhECrZgIAA+7GsSCG2dsVd33F/6ahNH4/BqROkX6o=;
	h=To:Subject:From:Date:From;
	b=nslk61PI5NtSWtf8AonEgt3a6iNHwf0+THgqy52YP+A1A7Zv+JCsrVxKM5xHDHRhu
	 bjyEUuhs33YXnD4WWQAMeQTSXVJ4NNLSlBxP7apldSQPXaYhl6ouP/OzrkT+DvyIwQ
	 R7zpKrobesKwmr0LxP3shKCLmSTd2XZv46aKyjRKhCpSg/Fw8owEyBkAWOt4Ar5sgc
	 fIiglrl2YXsYD+U0DilK6MbLcDsfuvaBzFetfBHqsOaZcYdfUb1nDwdXmc+ehU2zCf
	 CZpvbglgC+hODR2mqJfTOBt3oQ2b4Ed+y4sR2vprREMWtJFOuxP8xyNQunny0usVQW
	 EMrjypHXl2duQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE219CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147659374.10479.4273069457039322885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bb8ffd76904fb70d6f8a172e5ad2ee05043447aa2c33821c88207f5fd4ebd0
Date: Sun, 14 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781476593
