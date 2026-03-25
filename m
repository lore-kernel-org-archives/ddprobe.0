Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06322DDCD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774418694; cv=none; b=J6d6QjpxxP4mjo352Uz/zNn1Rx4srggkbOlf/Z/FswYRl7TsGrclLiSzqRvyLkhdDOiqSyB7v6rDkwYZc7kacKHKRlR+eoIlSiCv78uEs2MqQEs0k8u2ptTvAkWU+2d1aTFKedFfIUJ+PYf35EdY12mH7/rnlwm77NisN7N92cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774418694; c=relaxed/simple;
	bh=RpGQpWUTf0PTvm7MbJ/AU0eVi0UY+yCiiOJiSr3lH/k=;
	h=To:Subject:From:Message-Id:Date; b=NcSx7V96NuXrnMpubRFVAY0MD4qo74E38MX5SxJUs9+1CHwRPYDyiw9XrhyYJL2qwwyH9oQRiaBjAhI+GYL0PuptrRRw6zXILiSK1jgyvzR7kWVQb5QW25icF5tswEu6XD+PWKMVM57h423kz7ifVBATRcLvhwcN4dC4nT56JGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/n1sIVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/n1sIVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DACC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774418693;
	bh=RpGQpWUTf0PTvm7MbJ/AU0eVi0UY+yCiiOJiSr3lH/k=;
	h=To:Subject:From:Date:From;
	b=T/n1sIVtWD0SPWqFpkK/EwdDxOGL9LhPSPGMHs/1hHeFPCdJhPOa2gZ4HVeRhI/8A
	 rOQIBhOyIbKY2QA5g/qBNhlGZ+tYPf3EEm/faOnFFeGqVxKiAa52uOCsTz7MHiZZKD
	 s+U55Db/A+6OHj4+umfRUk5a9OiUGKGqi5fp+bjP1EQUk1jxW+7a+nZ+5IHv+OqJX4
	 WC2isZQ+4NWU1X6GRG2RUSDFCZS7NySSk5/FHRQQZwTdmM5jrLXsq7P1bzv8JT8hX8
	 DCNUpxJ9m4YM3QBcJ/QMRi+9RbDTkbjF+5ryR/vI2YcMCQMNwt7Ur86OT2gfTV0Sqd
	 XeD+Z1FBETsEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A8FEA80C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441869358.21672.3521987856103756186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4db2e86ad95cbac777f87874fced6b9da57ee51da32339775df4a077b136c1
Date: Wed, 25 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774418693
