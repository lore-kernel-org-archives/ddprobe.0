Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318BE625
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786666234; cv=none; b=aM2xwwfLH86ZtX0+IHJ4o1FGJn8Zp+Mf2WTN+eeNBCMrBCOVNut3hrnpN7p3GqHzqVghPWfEjIaMRP7syjDeLGeKH2AHbbKOQWen6uQeDuE1VP5oee88/gZ4WyOQ7dkfW0D3fwR2GaO/PKtYaLkX3EGw/IoEacOroFP4oexQ7Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786666234; c=relaxed/simple;
	bh=xgJBNE6b1kxczjTvrw5PQrsqSyh3nFfBdZvfQWGPDIA=;
	h=To:Subject:From:Message-Id:Date; b=uhLnVFwkvnp0TBEvwkNUNJ/u0vrD7yKUdeRcFd+JcVYSBr32aFEk2Alrg04nRD9CNa9NuJ9bjUQITdqRAUrZJ03Z0SKFe0MPhKLpv1jex1zkhatIjJE+ly1irC3r+RVp1VEtIqVw7/CHPpzROpdWi6ojDRqM2QmsNrnDioN1F1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTd+SvjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTd+SvjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BC8C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786666233;
	bh=xgJBNE6b1kxczjTvrw5PQrsqSyh3nFfBdZvfQWGPDIA=;
	h=To:Subject:From:Date:From;
	b=oTd+SvjI4gn7odq3g8yuGl4JmQwEWqwmj+ZS+1fdDToI2nfGv7KT0nsSZjY2md85X
	 xt4msAMfPXdJGsWIWOSki3sUNQTDjt59MpDEokcmHlamG3SqZyHbR42WMtYjCS/GCP
	 xVXWgS3T1HrVoQiO+2/9mHXYuRUi+uvlCoZZAa/WSnGHpuN5weJnUVpYMxu2R6AM7y
	 8M5Zhk7xqcMIwTeguKZSICKifbnQ1wS23ZC51hYwqmByUWnSO9nxP8+18thvpc0pgi
	 4CDSWL9HUNvyqdaBz/osbF/hCJtghajdLfb/EamPwHcnIIaGprB/tfbJ9Wb16+Rs7q
	 4hROwmE4VUqrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E9C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666623368.630.7417214965483147950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186514ec25b0873572a9688e6c1c160a5ea5afadab0594aba2cfcba763a23ab9
Date: Fri, 14 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786666233
