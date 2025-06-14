Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261992E11B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749879594; cv=none; b=MgskVYlHAWLV3aLX9igPx0KjoyDl5yZ9jAuBFk56yyVX6VxJEbMyRCIq44VZUJHoWQezvEGLuGSiywEQvNK4b3cidCQTCRu26lqlR6j7LZ8xefODCfmoX6RYemAXctCgUNMB2oX6qB/JBIJ+jIQJBMQ18MjyXr8DwmeYlhO0pdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749879594; c=relaxed/simple;
	bh=l5x/SEIMmUiNuSNCMSKv2302+pBiORQL448a/Z+ijaE=;
	h=To:Subject:From:Message-Id:Date; b=KsiakYHZ5HEBXYquNYlUK3tnNF8qy+NFSYuaOHj7i50cm6/UOwA0oxNtBak3As2CX4UUtGVBPdeOh4u4wR+SgI8VIT/+VrqP9TGkjUHvMxnRPykIScFqWzsvIZb8fps1ZrDfB8E4nQP5VHh26zAqzrNJlpTigM40jZ3iUuZQ30w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzKQPqef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzKQPqef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5461C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749879593;
	bh=l5x/SEIMmUiNuSNCMSKv2302+pBiORQL448a/Z+ijaE=;
	h=To:Subject:From:Date:From;
	b=TzKQPqefogHWAof5rRZfoIp1LupNvOD2KsmegCFM7uK6Zh06bs57nqHC1jERwL7KX
	 bE06dHuGpK0eCsYe9xQ+686juOPQciEhCpIJgh1ft7RNY4n6Mxj3t6ORSR7qCkS9rk
	 MqKypLzFZB4XhmEvxTC3Y+R+i+t2nLI91gCYnuhF/dZKNxiPM216v13MIhRGszFjau
	 9WH7OdfpknpIk1nQ7anbaAH84LHQSm8LTt7ZAnfY/lBnr7+w40+XuTHb/yyRhgmjc7
	 /eE/FZ+yUA91HBLZHlX7HBVjk+kIB0iMpq+Oc3OHxvBf3OAN4g++kCa0iFloH9KOWF
	 sCer1vQEIuOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB8C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987959357.9131.11293941329830540059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f630f5311f8b08b05719fcc7622084a13c26f1b7c4137f3162fc872868f6ac3f
Date: Sat, 14 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749879593
