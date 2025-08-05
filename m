Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130C829CE6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754412594; cv=none; b=JHH14PFY/AhbHXcVoy3s0BclG1FM5IH4Xzsgfn6fannCoJNlaKOLN7as/iskXq1Cfebf7ZBcPWDhZMhbmKruMt4z8+vmmWUhqCKVH643N2xFREryBF+VMAUaKS5oLlbaumPbv7JPbiYA6+UiseCa2dsFIyvAgIN/XDtEpLcMH6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754412594; c=relaxed/simple;
	bh=bd/Itewwpo7JuJVqsWTqWFZJ/PIOqeCwOIq2MOSEj3A=;
	h=To:Subject:From:Message-Id:Date; b=bhY3Qi1uFXqrkGuS/h9WbtU95ApYReS+ppvJ6W2V2+G2T7aVcUbwMDoMRTXdxiTjn9zJs1G7n9MTTen6y8/Mviw+n+II8vfriO8tOJtj7AHAIPvZJiXZimThMmPjUSZvB5Qbgt2PG/hQD4l4GO7Kf4g2Bc5PpNqx5NNBBLWXscU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP0L+XrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP0L+XrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2557C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754412593;
	bh=bd/Itewwpo7JuJVqsWTqWFZJ/PIOqeCwOIq2MOSEj3A=;
	h=To:Subject:From:Date:From;
	b=XP0L+XrQlVaBpqVQZ+4PVqJIM8AkhJoEfFvQBueRCC5L/2vq9F8uqskUxUyyjaveF
	 o84rNNN1iBjVlCoqx+FPdO+H2qERTNf+R3j/5Y0H0o1GnwEaQeFAR8NvedJXeHRewm
	 I3w25BaqZ7a0pLKDcQ4viMuTmFfxy93bgZhJmLHnI4jkjcq6atqvWW0AJl1xvIKBJf
	 dGrrk3HCWobS9uclk+3e7j7vdMv3rrLPtSR8wb3HmU+feoQ5+X7Mwq4qP1n4J9XOjq
	 F54SHlzVFohCmqX9Hbf4683cfmdY67SbBoqdtBaaNo6Rwm+cYVRdkqCgMAfdHH6adK
	 A9Wj5lbRGFj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41FC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441259357.18230.2614258786941023630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5600845e77e6fbbcb013b9ddba02cba5c216a5afb873eaff57bd4e905cd2474
Date: Tue, 05 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754412593
