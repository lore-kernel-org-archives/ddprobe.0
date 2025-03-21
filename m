Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A6F1F03D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549394; cv=none; b=CW6QmBn3pOfRpgOAnRrOIySJLjaFfLh7TIaqp6Qq9CCdiXd35y6cQB6crQKGo0Cy7d7UYdLWGcDZAcYJYOIXUyVxFBaqRb7ccooyvvWnkmBdyeM4935fdq6YRM8+JtPbGY/b3mgP2dSUnkp7VJ88whgSm7GDRElhCGDWn+rsLX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549394; c=relaxed/simple;
	bh=QbEl2sblV9hwVjHXtAwJboIm9Zr27pygHjYLSo3pRLw=;
	h=To:Subject:From:Message-Id:Date; b=qCz1A/YoHKycws8LewfK5gvYfhH1hkdODAAt/7ba94H8QZ9i+BeRCmRh7bJht+iLlHCJkVha2caMA0Bk8HD3jX8wdIg8ghi7Hy3iXADHtN+Kod8UQg3R1iBNZVSdheer/VZkt5KjfgYyjhyqXxbflFW4PvaIguBh726yp+tKctw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9VrWya5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9VrWya5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2FEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742549393;
	bh=QbEl2sblV9hwVjHXtAwJboIm9Zr27pygHjYLSo3pRLw=;
	h=To:Subject:From:Date:From;
	b=t9VrWya59WnpfVfndbRYqNTJ7xEtv4jybE65x/Ivpv6Fox+8nNtH9eYF+VK8e432O
	 b2VvBFezjjEDMC9pqP8Ip6SjRl1B0kQI9z9u+jK32hhQJsfVscWXieKr3bGEoHWhCL
	 miVR1XDowKDFCcyANbKz8M7AItvgGBNle7i7Xt47fwy/4WZrj0SQOdcPDrDZWgCAxy
	 /iWwOT74T6wbDvMHvz4taxgLVTBDsVZSFfyivdiGCV5C7582zzaI8DJZ3A8z8IaqN7
	 5fEhmMgHLu/4HXRr3ei/9zkj6rVK3PGIYtNbQfvtglw18QtL1aI2uTxUqlboPXLRfg
	 xEfKxB6yzJXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A979FC35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254939368.32231.6609391819853821894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee302e918c04250b67feedce0a83fd199e3065ea2e8c7e5a60a44679943f906a
Date: Fri, 21 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742549393
