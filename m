Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4092B3B19F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766198034; cv=none; b=Lx8HJYPSUGu8RSjil8y1fUYRyeeT9eeTBqQdAaeEnn9AG7dHZSDyM5gcpwNmqmHsk0bHr7XnLmaOff5WuV8WJZVe+v0ecS/7OXK3QH8tFh8XBHp9j0M767nkVEY4rNqGv3uEs3JULUc0Hc/W6fXfqqMQjRraS8yh/xcqifjySuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766198034; c=relaxed/simple;
	bh=TYnfkYnbuAx0Uti2wVNfu4DAdFTz5Os++REDKJ2aQlg=;
	h=To:Subject:From:Message-Id:Date; b=QSNYs1GQ8HrpDFhbkYbJHBnM4x768zNTXYJ5GU5/vCPUjz5PTxfeAmj998q67AYwuyG9RWhxe/aQlNz6MKfGj7s9UxvqWcVGkVqBTYTq52NtCZiDsXfGq9zceKflLhnoF05ieng+pGdMway+CN2y2TxgMZEby4PUR+qq1/MzAxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvoec8/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvoec8/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AB3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766198033;
	bh=TYnfkYnbuAx0Uti2wVNfu4DAdFTz5Os++REDKJ2aQlg=;
	h=To:Subject:From:Date:From;
	b=Vvoec8/RSDPa66gOjCwWpdeV0OAW3ik0nEBJqC32SSPRm3ZKgA3e08mJ9w1qz3ARK
	 AsD34rfvga3UahdC1qKjLMmEyTavoaPc7iKgzr4nqewd3BOMQ7WNVl5klWgjtTZmY2
	 I8YV3QfYToaJY2QJJTo5ngMdEXv5Ekn5JjktMeSxtiKPWnquRcYS6S4KLSKkTq3AX6
	 FPb7j74Bn2OpsZ/EFMf1CaE8hf9lTegCePMjPAg+JHej6Yjp/bXE1ITpZmZW2N+RII
	 5y6D4ZewAfPoD2Tk74lC6L4cZwJAy5otJQCdej7NBmabWGxdDyBRpUVm4t9jbCttMW
	 yvWChgtglmF9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96380E66886
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619803358.13349.9597772447749777620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad447a3cb3f6065b9ebeb86ee3dcbb6741a0a8cc33a854437caa06c49013f832
Date: Sat, 20 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766198033
