Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDAA4DA08
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712904563; cv=none; b=KJcRbMdf9ut0fDvRa+3ixLbfKKVUMw7geGIq+R2PzY+VaV8mF9BVX8xGoWZsVvE8lm/l6JpyIMqg74d6MWOkhNx+Da6y3GBt920PHSL/YJT0uI5n1tKSnmM7j8NdjozklgUwOpnDARfSlemtRhxqD5vN22Bldd6Xut4AzDDikbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712904563; c=relaxed/simple;
	bh=FDBoVXJsma4vTHoppBcgZKwoKJ+Fg+rvw3bvobjI/f4=;
	h=To:Subject:From:Message-Id:Date; b=T7Qdk4snX0SVMwyLkZJRvG/MK/5NgBp60SG5CCBNqqIJHH4d0w4xjUJ/HoV8xwPZzM95FHI0S/0NKl7yl51crSUa4wMZpBoR0+YkDTT81Uedbc6YOALxrkWzIAZPWNVvTA8INZkblbXi/DxZT1G30fH0yvPEWhYvJUG/psHWD8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgwEA7g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgwEA7g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D809DC4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712904562;
	bh=FDBoVXJsma4vTHoppBcgZKwoKJ+Fg+rvw3bvobjI/f4=;
	h=To:Subject:From:Date:From;
	b=LgwEA7g2gsIOh6EaUaqx/+0cm+PQfLhPjgJzN/JVarD6Hp33RcaC+ymRRku3TUBCI
	 JiZjKaj/cN0IEvNpeaHRChHzeVgiFhA2E95/3YBPpbcNt2iZXnRASQYy5UNQV+0/6w
	 6ju/NTTlkioay+Yf9Of3EZCi5jbDKoW64IMtyry3n4wjDNbScXF1xOMuazvG0DC1zq
	 6ZTvNC48ejyo9dFSD/M36lRsT+Qdi+bT6LldH55mBl6SEzzLQ+gEB42G1rFzWAvs88
	 gO7Z8e9AS3Niff8CMxVROrdSnw3oPOwg5bBomoquty5cFeHs6DU4U9g2R7E7SepDeq
	 a2BnnOmrXocYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15BFC04FF9
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290456278.29437.16142377886577646540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c188fa1f340c8d231637df8260b444027ff97fec7ce35f372c4e42f8e87954
Date: Fri, 12 Apr 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712904562
