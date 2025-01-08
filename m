Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED6820468F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736376954; cv=none; b=n6BL7Vz6e1VJVh5d84YpMvxEZu/SKlZmof+lj6vEI+UHtBDfi2wOTqU7Y75o0p3OpG1D7wV+v2wci9r59CdgW6M3Ldo81lbNp/DIUeZHZeLHpQPk1hWfgDspZAOkr8a638JyeH69ChpZzNisXY/c5HHby1TUdz+1qg5aV+hv3OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736376954; c=relaxed/simple;
	bh=w+tAmOqws/27pVK1Re/yeezwGBjE4JpJ55G8K9lK0PY=;
	h=To:Subject:From:Message-Id:Date; b=MMaMHFmPLTNg23mEg+GDpBvyso3T72wO9BMyvWeNpMcdv5oElV3Z8utgoKE1+aI5A61mfoMakfeMIBlO/72/WWVdVpueKNPyaNSgL1MlwHpGKdMOTq/DMxlD492H54WNfmlXYhmsj2oMgNU0YKn2sggx9tTeBLxSZFTcjPp7ZZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZogWuC3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZogWuC3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0C7C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736376953;
	bh=w+tAmOqws/27pVK1Re/yeezwGBjE4JpJ55G8K9lK0PY=;
	h=To:Subject:From:Date:From;
	b=ZogWuC3uX8zsBrlOcdqFQKkry8fPvaFsuF3LxLZyaG51sI2Z1fH8A83IdjbONCLVp
	 JkibMdqZvZ+6hyC3SZDYYQBKa0mtFyzkPaMgA8zH/b88WGCVeLaqEdyuCcTdjYi7pw
	 EsmJRl7eCyTXPbhela9rWA2hCbfPxS+5rA8lQSKfrWnOzLHMOG6ZtfEnRhA1fR3/Am
	 yGW2qoNh7hUubwlq86o41+K4OVkMp+vM/iZO86sSwDZxbw9FO2CNQlrsiZocBVN/R2
	 Q7vxBlxdz1lPUu41ea3RIJo2NRUi5JmXf/p/NjUIlq6CDO+yX3YM5lhl4gWiJ2bpay
	 mX59r5Oe2x/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D4EE77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637695361.25227.6745333613480510857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f075cd90eb9593f0c0e76161eaf23cdbda66e38faba19bea2693b4feaf09c58b
Date: Wed, 08 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736376953
