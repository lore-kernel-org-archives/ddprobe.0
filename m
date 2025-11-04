Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F26B21ABD0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257594; cv=none; b=FHS8vxID13XRb14PBbfv4TRU+LMH3/KLRIxdaC81WxMKqAAi987ehghZXNcsQpgXioO7GHG8gneuWyQmkJVfWxRuC+T2XxwD+wXcCJsEgnI0ncgUXEXwsygqlHtKkr9CIdf2OiCdQ4tIWJlCU6fPJNcuvsh/BvjUATvW326338E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257594; c=relaxed/simple;
	bh=BH7swclLOVkqBzDk4DLkM55kLuIT5KlWYHQ8khBaxbo=;
	h=To:Subject:From:Message-Id:Date; b=lhERpVAVVQFAUmDRZOA5OCiq7pGQLz2n31YaeEfQQLCn/L6PGal0lUPdgJMymhVWf9PTcXRQw9RYdnmaI9TgtWVlJdTcNlwCSETgfyxNjd8KriYlJeJfJqsVXEUCj51KbExo9E9ySfJSc4ELlvc12z3JZaWYbdzNPsNtJ0/ci0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty3+z40a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty3+z40a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3203C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762257593;
	bh=BH7swclLOVkqBzDk4DLkM55kLuIT5KlWYHQ8khBaxbo=;
	h=To:Subject:From:Date:From;
	b=Ty3+z40a7M9GH+kn9jek7omf9iyIpfq+CWPKnlqZ8byksbgifjTucSVIp4AGT0+jJ
	 +m97kX1jzcOSktfbtrE1z6s65134pMacZLKycJ9KBldfSMIVtpFch/CCUbXU+NyKg8
	 Ca5mNd9aekbcGuac0RPjQglE/9wd3dI+3hnAepyVrKB2zg3ri5Q7WqZGHSLSjIt+sZ
	 olLdR+MpVm9bfZ+sPtdYDsUkm+WoG7L2zgNwJniX6kgGEqyL/ZhqqbqgjdWC8pe0dI
	 yw+qU0ugXHPHLQ9j3W9ifb6qgmi3NowzWdBZvHiyDD51EkZNg8cpsYH3WdDzhzyzKY
	 LZMCPpikY+pFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E00CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225759358.13752.1869319181073438140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe065a97928ad65005d57fc6c78e70a6c64948edd2760c33337dba0f4d419f2
Date: Tue, 04 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762257593
