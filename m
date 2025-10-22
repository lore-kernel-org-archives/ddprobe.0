Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9072629
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761145794; cv=none; b=skJzz62aE/3qnFSFhqT+uMV2FninjtnUtL0PqAtrxOrJ1O6rCMULHF6XUO3qQJcEtmJx5daldYoo41iRweVIdk1sIP3GNOqiyzHYIZIv7ceMTWVYxpI9Enm/h+FTG/VoTq39D855Fm7IB0pXTfPVJb5ifx2fCLrE1yPcQXSTlUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761145794; c=relaxed/simple;
	bh=8pgz7xqGqdTpUjyp5ZX9G7vi6hEzVeLk7+RDNihyYf4=;
	h=To:Subject:From:Message-Id:Date; b=BFps3TGkeP57P/MVuNWfztRsokDts8C9+nH0BSQtL4NEloZPvJs8BGj+SpMxMuexLuu14O0v5mW7T+SHObImlzf9LAwkEN7SYphR4jYUEEIhVscJdj6D6ofAsTSeWQi43WlIDga5L5NzUKYZNaE5AfKapdHccXfEI5gOxCAtzFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqGyHxeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqGyHxeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761145793;
	bh=8pgz7xqGqdTpUjyp5ZX9G7vi6hEzVeLk7+RDNihyYf4=;
	h=To:Subject:From:Date:From;
	b=ZqGyHxeKz/FNMnc/NjrfK7AqnGf/ZNHhWgsYgSLxd+/x+RufewNSP30F5SiMik1xY
	 aDuQyYWuCLxmOWuE5+Q4d+ZcI+yGoHmlrEhtUy6xdQ2bt4jursQ17LuKfzcvxJwxWK
	 Xik7G71uAyd6zksH5EfwDXfjIMJkHRbd9SBDw1yu11h5dhjvwcpRsM4TKwVKIYhOhS
	 wHv6edTZ9f+uBJKh3faZxH3L4Gf4yUc8NEk20fysEGyQRgEbAQO9AjSCumzFYThfRe
	 dt0vcVo/PONHg5lrNXnmdHoYtkZ/bPsrW7rKyDV8yCTeLXSWC8lg+J2zEQZCC2Jo9V
	 7iOgZvCi9vzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC8CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114579358.26558.10682340583381195903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53bcdb0a87e89e3bea65fbf6a71e76cfecc97d44ced90b7db22502cbab3bfe8b
Date: Wed, 22 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761145793
