Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A95253359
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771527294; cv=none; b=eaVOyH/Xeru9Bly4FSNoPnpwaOK9uzL5E7dVv1Y6lHr4UFaHA7YNy9ZtSEC7BgBvxDtG5Eu2k3YV+t4hqAxRPpFl1arTVaoeOYl3AKNVhn03uj5FOOcw7nbk5iJpJNalnxIqLS8haoR2a+Qf5ESSIZbxYHNNykYKSCXwNySvbg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771527294; c=relaxed/simple;
	bh=X7Lv8RSgcfCWM0ezOqHuQMuQcl9DCozul8KC1v0ZOGc=;
	h=To:Subject:From:Message-Id:Date; b=MBA9M3fYOAm1qbf1HiRZeUrQnKFA/tEQ8CRJydPRIBmhwP9vBYCChCVyO6prkgq4BTpKIgKCnCReFWPFXAxFN5hl97k5N/YAp9H+EVBLYCKPTTF/RZjpcLA/+LwHZ9Cg5//nYzVfsX/Zs3Tb2TCnrhwyzQMoG0PFysksibFTB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4T+4Z7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4T+4Z7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CE5C2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771527293;
	bh=X7Lv8RSgcfCWM0ezOqHuQMuQcl9DCozul8KC1v0ZOGc=;
	h=To:Subject:From:Date:From;
	b=J4T+4Z7UOY+sovXR2SJ8XdKfbStCOR6BXa31nynv8C5qzy3PHNhfmkChJAN+1GXWE
	 EVwtpom7At6e1ujNQpKwPD98bfYlW9N7h35j3AUlljt72uh8tb8nfoHhkbWyWOo9Lw
	 kRS8ZAwFq/JMljngcQt3Z+JnXheuQv6Ty/pK3A9eTFH0tKB+iA9pdZjBtK7/HSLR1F
	 ZFjZIIYtyOxEdvSYePf+WebNd7vtQKh35Vrg6YFL+ain3WC+vYBPSBEBMhNnbOcbhj
	 ofOLfodk0QqniNQnvfmFU9w7YWjkeswR+H5oIlNopoUFm+vky95M08ZKB8vNhv25lR
	 jH+zADK63Ji+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98206E9A05C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152729361.20804.11817969842240340134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391b621a6a848ca4a0b2224c740e552d86299efb2da8b0239319ec2168a9e78c
Date: Thu, 19 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771527293
