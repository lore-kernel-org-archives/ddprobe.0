Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2112E659
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726516554; cv=none; b=s6mHpZS8PNmd7jGwowcezSOpUBjPwU05GWQXJcW2YaWXDh+oIaj3WEpw1fEHGHC1vaYDCylwmfgQO+d0YV1qRexaVnRW0X/btEKRPypJxO4yUhmZ1Lk2UHU7tzsN3KJTGStSvK8lKUS6ByRWeV2pCdZeJ76J1ewSe9HE6eJ2Do0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726516554; c=relaxed/simple;
	bh=roVXT6oC3hfLmJDafVLxSn5fGvBZfdKHeAgzu6HqJuU=;
	h=To:Subject:From:Message-Id:Date; b=s1/z8sXPd6V9hG3otOpDczxQlPke3J4T+2DQn3liVKgirEpBU2fRc5ie7Ns0qyyFWFc9mTD5Qk0PiF9Oa6VEngpRoOjYafnnY6duefpWlRY9MV0wr97Y5lTTDNy8VBei4DsOlYlH1hxJB5v5HyNHoUcYj2d8Ps42C/R2Rvj/6OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwUA0FWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwUA0FWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9BCC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726516553;
	bh=roVXT6oC3hfLmJDafVLxSn5fGvBZfdKHeAgzu6HqJuU=;
	h=To:Subject:From:Date:From;
	b=XwUA0FWL1u0CmXE4d7kG0X7vEXSq5eyDVBaxw896ppCN+wF59yE3GbHSIMsv13ej4
	 5R9vAUpNSD/oP8hMe34mB1/fiMJngil0RfTQy8yHyxu5hg1siPUa+3qhXsF59Vmn/4
	 VC0PN1PR1dKqNGULsPVYuNxWeVBBRwOvZ+rvq1yxIumTItTOjH5ZS9qF86/gXDBc3V
	 U5+FBfDlzw1S5XavNWDphAipQFUJ4NCaOAy9qYHRoKdOaPtv9YGlXCwJUcB6JCRGQX
	 llX3qJcrTok7AN/gHMfLrNqBqtntkS41U++7voP7I4TvdIES7zbAgw48RwjTJK1ceC
	 PnR6V9hcmTooQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A12C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651655358.20085.2020333956725654617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6a5cd60299bcf7bb1af055400824e3a5528bce20361f4e8bc4ff9b8c62e585
Date: Mon, 16 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726516553
