Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14641221287
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755237594; cv=none; b=L6VBPDagfGtZvzxJCykRiHVTwnFTHom6PrqKg8GZpvPvQL9TTveW75Tdggvw8xEhD9c4bMxlsKalmrvR830tP3APK7Stfl/x/f9jPUJMaOFdxHNWA+jZP/fOQtrnR4EXqF3gYR1w1Otf/2zj8YcycDhQLVnEpie2Mb0VR/rnDEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755237594; c=relaxed/simple;
	bh=YeE7Ye/HGmps9znBeeFCHj9KOk2Gk/CLgX/O9rMS7aI=;
	h=To:Subject:From:Message-Id:Date; b=kUWijTs/7FsCJcE/ezX38LGfJQW+rvoX2f8gL+LoZrirq4BYtaEt3Kw5he22IaOYsNy8AikE6lxCTLjPvm532DLtT/XwbdvguyKkfaU45DhN/4fRG/jzvY24Zq26QbQEW3yXn7034+SKWlAObSO7CnipjbFTxBLNxFD2qQh1tfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuhRMieu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuhRMieu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96744C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755237593;
	bh=YeE7Ye/HGmps9znBeeFCHj9KOk2Gk/CLgX/O9rMS7aI=;
	h=To:Subject:From:Date:From;
	b=QuhRMieuD47Pxor16xoKf02XnqouXHMlV3hJaKDqinS+O8VIcuDXsMwFjUKYr/zOv
	 9jBEnQtFRDKD34wbpSnISUAXDCwbPji/zr4oUYhnBExl3E+KsrbFn77nYCUOmwyDuy
	 pH5GuHXhIZsLJKQ63GLxh0b99DLacCJlUPFR0GjI94W7QaAldxqeqvwzfiGuDDM2+2
	 TkQKejG50Ugt7ciGeqDn2H5UBb8VjIpqyDA2sJVIJOsaDM10zealtpr2fVQq0Dx/z5
	 vwx63eLySRTxIjA2rnSVFWPjyx2Bp7w3v4JV0yL+MPaoy4u7W5WCYhqLnQxAmaoinZ
	 V/4P3QlqtwSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE3FCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523759357.3333.17573568562511367209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d3967f5eae7a14ac91da11c0efb120245b78e2171e2a76334cf2737fc0edab
Date: Fri, 15 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755237593
