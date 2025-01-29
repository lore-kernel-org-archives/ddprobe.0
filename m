Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461125C96
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738155354; cv=none; b=EE3gCI1g9imoGMqzhNrHo6RER2v0Jzok4kfnJlfWsjs4jhR8pUyX1qxEo0wZJKuTQNsMK7jduxHfh24WH8XZKSZYXvYnwc1y1IbPyEdPGufxw3hk6+BUcUdqouZfoV6AEkcrzlIOKa9kWrJh+7CiN9V/+MlaVn3SC9nIjOksgfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738155354; c=relaxed/simple;
	bh=RqiXIGM8Aw2a8W5/V4FGnQxhqtD6ma62eiJAiYrZUb8=;
	h=To:Subject:From:Message-Id:Date; b=HJEQXK6RrtUbFFGTb/ECJv0NegsV4GmqndgXag+VyNxDSIvS8QmaWHFdezfDhH/bz7nbMxGQM07E0UTwAKF/4zoQd6SvEudpcfLLlGP1n82/0hmosGukKOlftrHORmEWfaA8KSXuaYhi21IWrmByPnMLjzGUHjirnp9h4YfCCzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEJB8a2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEJB8a2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D7CC4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738155353;
	bh=RqiXIGM8Aw2a8W5/V4FGnQxhqtD6ma62eiJAiYrZUb8=;
	h=To:Subject:From:Date:From;
	b=UEJB8a2jLiZTyXxJTHj91NY8vhBcLSnvqiCOSPAOQRmCun8YtrzBjJxPaBFop84fK
	 V3aIgNujJ1BmBfChAnKY2dVXixLCcI0rz5uiBJ2mxakzCFCrmTBrH9mbDCIBgQZ4mA
	 ezJa0dLhnj5+ntkz9UP+D0+X4sEWEqMksvc2Csuz1JQvkVL3wvbcR4HbFd8hoU7NC/
	 fmC/H0e7+EX0wWYfDhsXAFJIUzUcu2+cwLApi+CGgue+J28z3nkz32sbyozTbe0bgr
	 +1R9vReZFpl43cVE9RKQhhkB7K/Y5fA8ECVLlfWsMpd7eJ48yNcZBrr417A5E/oVQ2
	 X8fZ7sByAinGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D6C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173815535359.13624.15644506647055830653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8087775095148f64037ffeaef988cf9f515a9979fe27695d3cc749779fa9a9
Date: Wed, 29 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738155353
