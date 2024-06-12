Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FA182AF
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718223503; cv=none; b=PRojN6YilZw+ek96KNO7Vnc4N7esfZjuq5lRTvlmeHO2/i226MZMvbpicfdOGGKhZBxy1UZRzCUy76n94HuI+EJU8LbGCXZty8Iz63dLUIx7NG2NITMDIb9LWKBvixM6CldnCwdVZNEti4G+Ojvk7RBFeE2pIPwN1gzTjRB7FKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718223503; c=relaxed/simple;
	bh=j44OwyHgItOXY2Alr1JPPTCdw1nbmWTmoCcg3kRc92U=;
	h=To:Subject:From:Message-Id:Date; b=R1AjiMx1LdWg0WRP5wFMlsT9z2oMdq1WsYj0a1zFE3ImsX0xJOKqx5wieoYaQWUnmWEsqki9DkyRqMTAhAHCBQn2DdrUTJTliyINmQGZX3J1bdxPnP/msjES9K/xSvJTjUyRq4y+2ljTbQ0fHOjG2dvyvQtSqa5Bkg+WtAWlGhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL09aAWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL09aAWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB2C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718223502;
	bh=j44OwyHgItOXY2Alr1JPPTCdw1nbmWTmoCcg3kRc92U=;
	h=To:Subject:From:Date:From;
	b=YL09aAWgYBwe5TPCAgKoJAdRiw2g1cvOj+3geznj3r3lA15DWKPM4CP128CfrOcj8
	 amqPcRiJyz5HYiupclhXZrdg7G4ZjZc0AYA0sM2xORe5jzibeh/prO9Kd1j0jLkulK
	 iMasIV2a/L3XjVKednnMjut3jde7kQnIeI6/vFMmi0D2fpzoIbW1cURqY3mT0Tlx/z
	 7m9ZYKLZjwqoDJVPqsuRhHBO4Eetot3MtHeOOCl7lt+E9JzvAbOj7fAwX9If05XKe8
	 qu69t6Xi3qsyz1eXtRga3rboBuZ1txbbF0zmzJda/oID0l7nNxciaiSpWYmTm4jlE1
	 2JAf2prohHowg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF94DC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822350277.12235.15901413350348327949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4294728591d3dba8558c60e27c59af83a8c2bd9e3b3056c8986285536a66df34
Date: Wed, 12 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718223502
