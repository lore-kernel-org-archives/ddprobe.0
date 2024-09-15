Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A57E8BF0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726361154; cv=none; b=kxNLzMbu+YVv0qkEG6DN/4NUn/WKSzBWg/W3917WtQ4pG/qXAlDLIrDW/xQGtVxI7364qJWag2o9dV2XyXRbDjUm4DBMWJNYVnqFu8FPCNmDsbkdRYzi7KpICZnmDruCnJITmYpm4epnCHtoeWyxHi+HyP0lZNRN3kN0/GGI4wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726361154; c=relaxed/simple;
	bh=0W7RTYKZKIi/5eBZ/tZZqS67kuvf16fwv8wEZVPvCkI=;
	h=To:Subject:From:Message-Id:Date; b=gHBmA9KKVpQA1s7XijVxlD007f/8Ui9NvWr05H6dHmRgxlxCVf2Jwr5O7YNStCkgTX58WeEL8kYe+jJ2+qC3y0B12PIXZqnNPWY5z8rRAXcKesb12/F9vLvL7WwRJxEgssZ5bnWpXM4wrArMd/nVlEwhmEgywecjDuGcoELbYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDcA40g+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDcA40g+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CD2C4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726361153;
	bh=0W7RTYKZKIi/5eBZ/tZZqS67kuvf16fwv8wEZVPvCkI=;
	h=To:Subject:From:Date:From;
	b=LDcA40g+lLIe7tjVJOWoXv8uiHUZVwXz/q8USJ0X/ee8dpOdR9ZWZc8VQsPBHPzXQ
	 l7EBqdbA5FY6W4Ky565WHcwguK1PL4eFQJnC5G5mzxJzMXV+qMPDsSIQ5nLgqzqbMt
	 anJSd5uaJY4vM41LkSy/QKNYA2LdmI45SMnzxEbteX2s2PzvZfPWEdRxgWFfo1PMOI
	 mDK5dtVdBfruM17XMPLtUSrg3+6Qj7R/AX3wB6iK8gTlMjVE93D9nBPlKIkQT1rchc
	 wN0lIO7stiv+lUzTgL3W+SiXqlOObFnnFQqRK6uUDn6JOxX70PTVLZovvZX3IRWUh6
	 wzoZW5K8LuyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422FFC618C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636115358.16659.20055629849074075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2500c208d92bf5ce3724ec3e3b5fbbf9ce659eafd47741ed147e6ad19046e6
Date: Sun, 15 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726361153
