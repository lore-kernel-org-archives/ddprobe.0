Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD071272D4
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708550297; cv=none; b=XEEIH93Rr48iuvBuJkWqlnM55hLiaZWay8e9+mTavveVJwUwJ2fLEibRjXCoXeGxKz7avjU1okSoS8daQcviy0b04+FdrUFO1P0425cYQOA22YHPnQoY638SbdngfOXrp0HEQ/4qcIhZRQlg1Lp+PIyN9Pk1azcysvp2CXnF8J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708550297; c=relaxed/simple;
	bh=ZtgK34R4uf7kEo7eAZyGvlFE+qgrCUjcRtTN4283wnI=;
	h=To:Subject:From:Message-Id:Date; b=d0hRlGrPe84URqocoFBmV7/IMWZph4iusZiOMtb68u/0Ap+6HZGpiWlsowdcuRrrxVIlJqn1r7lg4XAq30gtdYI671xQjCxWkqeu6xuigE1c1SwyRCpEITbho0KQLhVEmdtL/8lPMYiV4M8HvUSaF0fwo0HleqWuaN1/Z79So1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpDoMIgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpDoMIgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E097C43394
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708550296;
	bh=ZtgK34R4uf7kEo7eAZyGvlFE+qgrCUjcRtTN4283wnI=;
	h=To:Subject:From:Date:From;
	b=qpDoMIgsTjXttAC7GUaAdda8nFovGTBHW5sxWJWkAJVL2CRur2RU9ckwNv7rOWHxs
	 Spxam4AT+AFQcKvNUqHLYrSJMM4VZhabC3dBP1sDSBkn7oGZp55crP3w1Os9pU/b/D
	 ungQTL1POEK9/3uCBmRb9qLLJht9aXdWoMSoRicbXAn9w8nsIN+yCUT8NZtLUWn1U3
	 FQo7K4vZmj9EGs0QRHvN700XK0RNCR0tXJx5N21vNVN34FqX8zPBzyUTqt8cg95M+H
	 4ejUFZ0MTUCpbjKnYT+XOnfi1BqcCNuETjQa9aV8VONYeIipZynDAgwLAoLklTzmn4
	 4x7HHswN/dsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F35C5478A
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170855029640.7957.4111109603236771964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc45ba67891c5b71cce2340ee06408962ee162cc3f129822dac5b46a7e4c0b9
Date: Wed, 21 Feb 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708550296
