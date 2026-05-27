Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C593D7D86
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779906154; cv=none; b=lUB+8//1a0Tc/M9KXLQd3CdUQH6igmSLxefl+4QG879Ym007QPSKtybIK4PyxzMCj+30cvT2X7XIB8KjCeAbINWRiTlmtGcD9PO3L7Ry/D7ZBc/7LnJOqp7/O0mb7qPvgF2hIgdQpyNiSIhAf4w0qKx/02s7zmxuC1cZzhPDCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779906154; c=relaxed/simple;
	bh=x019kFYnHr0F11zk1mguG8LnnZ/TXeRv2vV3sK+6N3U=;
	h=To:Subject:From:Message-Id:Date; b=T+zb9wfwBlvoh6Xl3v5z5u3ITWDOIppe7rYRm80acTqSD390cY0/1/vN3333Z4kkU4jW4MDlteeWc2b1pNiVSAaGhGScoL8zLJYsAR4G8LbLK4RiLM+uz60cizv9Yc9Jo1XpMrVOnR45Ebz5Rcoq6etZ0T/Z9ej9ZkCHhVXsDqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrPUmkRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrPUmkRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB83BC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779906153;
	bh=x019kFYnHr0F11zk1mguG8LnnZ/TXeRv2vV3sK+6N3U=;
	h=To:Subject:From:Date:From;
	b=TrPUmkRhAs2PdVkl4iFKpApjvFy8ijY31zW1mSJm61zcgVIdwZy5rmQ4YSHxbXJZg
	 rm9n1FvW3yw/gqQ7y9v2fitnsDn8LUsGKXEgGjuUtbzQypL6dc7tsO/llkNF+dTh+a
	 LJg8ZAaya5fSgeXqCnGs54F7mp5R/1x4PlizrwbY0LI4bIogb3UVemAXGsQW9kSuiF
	 S6IaSlJ9Ye1YaW5WmafMax85iBPA0WoUTCS9c2POuSDYpXaXJ2k3a5LLOp0RNTMyqs
	 zYEzXIY/mQKSdAOKxxtmMJSu1ydwIAdgIykQLzsftoax+cn2UkMV8Aps/74ZNtayj7
	 G/ojZ9fRtxdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93BCCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990615370.24183.16033831800121407688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e1c387070147ce0be87a8d109614c74e35a2f1517d89d622bc7f5a21ebc7e7
Date: Wed, 27 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779906153
