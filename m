Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D5199939
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748498394; cv=none; b=kFdz6Y8yxPD+kVihoQQmkUvY6AhN8IzduBrhgY56pAvJtnxN7lw141BYvjLRACtNT5i+dbe/ZRSvD0fGkSneImXiRNedfD85NTfusbpNHG05ANHmRjeepjOri+o25Ug1g2E626RTDqr5QPKCfoAvm52CI8fBMrZQTXROJgLknaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748498394; c=relaxed/simple;
	bh=XRsPU0lAboSlmxmZKwWqGIjQ2BxO1CSydZ+mdAlfIKw=;
	h=To:Subject:From:Message-Id:Date; b=nJhBR3Dxu0O8b8qn8i7tOMkEZI8VHutf8v/8b9AhUEw83w5LpPednDdKo29RxshsTIMmqmdcKg//0sMJ/lzcxXVfVd14O1txRyr7cdfuHZJujCX98Jk/5QivMVtFnLrc+D7t26sQ3vg5hxCsnAZfkLQ5IrOFbxt4nz5duNhl8TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmELswFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmELswFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B75C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748498393;
	bh=XRsPU0lAboSlmxmZKwWqGIjQ2BxO1CSydZ+mdAlfIKw=;
	h=To:Subject:From:Date:From;
	b=PmELswFcISV4TcB/PIJOcbw0/2zRF72xQiCjnf/B7g/IUWla5iQGEYipILfEf8SJs
	 AsplHHOo7m0iYAOIEo9lY5LoHqwPXidjMNivRI4ny/HXsaIT8fBlNg0WVAxFUX+Ljp
	 i5gVidGIBafQM09WRd3yANVrFoyCDjt7JSbeUsQsQKJVVdqqDnLt+qjBRb31jfE8fV
	 XWc3v5V8ahKc7C+5tSHoFlA+McQI5hKCHWUCTZxhcXniSGI26bJpW+niRM5hreVxzF
	 Aml0VAGni5LSHQV7o9w1iBANak0KAp2onpM/A9f8pAiSPC9cqg3+RtdJl3CMDISSZr
	 Dy2djLWMO0tKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E00C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849839357.5395.4996134759700194106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f66937d1e1b78eaabdfd2a1a5846aed2e87228ec1921416c49879e58e16f7a
Date: Thu, 29 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748498393
