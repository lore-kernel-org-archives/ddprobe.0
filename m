Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C75C37031D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763542314; cv=none; b=BpyH1o/6Riljjkz1AYUkOHA6VFK6z6uM9vydHwEB1o5tS8oG+KRazPv5gV61D2kjVV4tmvVOI0vMHKMIyLlcyFwSCZow3zrZpbiVsZNMDsE/5snrMbDte0BAXCh0LAu8PJU57vb9m1pYPO/CS/ggdByKdM7ZK95pW1Md/ii7nhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763542314; c=relaxed/simple;
	bh=lQB6fM6SnMljOcvfBx63kfwjb4zOicw7RG1JphQ1jAQ=;
	h=To:Subject:From:Message-Id:Date; b=aOAq45TOmxzxp2s29iFW62nQVv3nWbPr/MJiffdSNuYLW3pCHbme9HvcTlK/4W6Lm/yXkwYnHooHYEmKlcxrPfbajFiBW7BFk6YKvde1XloIQLac4sddKbGicR88I6Jkc1H0kGzvCOb7+FELDO3hZZJMSgWS5CwUSXmBkP0iSXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nt85sk+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nt85sk+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58ACC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763542313;
	bh=lQB6fM6SnMljOcvfBx63kfwjb4zOicw7RG1JphQ1jAQ=;
	h=To:Subject:From:Date:From;
	b=nt85sk+qMtuy5rTG5UxYZVGZSF7NBXLd3fpTeP7BpisPnYmfDlaHeq+Mf/nZ+C5id
	 H3yucyfkIEE9iJHI8p0Z8/70f8Nmvk/64c5dO3eiKTAbp4oWRqN/wGelCqjGgvreDT
	 TXK7uHMKstjTquI5lUeF8xHqomzxyezFaenUYA62jAUrkdKSe3e58FxkgOdkxScjcl
	 IdKHK8QIZdYdfrxMVE6dZ1J56XcO/HXs2cri7WGfyxjV5GWA+4FQmkCKjme8Y0UJeo
	 MOC7onwtLXzqhpJBi7OZbkE+WKlHQju5msPXFTZFCXG3EHdANi2k/KT+B5kFDvsCWP
	 my83R6xf7TEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8FCF2597
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354231358.16044.6822587367495241049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fb4f158eb21385ca991db2556335f1651fcc68d6ace8078e46f17aa17f7395
Date: Wed, 19 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763542313
