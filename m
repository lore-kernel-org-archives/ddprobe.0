Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02F934D4C0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763733714; cv=none; b=mSSXRcjdO+xNytZ1Z13dBbPYFNhRBic5yP8kH3qY+jBwfCNaqEXc/iVBmeD24WY3gQwTSDH+7Y4sz7KyEmSxErmZZgsUFSY671EBNEc61qo+gyNpzq7IjBWXLHhssgsMFZYA2Gj8cANBJpaZZ9X1utLruX1IQom7vPCpUDhcgqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763733714; c=relaxed/simple;
	bh=+E/qtFw46AXv4FbFVXHtYTjItiF8WoVv7cT9NGbY/EI=;
	h=To:Subject:From:Message-Id:Date; b=p70Yf2f8IDPXyqiyobRyhZRe4iXjxWkv4MHHsWe9zC+gwYS7MEm4epmSG92I105HqcCZGAzpGnHbaQVk4c1qunARCLSKPVFXokECWFR/ZDxmFzEYwlMRYgdbI5vhrhyLlY1rvC5QF6o4Um18j0Ch12UhcxBrW8iBubI7UGsZYWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCm1ZtDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCm1ZtDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D4DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763733713;
	bh=+E/qtFw46AXv4FbFVXHtYTjItiF8WoVv7cT9NGbY/EI=;
	h=To:Subject:From:Date:From;
	b=SCm1ZtDFhDzB9ZWxBSOR1D6jRl/NNE5HBYKyqTHkZdAvPWd17ZecsLNMUhktUGxXM
	 BELPdy9CW1FWKMB7dpVXtCaZqlGfWmN48Gs10mJxPMGQbrPCPFrs0QLAlLS8uXlRPo
	 Lt5ea9fSuLK7DNwyyW+M9Eui+0wt9gB4P4x7yrV9hOA1ZXBh2AvVkLRVKmsbGj6bZV
	 qpRVko+XjoMQTUOSNhH8w9Tv+nyrcm1eN5V0mbkgZGtCK5wMYr3qsdcajl31Ey9I4p
	 WO7137lWcd8WntcMV0tvwcRjoQIruN1U3SVCQdVhmvKlqlx3s6aXoW08d02cLVvxSx
	 aH9FxyrXgCOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99320CFC27F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373371360.18262.18269376404986341440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446eb5a549cbefb6c710f1bca6f22a612e4f677563a98aa10bbfa7691699014d
Date: Fri, 21 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763733713
