Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210D348466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724114; cv=none; b=WukV/yAPbGFzM4i18NuS9GhHCTRH9r2yoDUa+c7InXHOpIiX0bZj164jAtKifIK+KI6VLDN38lBWKF4Jq1HW3Lu4DH9IXyFNLYv6fJn7fKlKUmM3AWzW+YXnLSIAedHSLfs2dCE3gC6Aij87kh6zVm5Nmozs3luKtIsU3H98IEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724114; c=relaxed/simple;
	bh=0C8Gnb4aKY65Vrt/wWh2lztbiGddek+/66qiqCfUEog=;
	h=To:Subject:From:Message-Id:Date; b=hQJWSK+8XPKoKrEtECTAGuJvVZ+YeFfczJ8IAdCav9fd4+yH+xnrfVY/HY4IolR6mKcGg8cPwhtbyyNPwFHBdoQP/IdZfeWk7Jj65gsfxkZuyGd5yTrDHuW7QBThQuZsky6BBDAFu11Dx7D8+A5oo3n4W7QtSPYzjo+NS0Uy/TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvz+xL/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvz+xL/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF4C113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763724113;
	bh=0C8Gnb4aKY65Vrt/wWh2lztbiGddek+/66qiqCfUEog=;
	h=To:Subject:From:Date:From;
	b=dvz+xL/AFu9gCSJC0T91V3NkHvx+AMhONSiVd3sZxTdET3gaBy83trBgEFM0bUj30
	 b7wlVDJsHgQghC1hYU+8tPVzKtT22zcZfcd0/yzq+36BUOYjJZT3gPEN4HkOsmZn55
	 DI5pAczHSDX1KhIyRq0rg8ZcJ/hEEZPKo5p126PWQtH7W8/ZGF+mX+3GJlh2i1Xo1E
	 QJ8D4OwgnwHHRZ+u+iUy2vGSPERAsxE1XKjNRhFNvO2iz7+lZf309LGmsBKgCFXSPw
	 qVk2jsIrywYOm4tqcxHnYkn1nYepWvMA3D6iJ3OdYBEjeLL9REvEJEgJAuofToDEwO
	 ekzv2tiu4U/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADCCFA777
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372411358.26425.15408872800636594815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342c4debd2043af8bee0d7237f97d56ce040324499bf6aab422701c990dbeb53
Date: Fri, 21 Nov 2025 11:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763724113
