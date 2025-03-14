Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AD71E871
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741984734; cv=none; b=abdkn4Qgmt0wsKM2sHx5BR1KI+jAXuroN4NTz/ZmfwL3Gu9wA1kv/MXgb2oXvjzePZP47EJx8KVxI2VJs7/rLOL2qW8K330shwddKFHdpuuMNNGRGDycKN4rSSvBiuCWak+9qaZ5yj+vQ8YsNFGR/5Ry1pYq50nSqhfbx81pi0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741984734; c=relaxed/simple;
	bh=uU6AQDsCu4yuuuW3PNOwJ0OozJHQ+0hV3Z43Ya0zeg0=;
	h=To:Subject:From:Message-Id:Date; b=p8XoZpIUlKPjPwj9gG4CZE/dikTJKld9VKLRyj0P0fxUoumlkOGL/Tg0sCmcJKa14h3FvweFpspfeOj99vdk+b4AuEPvCrfR6lx1oxjN6lczy4j0O4gXEEUbw3ZSr8rPEVElS+VeMzVb7pfMn5eyCEGET2S+TNuCEp0QNdDlsMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtqU111Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtqU111Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741984733;
	bh=uU6AQDsCu4yuuuW3PNOwJ0OozJHQ+0hV3Z43Ya0zeg0=;
	h=To:Subject:From:Date:From;
	b=TtqU111Y1Zf99l03f8iXdyqjBNiqWIyrqAAvmly7+aD0IaFJ2qDgwii4FGKu+MnVL
	 FRTK22PQaYa8aREsaW2n/gLE61zXdEN0F0QWA9ktWKod7W0mZtvM935dvYkW6ke7ee
	 EZGkh9TRfXP/0/C6WmJUOgnQZAlx+uxYa0/mQEQteEXEJee3dihqbgFm2n/+0UX+aV
	 /E/9Cgu6j3bK+xg3wzwluDAifjhKFWK09iouqCs2gdZNgpgQ61A4SlR4okMNBQIOu9
	 0MuewaK/fE07cWmOOImeJlGyL4kHQXk/vFWXKbHPMz6K99g6biXk2SP0lXGI9Bdn//
	 hAESioO+DT9Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC4AC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198473363.9405.7682357660267750506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dba2282d30459268519a4260ffe31fe2ba57b384175c8df065c06eab2b5510
Date: Fri, 14 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741984733
