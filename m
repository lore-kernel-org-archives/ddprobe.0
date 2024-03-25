Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036A7129E6F
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711346297; cv=none; b=FbisZKrRqFl1eIj9r/K8svihar65u58z7E6NEYw9FXxXjRgJzGIx5J45ulkhAYrh191kGQ7Qz/pRqwsMn/N3wwiFm3Z3j5qwa8kbIuoHm+Bx5/Zo5tqrqQdjdelK78KcYT6O/lBpNQZnGB3EodUfN/iP8JY+lblulRjHMWFVJr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711346297; c=relaxed/simple;
	bh=B//LI1oR9QTHL+tngfFQeDEOLt3R4SpzwYbUw3fmXFg=;
	h=To:Subject:From:Message-Id:Date; b=q/1F2cgC2FrUDmmScehUYJbYY+9hxJ05+esgLs6KV7BOO3WcOEGyLt/88Pz0W+tQyyf140WaV+a54pBvircuyJgJ8TNwGF54vCApQ8qI+aW9fH4FcgujVQDvri5sqvXqPOWuKDR6B6Yxkj2/kl82C8Wc2olwZA3zcuJMTSw6rd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZjFYCPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZjFYCPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4A1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711346296;
	bh=B//LI1oR9QTHL+tngfFQeDEOLt3R4SpzwYbUw3fmXFg=;
	h=To:Subject:From:Date:From;
	b=ZZjFYCPsf6ET65kIqJZh/WoLvVpeCo5SDMi9UwCiofQqdCNBsG8XNP7a4f/4JdH94
	 qElKJsL8TSqzgfKgS1JkIxjE7/RMfV0l/nx2SgaLIQbeAiqeweDJsDwISk6H/Xiz+z
	 3J+nZH/wCxtOrvaaxBPTlTykMRaDVZFoKJjfU6zLgqXNfkDhhGrYXnHjOH0NyMkOks
	 DgDhZXnnQECcMfAoBDxrnkhvdUMbKJDZGyf9Sd8yKA4icEaldI9FzXTWiPNJmt+Gbi
	 t9ZjQa5PG+w1I8JfhzoXGZSMuhn+B+VkXpm1qZDnFhLDlkdjuvtZtXXWx8fokkEJcS
	 vPzsR3rxChTKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A5EC54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134629639.9669.2729078354540202827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20e6fd16e99bcc4baf4cd31c4bccf4d9bb26cfeb5b179c24bcf3db1f63bdc36
Date: Mon, 25 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711346296
