Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3053726ACB
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750740594; cv=none; b=hfZjoVz43DLptQAmHaJfeEid5dGHKXaRKZ5V47zs691Sv0uEr7QFY21H9TfY+AbBIGnKi/i68k4uk+cjV4pap7ajYD9enl0BFgbBn7WNIYwBwWoOgG+xSp53N4U3QjQQHsdWPN66xzDBfX8v1fP7VWsscMhDz6vdQWR8FCPD9Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750740594; c=relaxed/simple;
	bh=S5gE/yVROpr//ac5HH/5/UR0BXV520NRCFWS7DHgvSw=;
	h=To:Subject:From:Message-Id:Date; b=B0s8Dp92P9JmTiq3FBsfRKiYJsJZUXXUYoLKpFQeUFKu5JYXfkwBwCNgcTFyEoAdNOFG5Cq1fhjwuQW8WDUcMUxEPomhSKPQxVi11HFxtyMZ/UCRo1J27sa3aSQJI2b8Hbwd+Qzy4R5H33nQjNAoa5nY54JRTHg2JJ8a9L2CS5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVhIJmGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVhIJmGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E01EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750740593;
	bh=S5gE/yVROpr//ac5HH/5/UR0BXV520NRCFWS7DHgvSw=;
	h=To:Subject:From:Date:From;
	b=oVhIJmGqv5G0F1gXBfxDDtqiXAIjfhvkAVI/vI+KzO+70+Qd3Ol9cbB0chsZFYS7o
	 C6xLd6xPFmTKwy32C74czggRZPADtywwtS3lQqZr8SzCKzZG0IAVkEWnyoJvmrsJbS
	 g7f5P+2ghFurtAGRCJv0/nnISl5vmZN58WLINiURWBnezOMLU9KQjoQsvP3qTxoAiF
	 Ses32yxELVVNrTXcn9HixNcEPdaWuKhZkDj3B4lqQYZEdQCkQxlhWWjZwZYhPxsGJG
	 +WdFPk76tF7vLXlWtpkmaFPIaCwwh1blD5NpkleB+ZSv8VSZIrcBfGpbTpmsP/Vm4u
	 GLux4JS1yViIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB0C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074059357.22294.1187063132575467821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f33750e41518998fbdd3f2cb1fbed18ba8095c0a701b4ae4a3879a5e5dc64f8
Date: Tue, 24 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750740593
