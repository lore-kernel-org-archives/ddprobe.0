Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C6236A8B
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760063994; cv=none; b=ZiECkYPh+cZXPfeOwhy4Qxv+8xDcSoNdkW1gTQkKtSN7LhKyM+DnJq2YoIenUNfmAmiZ6pIgwSKbOU5FQLHXi2O4FWjKOJ/hDeKpNCzFDnGfJnCjWihyCZAfrwBfldL1yIX5uoWRD/7A/Mu+6oJsmPRwX0PePPjiICjvlAfI3vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760063994; c=relaxed/simple;
	bh=HMhkm5q/dnu5cKvibWpBec1/w8tBRpmC9GZ/tLBMfNg=;
	h=To:Subject:From:Message-Id:Date; b=K/QsAs9BWcuXtiMYPk2WYhA1cm3IKdCKXMQY5APQkZvgFUlvVa9ffguzYYt72JN3gJNS1fuDGprDwWeFMPtF3C9Yui+5KR81+wy46IbsZe5P9sjzuQ9YbWp2DDdC52UTLJwp7lbysSKbcSqMNEB+AfxbGjT9sczv+TART/6FUWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JknT4WUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JknT4WUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1139C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760063993;
	bh=HMhkm5q/dnu5cKvibWpBec1/w8tBRpmC9GZ/tLBMfNg=;
	h=To:Subject:From:Date:From;
	b=JknT4WUe5ZuH4nPFWSxafnrUS1lqBSFehKSRwjREklb8hWk6EZdjm+QdkpPAdCvJJ
	 0UcegdE6qAg81JFvh0UBpw68nmajUUy9ei+QN/VogT9E+HkqNXKevjBN1yK0Y6Hns3
	 s/YChTdLdCtp/4HycoDHlE1bKI1N+tLNJeLLzzx36DFAZKN58rOJzUGBbsYtyQfdzX
	 AOmusO6iAj3Xf1EVebrxlcno8XXT76ot3ZtoO+GHnQlgKAgHNTLANKfH98v0tJPIjl
	 vRzhWWe1xkj7FAzG30Rp/48jdLX4/cMUE8AgEefaz4I/9lW8usBsHUpGSPp6rtgqK8
	 SOvu6FFt4Yeuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BFCCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006399358.17774.3001747492961763717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778104d51e89687a73b38e27ef5bfc7f2c712df32ee97bbc3e67faae24ed0a95
Date: Fri, 10 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760063993
