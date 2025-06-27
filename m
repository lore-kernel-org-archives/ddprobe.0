Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A0B1DF27D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751003994; cv=none; b=tkl/kMEFKYs9/pqq82Ca67WTfDrmtNJ0yvkyhg9Sz115lTYlagd9DIbDLJD/91lNAWFZFwYHJWOsPGW17uKLLtDtHL9kXQ+vPund7ApSmaEBweNqVlYImpyqAPSTYS/AeMqedBmWSJK72ytrcdI78ETEX+Ucl9pFfS1WH/jITBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751003994; c=relaxed/simple;
	bh=I7icxcwwm2RzKEUehAjsxVr5Ht6ub9RW+Z7XHxGAoGs=;
	h=To:Subject:From:Message-Id:Date; b=Z3ecEnVHeGdv1mW09FS9VKnf4UpN/s0oJAeDUUkSu/Qnq1jguQK7tRrhB54+xAXEldqdD0cpGdglSdv72Y8tVinivsTLjq+Hpc5FChMn9icKZ+5KaS3zHZEWFj3MRP/TjPAIAs4xEBo9OJPx5ulEw1NI2+1wd2tt0zgZlpuvipE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4hRzQeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4hRzQeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D068C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751003993;
	bh=I7icxcwwm2RzKEUehAjsxVr5Ht6ub9RW+Z7XHxGAoGs=;
	h=To:Subject:From:Date:From;
	b=j4hRzQeuLtdU/aeH6t3W3fR/XdxQ1/0zspiSbcOv9zWfY7ZxoP7zlffNnmUEKM3XP
	 K0AkkHIQLNZU0ZVaOIzcKuVcGJRls56si0Jkwvm6J8e2nuGl4oAP8ReW9X3G9LlYcn
	 jUE1LVZe89cKGNZpJPCW4drWM9rDfaqpumC7omO7la3R8shGCXH5H9/5ZYB0VWmhRz
	 M32g3RO5a1XrcqN3/mYGEzUJSjmLDkTwvUwazJNyAWmfHN6i0ne3zyj6ITcGTpcqbZ
	 BXUmhrmfE6FCnHp6w5ujJoFCKl3z7NsqcFr9KlFyU5T8jzmmI34SDnKKgcgvZHvOZ3
	 5ER8D0LCeqfCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39BC7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100399357.18565.8618119849193712624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb9be51cac463400d7b5759ddd044cbf47554020185ecb4c7891f01189dbc27
Date: Fri, 27 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751003993
