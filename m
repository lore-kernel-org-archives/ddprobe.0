Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AD614F9ED
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720034723; cv=none; b=Uc+DUFanVKyLP79PqeqhTBt3IGKkdrEBU6OdIl552oUCymyLrLJhAEM78cmK+dpMVrNdz4KKqni7Bo3LORRaMFJT99fpuOsRP0g/5peb8bTUnDv5ubOl2oUYcjqZntf6cWHxBRRg7LczXajJo6sRzLXli7re93tZNfQs4lqX9Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720034723; c=relaxed/simple;
	bh=uRjr98EO5m+ZsFnU9cncpCyM7eISkHEBZua1jRsKHHI=;
	h=To:Subject:From:Message-Id:Date; b=mKuNN/x5qNAcCdevE7HttFKqD6KTOA8Tfgusb0+3i95iUF4L3xenN7LYN7lpY3oxmzxvBDAW1e+6GODjaR93q2SzrIpbJqWBr95GLl5U5wSq8VP65G59W13rxwqJJiCnfaKdVi25plBo24RwbL71OWA2+1nwg4LVfFATo291yZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsygQxmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsygQxmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC68CC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720034722;
	bh=uRjr98EO5m+ZsFnU9cncpCyM7eISkHEBZua1jRsKHHI=;
	h=To:Subject:From:Date:From;
	b=JsygQxmQaOqWHU1LnVICBM2vfjMzaJguLzrbaqnX7pB4IrjTJYwXg+bzdz1caFkMX
	 dueAru1Z+W+L02maKRtEWSOBlaAXJyfKg2kOF4i0z8yGpcy565QdkuVzC5hO/DpEZF
	 Ing0k2xv/+8DcUhoAjifL7tgXAbihFhgheq2dUg+B855LPaNH7dQp7425HhqFoskP8
	 8vCFwG6v58JbKKmATr5MwgNFrmQefpy+dg5GcGyGQM+t0w3g5ExCPkuOPUcNh97Vys
	 lkwuuo5dU+bRq2I0CqIWot5kw9mRwAESsB/zyDXzQQfVTVEJqgVXxMdnXK3YZIYUem
	 cuqXHWpAzO9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7071C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003472280.16279.11884186121308330942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5f16bb77e54f62f0cf119abe92dc0f546735ff301ca620e7c7c1be68315402
Date: Wed, 03 Jul 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720034722
