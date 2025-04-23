Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410BC182
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745366994; cv=none; b=p+ZlTyaaPk+GcoYEwBRpuDVSjMwiepQ1QBhQV/Tk5m0G3sz1lNHZtCGdGOffC8xtjU7PtSTY84+jU6GE33bmse+sMxjgvpIojXjOyRpF6UzaEaj5o+b9RzYxMjWFbX0toCT/vI5cz3cefH0YOKO+tBrvPhBm3Nf2MvXkfMqEzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745366994; c=relaxed/simple;
	bh=DZGEKYhl4rJwfw8ndRpA+nRJ8vcIRxKD0U6TiXWbR8A=;
	h=To:Subject:From:Message-Id:Date; b=fjOJj+/aFcHcLYw52nH2ywnYBMcuGqf1PfVMPu7VpkF2vQYFBWOni76jiUT5oaWx8sWROYYoUYjiYpzfcwacgW67EwLBGs5p8QTmdcNDcFrQvM1uvi4KPM7tha0M0qPTV/zQ7NLDS4BYU+IfCyuES4tGLMspjRk8JcstGFU3Ebc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9yiRKJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9yiRKJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2252C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745366993;
	bh=DZGEKYhl4rJwfw8ndRpA+nRJ8vcIRxKD0U6TiXWbR8A=;
	h=To:Subject:From:Date:From;
	b=W9yiRKJ2CVsiXfyKMC8JsJRXhf7SS4XW8IXwgk9bQDg8p/0aEsCRK5SaILPi/EKVa
	 U/kJddhODwlZl/8c4W0AxqzWbza+CuAxSRGBSSaM7FG91tBYQz4gKIM+tDxfkAfyeT
	 XYVMTJ+EmVcsOSQc9FtN0wwQJeGVvOYmkgffL5yrkiU5KO/sTfv++uaUvhoVujCA3q
	 6/+6d+GsRQs8i+Vn+XsEOxG00LDSPD5lKlM+JrZAHNnEtiwHgeGad8JnpFPUp4uZML
	 5k8SdoJELqg11spkD3OzjI+5f89xgsW1h2mvC7VuFWoCUo77HaMAJL8/hO+K6Ki7Gl
	 UsDBzEetl11aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E6C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536699357.24650.10693204772779357168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ea59ee12b482c6a897c0d1f661b5aeaeb3764652f5780d53b280870bf34b35
Date: Wed, 23 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745366993
