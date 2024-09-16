Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FDC13D53A
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726476954; cv=none; b=dU3lB7l3vmMObh8q4GTCvWneER34cf2r2CWXRmdUJbAQIkd6S/lRsLS9NhoZ/naVzBwFVNY6qqSgQH4Aok18YIXZEDnbj2XATFo5DGjcYzn1B0hEJz2JKtXeywWA39zG8kb2cObR2s1AM8nCR7OjqtUAJ0pnSjAAjt08o++vU/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726476954; c=relaxed/simple;
	bh=n0ZgYSQjGepv5X4ofOdp4JcbrFf782JooGW1tSWMe0g=;
	h=To:Subject:From:Message-Id:Date; b=upaggB66Td4HXIcVO6OIcgcG/v7R5yVgPpftphAwBc4wm5S1YZ4gciDhCkoND13WrGx0GJAQ5eqexM26Wj2wsjBGE8SZrW2ADR18EzRsjdhFvPhgqbFlhJoeyK8fA2NpGrTagnZWYv6uu4jn9HcsFO01hvKUwRHKPlcVgHM3Xj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uO+qsCEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uO+qsCEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C288DC4CEDB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726476953;
	bh=n0ZgYSQjGepv5X4ofOdp4JcbrFf782JooGW1tSWMe0g=;
	h=To:Subject:From:Date:From;
	b=uO+qsCEEe5YtXEkVL56y5jX42dGCyJGNJvoXBeqElW4UxUw/CIcJIP1F07zvaVBmP
	 rHc6whKP9OCooun4ZePJXA6R/OxVOeo3y1OqpDk0HrdqNIibMUsq6V0GgLgPoM2HE+
	 WXjhSlqGv3fG4mVvw6CVPwi874uH8R+Aw2MmwWU6/m+YAvtDDT8tyPlo9CrfNVMJCO
	 sFm3YLqtAZR2jlxXJpYYJWQMXbDreQqJmeHetEpoQOn0doLMlV4jAZlnZDZCsX6rUL
	 eT99dN2vCQ/NQKILCBJt+xH7vmaRPhAYXBhv5mTOOXOQ1mc+bNySihlq2F1Oe+9VOC
	 m16bZ+YU75jRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF15C3ABD2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647695363.17402.3004369655573670728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e214610d70e138e2cb31b1ecb4fc22b2ec36c22a63af6c6b7771916ebae0bb06
Date: Mon, 16 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726476953
