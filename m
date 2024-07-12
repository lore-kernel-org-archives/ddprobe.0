Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B96A15E5CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720783703; cv=none; b=jq8htbDUI5rW7m2/F8dV3B0Sf8I2PJVUqyyO268mLESLzYmdcED1VzN263o86gk1LPVPIvkHThc/LTThUB7PwzgWFIAdnPr6OO9e4roo04XvtqkNWLW75Cqk8+IyGXB4IGWMl+iGcTbP8+iiVhUQ1CVMq9h6biiY/XOrcpngBgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720783703; c=relaxed/simple;
	bh=J4VDYSrAImBlCPpzVpkKVcTEoJecvBHzdnLL55xqN0Y=;
	h=To:Subject:From:Message-Id:Date; b=W5dlz3iURwY0HwQ9OxlrnU8xurBNkBFbZgCNHiQZ10rlv7EPachnR9LII60FD9v2pyDZtvSehEr6Tf45Zj6t7s0ViFX+NRZAuXZDpgdCtxT2+tCAtUBlDEDAphfud5L3JQnT3gj8zuphbcHQyR4vDEBDufmBbaTr03Akjq9R1R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCIexExo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCIexExo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0038C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720783702;
	bh=J4VDYSrAImBlCPpzVpkKVcTEoJecvBHzdnLL55xqN0Y=;
	h=To:Subject:From:Date:From;
	b=nCIexExojDm+Qs2pXdG3AwV6UXdunLEEDA7fILwrgOiW/yfpZrBWk73yjury1Hfsr
	 aXZAbfWEuLP16vBfXuOZU5DzBtaYfyKGi74Adj2Y5Qnr0BRs7vic8gvZo64/11OTMD
	 rL20T2inJ+htZa8djzTLtXM2oQ9xfScdl9Cn7PjXdUtcDulF7IiIeQvIR+4T0XDD7J
	 MgK6zN5n9yz/IIaIdmT7d4RXWVy0+xQ2UfR8sHaG9Ibz3HxJ81fGyixwyGfBU8So1G
	 T9Y7Czvf++DOSUd9F3IGkEzNMKn/a+Llkuo5is8dzO1rTK2RXgKSITHZ9EUK6Tf0WW
	 44HjfK9lBSfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A6C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078370277.30157.11041923387923610383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a570c5ccfc869004bd860c5d14b35fb30244e0fcfb9a85ce26dc4e9a65af56f0
Date: Fri, 12 Jul 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720783702
