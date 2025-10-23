Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27091225403
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761214194; cv=none; b=CEAUk6XoR8HBRCBnzHesLAV/gt5kdGh/jNePdqhtroyicNCg+DwRu4S+eGV6ySO7jbYXaBQpx0B7fhZ4AVqqsgYJHnG+gZYaM7vh4wv4iW6CiNGfIdoXcNNJwVs3hv34xvstDGv2zLBI733Ca0Koy1x8GkJHvp9xJV3me5E7ReA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761214194; c=relaxed/simple;
	bh=9USnvzYax3oXP9Nio3C0VHIU6bsnXMmPD3EuFM/MQxw=;
	h=To:Subject:From:Message-Id:Date; b=QBun6kmE8Ld4Nxj/qvgHEpEaFp2uEsVK39zWcjY5TvNEyd8g9VLhNZrZdKyxXPSGKIAqmWZ+aXEsJV+7Bt2dHeVc52IOJHSbLyd2mUa/CS5pBHgQH8fADSNw1sb6kv5UmYNpW/SC6ndpOYkZKI7iE3sdvTv1R3W+2IPys9onpOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn+eQkXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn+eQkXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761214193;
	bh=9USnvzYax3oXP9Nio3C0VHIU6bsnXMmPD3EuFM/MQxw=;
	h=To:Subject:From:Date:From;
	b=Vn+eQkXba/oVs3JyNg5iJnSgICGqjI4b/A+UMhhT3uLa+l14hyiaElZ65N2a/NQtN
	 C7Ab/jKWHDbE4ninuLlnACCDV9BPs0xM+bXEcgslEDmkr+sFZ5D5HwTntthol6QIne
	 GDNUopcaqJtz8p92fcEL7SBDL5Bw7uqFWuBYIOiZvu3m/FuBKu/VMuJyiU9/Ze/h1X
	 8mLSFJiEt/rdbm/G6kKhudWZUBYDl8l6gat1MU0LLXlGB+BC1Q8ga89LH6UfpG7HKF
	 s/nxhThlwdJ/7cld6N7uMvNPSmkUESIcd2RqkvC/ZvGcM/fvdfnXoFYKAqKKD/pCG8
	 PxCfdoO1x3FUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19ECCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121419357.17852.14559165999613422296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7edd301863b7e671d987467b95425138e02858e6eceb32fc2a208e2ed76690e
Date: Thu, 23 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761214193
