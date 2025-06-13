Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208633595A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749849594; cv=none; b=feSzdUYQnMDsEeE2SDOySqxA+eK2xlAKSMHbqn7W2JLCHkmWFg9XmfXoI8mXSZM+HmyC1j5KjoftCtCmogV4YLpMQWIAlP9vNYNSXT0ZtAL6WSq0rldcxXkV3OB7lU1IgbGyxTJMMLUHe/yTy+Rk4OTtGeDbATXlXHx0WG/gFos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749849594; c=relaxed/simple;
	bh=4aVAET26lGz8QwZIvyvc38Qh/F1uCqwG3yrflwDO4zE=;
	h=To:Subject:From:Message-Id:Date; b=WJpQr9hq56v8AXsu1dbHF40txuVuFP2YxHodaPtK3gfxdzSQbqXFToWcniPs3bO2iBMbVrNNt3X1eylZPxXy1O+3NFdWzEY5k5cRZ4aajWdO5oCvF/WIa3VfaY4eUC84gUSdWfGDn7hCGInM+4+PsxoucRrTF7SUe914O0NBmwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7vx0lzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7vx0lzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD6FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749849593;
	bh=4aVAET26lGz8QwZIvyvc38Qh/F1uCqwG3yrflwDO4zE=;
	h=To:Subject:From:Date:From;
	b=K7vx0lzp/MxiKwFK5PBtHf0BloxzY+NoZG98ksC0NRbmVTs8PFjHoeZ0EA19Gez+S
	 xQC5qeexOAbiRLxqpd9USM33eS7eaAqG7G71RaPtIzAoHdT19MMU62OYWU3onZjS3Y
	 Pw7M6oVEnrIjhgR1fEVhxfCURZPieIiIskvsO8oXgpVql6T/+gYkmDxBbOEieZvFhq
	 5647AQ6xs2EhJV0f6VkCbCDkFlzGdyYzvhoy2Nnk1Uo//brrX50jpkkLit4aO6pblw
	 AC8leLaYnFrFjC1C0tUW5pxFOPdCbgz19S2drUgnEQtdtRCCuaBsorfRQM22Xyxb6z
	 fkefjpIhfyPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F179C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984959357.31784.1120650773017761939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4d253df82f4cd80727537da7945cddca6b6ce050ecab7a284ee4dae9ae617c
Date: Fri, 13 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749849593
