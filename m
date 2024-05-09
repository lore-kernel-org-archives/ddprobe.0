Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B01512FF9B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715267543; cv=none; b=fgCW0oEiWTbrKfU9alcNf5pponhhnFqs/Zs/eT9IuTuPfDUWU5yNWevgOVbZv8cy9WZDAPtssE8OQEPL0Tlbpq+WC1mKpyXG+iQmLpAtQB6kDRCdPp0KPBPeqAY6tVwRs6oFJw8uVRT6Hk0w6a7AbYRxtddmiPs48tztRRXvqlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715267543; c=relaxed/simple;
	bh=+fj/9ZZwkV77NZz1m9LvVJ9ZLnZbCaqpml4tPcOEDKs=;
	h=To:Subject:From:Message-Id:Date; b=qXU8SC0594z7LGtU5aOotdPE52u+3z+3J8jkGASrzp1EXxjzGYnU/2VKuQB/XG6355XVE/TnBXE03enc+rJIpbRIjPlOusSYJcQzOxlOzryPHhxFSSiN4FQjR30NDitpu196ba0utCMj6wYFMB1Y4kG273iKsoiPGEFSvIv5b+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smO6mwYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smO6mwYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA76C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715267542;
	bh=+fj/9ZZwkV77NZz1m9LvVJ9ZLnZbCaqpml4tPcOEDKs=;
	h=To:Subject:From:Date:From;
	b=smO6mwYLCvzm4MTB2B+ehNGydcalMGql9bDTJ8wPIFOkd37BBRWDHG6q/K/PEHwyQ
	 MNDg2Gt8lWSHEL4ITMmF7mPo/19PdEhGaiEQGGkIOyG1d5wsUUakN+iddQzgb+I1gW
	 aXOZMKXbcVGvZZhZhm7kX/uEh2FdL6Oli+P3ciLq0cJhel104i03jqv4h6GMYx0S7Q
	 /GNt47xttZNZylqmWhXYGDXjEQt4Bmx/o/78P93d/M9wtKdEhBUTjHy3wsqBic/PdL
	 hlAMTCvUY7VKKx9Qqmb5Vrrx85EShsN563mcwju0B1ITaYg35ruETTXIgyC2fsXEsQ
	 CMaRKNNdF6Cmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75FAC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526754280.26816.13758635241800088234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a90eafdeeeda3b03da8169455f2c4474fe8313fbb429ae1751727714033b61b
Date: Thu, 09 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715267542
