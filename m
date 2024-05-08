Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F85481AC1
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715166143; cv=none; b=X5E/49Rj2jbjMNCd4UAZ6foRV9wjCZi4jhiz95TAov083hTTrNhnolAAp/fPNzryS/n+DBYimhuJ/obBTI1jSwhfyxwCNVuBOjBdm+HZf5EA9zoeI+kjY/D9zFJaX4ut6fdoYnPZKgZODGCf+YwuPmXVGPrklIASajcuH/eW0Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715166143; c=relaxed/simple;
	bh=wDlbonlqFYvA8VSQERcH+XgpAGi4O4gHdM1jJUrvJ5E=;
	h=To:Subject:From:Message-Id:Date; b=BfuH79B68MSQKUCsQeJiVykC10DnKS1x950X6dOVuRUK+x818+2hemZZ0FhgPvw/W1wn/vf7MREIuEimPj69wEbXMFo5ZQTRx+QdTuIapkQEBcyBBQag9TKW56rkoHxpYN2pumfKyqglJGbZP2oWwsVkVQKqFIKfylGLGM9yS7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGuZr/D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGuZr/D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D419EC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715166142;
	bh=wDlbonlqFYvA8VSQERcH+XgpAGi4O4gHdM1jJUrvJ5E=;
	h=To:Subject:From:Date:From;
	b=qGuZr/D+F9Fc6/C7/yPCrF61K43eADUW3X9950Ise7gCX4xRMFH1GDAe+iEuSsqxa
	 Rl1UL5gOBZBXgBN1GgbLMk1EK1SP1ewDGKwC6QrUlRj+/RPR+fmrLfR93/j1HjYpEU
	 tnrztX+Lxzb1AtpfkeGlInLbSzkH7hN0Z67nNe5ClFEomb+1nUlhEFtaqeYCfEfR8X
	 rgtp1NiPkz3UKu3FMdWlLNtvA1KcdfJBXQlROOv5alcUAGbIXPCv7uYsAXZG715yJC
	 vifznPDQf+qCAvvFCMjxcgapj9DK/0CE1Eo2Q44zvcCg4zggLAzVBs8r0Dv/6ExGH9
	 y9jWC2289+agg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD711C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516614276.6897.4147601928510967816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c9e529fbf903d9697118bab5165ea313a88db16926e2942ea0d39d94a2bbd1
Date: Wed, 08 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715166142
