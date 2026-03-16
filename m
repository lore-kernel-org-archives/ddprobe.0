Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002AB303C97
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773672894; cv=none; b=lzRCdpRxlmlUVnef1LvpVbaiVAt80MyUEoot0wLQgWRnE+nzBLL0Pb3PPLWlEXcumBAmvvlcoRiCWHgT+sQsVCl7Puv/Q3tVYMG5Y0Aj5DmI2yVc9c66KMmAKBt+Sl8VcaveVGJEJzpSZ6/Rf86XNJIxY81KoAPFw0gmUwZRJ+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773672894; c=relaxed/simple;
	bh=SaViUtSvLaNpagEwuNWlwa2S0Wypbd/2cl6r+f1SWw8=;
	h=To:Subject:From:Message-Id:Date; b=Yjosr4ntmhY2gkandes4FMppXuecMSN/CwjWcsC5vpV16Th93OrStjE/nRcCENR8It/4l8hyBsxn/I7hRw+Tf1cmOVDGENzXcQT4ymPGhSJyS9gaJaCIktcAdCXYhrKR9oOq435Zy+OlC+9+lR43my3arE3irLbp60Y7leUrpDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TP/VUW7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TP/VUW7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636DC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773672893;
	bh=SaViUtSvLaNpagEwuNWlwa2S0Wypbd/2cl6r+f1SWw8=;
	h=To:Subject:From:Date:From;
	b=TP/VUW7W8Xq1u1ryJkUvJCTlm3PVoN0vmRoaSslsFzUGxZ1c+GYeBQhwzDkQzDGDm
	 VrU+JxiwG3iazk/GKj9Oyt2/od1xCEZDLpPqL84XHVUoviBtr7pHFM9BQ7JglVtVlK
	 RAI5cwwnab1EuQ3vBbBw8Ux2TTIKKSWiksZx+q0jZWce3jVuBGn3iV9gL9XDTN8f7B
	 7u3gpJaVqdw/LseUw2O1WT0mY8B9clBGyOloaLPgH13+DKT8g2MrA0oCOF7i0mXiE7
	 vzGeJAaxX7dwH5drQOdhEokx+jiGOp/ynVFx52Zh+kF4oDkwjxZQNQPs+wLjsxUVuf
	 U6KKi8AshOO1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8BF506E1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367289360.14588.6037378448004981994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b19819951178c7fff7d49c90b67e379e03e4172ace0f3834224d158c2c73989
Date: Mon, 16 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773672893
