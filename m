Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA69194094
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738875955; cv=none; b=uMQzYqUWMwZeoapPutpwIZ4ydTTB4guXAE+uPGP/EJ1PdHUSeT+fSqSvrJeIRoN8+tF58c7m9P3njboGJgIywjE15qYgBwnFAt7xmd+8qcyc1AssFqSEs5Ro4G54YGPpVpqjJYEt81evj8GQ2oIz3xmaz5B0Lp+rmDhIGENqCXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738875955; c=relaxed/simple;
	bh=jNro43j3G001zJxrvSbz91qBnlLPzmyKTwP/vvcwJHA=;
	h=To:Subject:From:Message-Id:Date; b=t8feI1dHLRGqirRkDTx1oeKYPQVui1GQQb8PsDUo79RvGvN8B5QAQhvBfGED1TAwiyNEh0eBZKo5/lu5m4kyGyovMlBn8wEGPWR1b+XgMBOer6HFFQ70iLTXg+RPnULYSobDDwmrWIhvwJ1cFPSlTvCv66UwL+EstdazveYZN/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkXv+mEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkXv+mEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ECCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738875953;
	bh=jNro43j3G001zJxrvSbz91qBnlLPzmyKTwP/vvcwJHA=;
	h=To:Subject:From:Date:From;
	b=BkXv+mEeC+2e269U0pKcogpJOwYBJ3UMVU1mL1dVr0GwZVNwAkuCcYjPyxnnhwbvX
	 QNC8yc4hzCcydC+Xk0uK7yAF+Um68PgovY2WJ6rHBNwPN81OpAwvk4j5hdQO+SZ9AA
	 I1yqD82DZ9do76F8XIcZeEq1mlCkb7s8tvUWG2xgI/TqsqFQjgSFSyVE+JBNDLJj+c
	 gOuL2Ro3mRxkKVXKuasdy8bXcooykrUZaxH1IO1ryqgotIofQVgh59vMLHfHvR+WAm
	 766xiap6O9icsWs+zDO+qCPphvsX+J3s8O/MyVvc3crtBn/Iq1GmKLY5eYEX7LMYze
	 rNjgxy0kByZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3224C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887595365.4271.4855203628086432772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82605d3d96342d85b2bf77e7d536ade9d110a61a8ab99deaaa87f203eb9d5bf1
Date: Thu, 06 Feb 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738875953
