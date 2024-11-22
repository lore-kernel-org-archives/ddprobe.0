Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9D17C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732233954; cv=none; b=oUwDMlHxOSrGcD4A5nUfES2GoY95USp58j080a49Hy9S8ALNzKxu7DsIJvGLEXze5BnRMguPbetN/H0wLhHoVrLZCyIudPQmK+tVbml0Tid8AzScmNVXLvix3cLLc9w/xq544bBjJTulidJfhBpnHrezKdlq8W6/IjR7PSyNROM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732233954; c=relaxed/simple;
	bh=sTkICctfCg9RyErBmfgFHt5U/vUd3D5/bYbpXfd3wBo=;
	h=To:Subject:From:Message-Id:Date; b=PxFe3IttXahjQXmIn+GUb6rnCgQkyUCLoEarlQgcgb5ZL9WbqwAFY+JNp1s0o1oxcuk/8Nzv1G9PqjqXJIKxjfUg0+rPWZr8+YyHJtrPRKLZscLiK7+ilaOILzwV6sZ4edKH3pNEDOAd+akoYhbgqDyxbHg+qQ5ZKowKaDGAq50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVKs3o83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVKs3o83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38BEC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732233953;
	bh=sTkICctfCg9RyErBmfgFHt5U/vUd3D5/bYbpXfd3wBo=;
	h=To:Subject:From:Date:From;
	b=aVKs3o83uKViW4GMKJsRAboJRNt1jP6WMnJGOWyWJdXGCRifFLi6rr7lgr8KFl6GN
	 f9AMZIlB4nAMybfnto430mV1y7uvA+nk8vlzlkyu7cHDefzP1yvx4sCjOL9j+GJnXh
	 piwJ3/6Wih26A2oI/OcruN9U8pCm5VH7n45KNEEq96UXK0zs9Nk9L7Rd+txjibDEYm
	 vIk5cV3jXn3Prr2FGYoGwbZjn5Qs26jLTyrS8s7/385boCivSN9W6ahMJRFIXf50F9
	 2Bd7ztRjrK3/2j4nPTY6uEZHfw+tgk8lTcjJn6Jt6DyKxty5vt7GhhFeUJC9jIUfjq
	 a79ZJTRRcysDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C701E65D0B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223395363.17438.15560158258108717082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f52092d35fecc4eab6ed16e6b139bddefc9d6bf920b97fd585c92425f6efe23
Date: Fri, 22 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732233953
