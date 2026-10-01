Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5357648CFC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790848234; cv=none; b=HOpesfAtffHgRCYstiywFSME4FqnZlodDa5Bfv148SWkY8fSE2mHUHZZJt458VSau6fxijw+hh1M1f4+G6LEWmsN3c7HZn7MAgquXpWb31s8EIB7H+tXHPyueret71SWchPRh7YjeGIAYpi6LNaJi0wI0GgnlJ2jeDgm1aO8xSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790848234; c=relaxed/simple;
	bh=tKDr6a9Wp8Rrsli03JkjyjwHW/K3Vf8KHjLHDzMnJYI=;
	h=To:Subject:From:Message-Id:Date; b=A9nGipt5KfKlmfkf/hcOKc5L17nj51C7WVGnlfRVc4WSGvR6P1b08gBcQnoQI/u+U/9e0hbAkBQ8JVmkMM+597OV4Angd8rz2OdsyWGIOuzaugxCTPDhSBwBb/M3YTGPrkJ0Ylt2zUdYn+TxSW8jJgA4E5OmJI5PvCwHj8ljfJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEF8jhu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEF8jhu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26DDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790848233;
	bh=tKDr6a9Wp8Rrsli03JkjyjwHW/K3Vf8KHjLHDzMnJYI=;
	h=To:Subject:From:Date:From;
	b=jEF8jhu8/ZPENNwrQ3gK2AqLNVMw9rUpVFDoQxWp+lC8CiYGPif2c0dQyBQXYTalF
	 IJ8VWUkqqoY27Em9nLTK2ov6DBI/9RGqW885NKCDAkkbnVn5l7BsfMR3eYn4/xfwFx
	 m2IcB+gFDn1n3huqgt4CWR2IgqKEpt1VyeikpzTiXPCBZXXvMmbMaU04R/hWayT6mf
	 b1tEfP9YonUyQ55EMD88wpJLbYPoXbgzdURzgP2LPjD/jmjVesGWTt20XeP3kzHIWL
	 N/4msu6v+XHT1+EttDrHA4euElTdS8U3DI4WBXHnhIDq10EOPOXVE+kP1oDsX+uXMU
	 uwnNsjtiQBbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC3BCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084823369.18196.6457028503927800298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7a7e0c126b8a7fdb3a1e30633f9558280d199e905146f93579d12132ee3d4e
Date: Thu, 01 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790848233
