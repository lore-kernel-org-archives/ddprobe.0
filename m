Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E27170A11
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745606394; cv=none; b=ZypdgYAIP36VxeJ2BMll8PjEEzNtO3HUyV02Knm8DAInyBBz9Df5mEEhJu0QaJznv7YFnC4Vxc2ZehsmtO/n3QyV1kC6x9N/+MdQGBacKPmB3AbUPSHj8A0D2kgSftUqFxRNrjatnEIOHEqZ/a4wIX/EA3LOQpLPBkx69G/9Ldk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745606394; c=relaxed/simple;
	bh=yGgdlVz0/dRmkCXoKuiwqXAg526Dd2r4EUvRRB0Vt2M=;
	h=To:Subject:From:Message-Id:Date; b=jxLy0mGJlMnz8FPZo9/ByNYgsTioAAOJ3GOzUMpUkNpsC37OPezOj5rTMMsxEMfPMnpMYn6dujKzjXtajE0y5phYh6T9KHFndURqcQmDl9O4ByRsq22hCp4rXTkfY++eTZcc7VoIDtMaldm+vCWIzABjQMgSRcKS1dtFLx1zXyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxxAsgdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxxAsgdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F2EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745606393;
	bh=yGgdlVz0/dRmkCXoKuiwqXAg526Dd2r4EUvRRB0Vt2M=;
	h=To:Subject:From:Date:From;
	b=IxxAsgdf6jjflLPrqsU2hNTytx7pRS1YX/KeTCPY3c+jKZcIDLWzlm8aPlYN0ebse
	 +crfpwXEopo7+SkatlsNPFB8HLH6uqItpqTe+5FbdkL+gNz3c4+oLPLc3asoH13XDo
	 6Ixng7P+Pi7+NgdmLrjVG9/hmXeM+Mjt7WRDRSnXN+nAGBFASwjXns9MkzRT8uQxr2
	 h0moIzlQ6I3bZtn8ECH3kWRbRDvgMXDFoXS3eoUy5JhqLyjlhS/IsoABpMg2Djctyr
	 7O4Q244qjEzPZ4M3n20JtB1wJ2FVrDWtI0de/Gc753bxqkzynjzJOEhSghXTxEAYLa
	 weU5TPQHhBsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE0C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560639357.29491.9956511824051510731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e90900a737ca2775db4d5a5bedadac3f219a8fe1cf28c0d6e750d32a5eaa2da
Date: Fri, 25 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745606393
