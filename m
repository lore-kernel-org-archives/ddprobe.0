Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E02C2F5A13
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435394; cv=none; b=Dj6kX5P0A6UzJDdZx2Zx/RgM58zxotIyT+spjSLHGQ/ELzu4WagnVdlPrncosBhQmFpyCmz33Vb0qH0ImIdeQS9k3Zc2stiu+K9Fx9DLbLKAI+qukqUr8zV2v+0uX0TmA8YYVfapTv3CY7+UfqFaeVZWJz41DefGndPNN8FGJQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435394; c=relaxed/simple;
	bh=dGYsfMR6D97Zk2AAlrRzg62Rwiev5hfFaxV884xJ/kc=;
	h=To:Subject:From:Message-Id:Date; b=Mowv9aRN7JyvRbIo7vV3JgQmTc2CANFWowai5rejqrvhCFPXjQAe3+7di6qciF/KpBLE2aIugKP+EXLBTo3xPaz7ZTMgc30tVHNuYCLtPl6un/qGBGqv3NDJQ2S9JuHFt6iTZdOI9QoRPIAy0XVGMJDkQL5pGXWBbpulQkr39rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq9BVomA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq9BVomA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760435393;
	bh=dGYsfMR6D97Zk2AAlrRzg62Rwiev5hfFaxV884xJ/kc=;
	h=To:Subject:From:Date:From;
	b=Eq9BVomA499PNNIb1+OMGUT+YLCwoCJowUOf5d3HNEiXllTleIm/EktP4AWLtCOv/
	 zn1aRN7ih3IC/QFvkcQMxqDdCXEmnRR3C7ONJR5K+rd4PTcQEdZqHRnasHJr2zXkmg
	 2h1xEW3eB4xrjq/bMUpxEwue52z4y7wKWNulweytlrI/Drudl66cJwP7OyWpXbph/g
	 JAnEfNf/IiP5gqjhX7VrO/xiGqQM53DiYayS+pOBNc88KaE3TlWa5BJQUr3GGVVxTD
	 RF53lyOoDc1WxZxEY/iqBwSp5glj+R3YHwl7ryEwZpvSMJrcxJ+o87uJspEbs92SIp
	 OxeXW+FAFGTYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F553CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043539357.2047.5273828040477469730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4e2db5e9d3c880e36bbfa54a29657156b257db20f5ccf624f45d5cb75d8fe3
Date: Tue, 14 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760435393
