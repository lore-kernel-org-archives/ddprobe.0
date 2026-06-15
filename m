Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C9416CE3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781543794; cv=none; b=YuEEOtCFB6GWV1/KHQkU1U4Fk5ovsCNzbDAxExHdjo20BLNxt6bVuvL18QMMwSV7Rr6dzLpB5aNCGah+S56mxubHpcqbSMVc3xkfGiky7B79Z4rqveATPRU/pnIW4LKkOCvVltlI3fwuOghePH9nOsvOrymm2EdRWE7QKdJV1s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781543794; c=relaxed/simple;
	bh=8SJBQvDzwgiaBaNXlaD9WIWUa3uyCWX5DQfhtAeBlsQ=;
	h=To:Subject:From:Message-Id:Date; b=PBEBOQIp1SZggi7nuNUZ9O/poXLWZkrFi6Y2ohVu3VUB8v6fjGPBSqbMYkPXRdXEG/SmWmud7OcfxpmYq3022bm/1CBYxpJCEfKTW84dAaDfI3t8ozdeY3ope9JmRwSnhRiPdz9iLa/N9zn4g2yc3XnTAJ4fqhNgTw1zUFexAVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfL6ghUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfL6ghUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1175C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781543793;
	bh=8SJBQvDzwgiaBaNXlaD9WIWUa3uyCWX5DQfhtAeBlsQ=;
	h=To:Subject:From:Date:From;
	b=OfL6ghUpwfia5Jga6svuMjnNtmR/YMoyb/0UXbyyhckHXk/dMVpIJ2/KBa1RMltgw
	 qcPpo9FGKfnxZx6XMK5y6yQ3IKWz+IsA0cdUmdYwI5Ads8lmJSSWYCJYlaEx9kLcbR
	 CZl/Q39r9XHr5uZvQey/FgSSP26Zr4iKhp+cEHVdE7dQc1Khumi6KMIXOojGGmGxf6
	 Y7w6vhwQRC8p5JeWSd/XAUb35d8nxWV0yDRUnVuxkMskfrdD6kigbP/JPyIITkSvaz
	 JxnKHPc0mybK8MP9/NLs7E4H25fQmeUyKWbFFeuwTufGWmG6bx/YOm2vd2QsGFEu08
	 pP6iu5ZT19Drg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF958CD98E1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154379370.24297.2561656186457771141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd323dd4ac7051efced3f4f906543dd0158bce71653af4de2393b6863e0eaff
Date: Mon, 15 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781543793
