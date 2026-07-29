Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E940408018
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785317434; cv=none; b=sp+B7E6/mpD5YOQBIa+xs4qTmjtwdDj3NWauk5EI9jR9jSeqpR0PllhVI5IQ5KbNc5iuwJ9q+TZZzxrLSzt16pyxqUgIfY8o/F/ht1s8OUy13lW4KiowHKypyWzr4X3oSASP3hloco7HbO4quQKALghIzcC6jNLr5YadRwW9Veo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785317434; c=relaxed/simple;
	bh=jq2qD7f/N2SuiXxXtvtsNgTNDYXyU9omT++TacsJBw0=;
	h=To:Subject:From:Message-Id:Date; b=mNRRQk4IkDmpxij3B1cDuV0BWFiCY+5tmE5h9/ioFVFcYnWnqgp/3dw9R2JQXaSjN8Ww4rsuEK/vGkTuogOnUVrweADi4xBVN7DCDzwso3H2yJAo5QD448GVvZBXlEa1hhFDuez042zv56dAAe7V/RdG6yh6AaNJaWu+R7Xjrbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF/OGsOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF/OGsOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AFBC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785317433;
	bh=jq2qD7f/N2SuiXxXtvtsNgTNDYXyU9omT++TacsJBw0=;
	h=To:Subject:From:Date:From;
	b=sF/OGsOCZZtDGzMMfLFPzujkpxLjcVE4CNO4ufcUkF5QlSiTVshgl5e0cUBw53DMA
	 OQlPPZ2n042cnyGKJtxmxIcpQQZ4pJOrvwm1QtfNYRV87uTD1vBeIf2VDNT6w+CJ01
	 0GJS12/XLMcxCVWyH8Ysq8S1DxorDn+jIQ3sewk5t3wZ0UPvO2VDXcgQu1lft0KvYk
	 2SZj6yxZ76FiaRq2DMZseVOk6rI31pCf4sqiN7BFqFA+B115vWaj3RfQtDJAgn4oat
	 0g/cREn5jPc64JR/o48x9VRREwq+40s/Cck3O0Ch8dwxf7ihtTowEe+JlSTnHSt+mM
	 OKMj5l+nI6leQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88A2C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531743368.12485.13677782298867760489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8792bced019ea29f3bf122b2a66ca62a2793af63a8265f4343654274b4753a7c
Date: Wed, 29 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785317433
