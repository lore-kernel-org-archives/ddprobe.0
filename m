Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7384A53
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716529403; cv=none; b=lmLzJkKoEjpUUQklLef0hyzlnEfpeu01MSL4UZeX+VDYlulh3ttv6vqwHceZGUQry7BgHbT9Qig3hnQvaQia/y/lUS4+xNtaYRnkztY3pk5PEP3Yxe0moG285eXLyYpPOAM7l4LUqDFxPmrnK3uUJYmhsdXgF5wCQ/ClqwOzVUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716529403; c=relaxed/simple;
	bh=yxRTWMeD32j3YoZ4UUYEF2fFdkUo1GZLJ5tUZFIKVgg=;
	h=To:Subject:From:Message-Id:Date; b=CHKxdwH066VBzKfrYZURMHFEGse4pqJ54ZRViPwWFuVY3e82VKIQEw08XAkaRjPSd/kHj5T+K+cPMl7GBYlKoU5YuKRxOe6Y3Ab+JdmuQlM0tq16QRBQxL9NVW6+uwqVQMlnikyQ5Mcm4t4RiqfNIHnWNXFUmgpXnhIYsQMrjvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQB1Sf2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQB1Sf2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63FDC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716529402;
	bh=yxRTWMeD32j3YoZ4UUYEF2fFdkUo1GZLJ5tUZFIKVgg=;
	h=To:Subject:From:Date:From;
	b=CQB1Sf2VnoOWl79phFLXIG629VY4IuTiKneusmlRgv9XA8hkx3nFw9Xa0CS6xU/yM
	 6RM0fR2tw0yRqgYetpw5XmE1tbtOdsG6/cM4itXplmNOi7T7oVRhTwLztIGuWNOPJR
	 s3XLBhB6zfbxzXyWKCLlQAUvMlT7bhzphp57SNSjlQcDdYqqXGiAhLauT30UJd4xfX
	 6W8Im53ziVVGYi7sXUuwSfbWh+AMIMLLJwfRT3cAea9pbKKoOdtZXT2qwTNOxIQk+t
	 zN51utTSF1F8j6zviwJuEsI7UZvNlM2qUEyBBm9huXhA/geoB31ahSnB0sF7uDcQ21
	 jSGD3Skkcf1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C434BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 05:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652940276.17388.1507677247356762063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf977d2016be83d5da28b4896788a78a75fba740f4e071c6526f3aed85d3e51
Date: Fri, 24 May 2024 05:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716529402
