Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F49213ED7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730303754; cv=none; b=KoSCB9P6BfAU+jhBDbtCN55JGG8rMJgvhLc1mj9n86db6ZQd18oREGACETFvLw16kKJeLpFKW/xYqAOImflpV6E0JXMNKPfPVNaGc76Uhd2ZW8CQ8EqchTPI7bsYRZaNN4ojccScv8Z1VCw4x+f/hbksQiHzdVjBT+N6MvYoNgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730303754; c=relaxed/simple;
	bh=WTEVk2ZyxPpUXVFsTnqybu2AfmClNUA+eEsGs606nP8=;
	h=To:Subject:From:Message-Id:Date; b=C6tqZXiQzUGMZllfZzV03FFILMYJ0zSmxydCvf1wHmc9kONW9IIjhe5O1Bko3YpZW66E0n8vFKShLK5PjG4c/oZ6v5ZSyXU8+rg9sJLdYhHxYisN1FDPZpa89xz3AXsbHV0kyyXsFdw2QlN6vjrdUHNEdtNLF3RmM57D7OmpZnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGy6rFen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGy6rFen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730303753;
	bh=WTEVk2ZyxPpUXVFsTnqybu2AfmClNUA+eEsGs606nP8=;
	h=To:Subject:From:Date:From;
	b=RGy6rFennUMi80StfOa6vH5dAFvRnuf3czO70utHstPe4GKCQmaygGvs+lJDBu+oA
	 NvbIgbitI3n4xQXgXFM8owuun3yMQzLHhtGzYkhOpTqtartoCAFynONmzDEicM+S0t
	 XvPcApfKPQN0yS3NVGNpL07xmRdg/XBEaG0+xZLiBCEbPoS1D0Ew8wGT2cK7E3Ci4h
	 PS1AWToD30dUQSE36+v12qPtPUBXcDk59qm0nfl9BFXZcHxEUIrZm4D+aBifIBfSJq
	 qp9dxvOMSKCb/5aARvmOkaavLIiyRoouq+szHZq1PjwRyF7KY6qCNfN+sA3jPmCkMn
	 vkagO5VyUXOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955AFD5CCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173030375360.15585.15095699230638956697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861f5151be8eed188016dde675a4cb2dd6efca452f5f152db16fb9ce1c6eda82
Date: Wed, 30 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730303753
