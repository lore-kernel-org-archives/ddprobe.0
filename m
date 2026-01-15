Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B830318EE3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768505634; cv=none; b=saEImidJPtTx8RdHiLJcNYFbcwjqEO6Gl1y5yTu/VX275p6V0iR58DLkYvQ798bOzZ39WQ/JzMGXjQ2/dc57wOevr/Jbvp7LLOsoz0B115yiQyq7UgFV8LzROzhkRiI22BreLLm/4d+G5jsNTqFrnSUDQetrWsYHBdzKIOrrTbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768505634; c=relaxed/simple;
	bh=kjnn+ibPSzTl7a/uoYxYlqQcpheY+OGXwDWrozPtTTU=;
	h=To:Subject:From:Message-Id:Date; b=Ty5xaNqoEhX1CgI7F1d4UTmUsixo46CEW/wmjI4zKWXx35POjZlu9tTzxF9jtfZ0rz6HHwt7458mOsRXaFjToF+e2L4lIu0Eo9BBB6BxMq1l7Ev7l3gwFJCKRx0jI85x4SqUR3PWbcwxG3ZXwiGWQxd7HeFdiqEcBNSHWlVkrMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoHlPGBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoHlPGBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC6C19422
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768505633;
	bh=kjnn+ibPSzTl7a/uoYxYlqQcpheY+OGXwDWrozPtTTU=;
	h=To:Subject:From:Date:From;
	b=PoHlPGBROg8ge7jf5RqyuRz0ihfghhPcTd6pKnjjunkv3Y3qONfa8Vn8siOnQr6MZ
	 W1s+aU6C3+giK0v2lOvex4fBozb9czBRi70V8Y8ve9OtLhuLi8U1YsOsiamqIxVOvD
	 pjg/Z899BB4jI8p6MnD32LP7T9sInmGJs+5Tk2wDitNKFJTMYO6wB9ntQd04IO800s
	 cjM2VAjogkN5UPnXM04GNu7aPn6xfPk8oPe8OyoQPrqKp6aVcCMMJZoI+iJUUXwsmC
	 N+wnkIeig4FI9ffLbuXcy3vPMUGAmON+/zmY0D0VJdzL2Y8jB9DqAIIz9KVF4hL45l
	 jqQlCykLi6HFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F203D4661C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850563357.460.16501399477313535114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbd06475ab5724ae9f1f11155d0c1bcb546562cf2065e0548c93478a3707a78
Date: Thu, 15 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768505633
