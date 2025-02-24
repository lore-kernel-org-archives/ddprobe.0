Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C56F261370
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740415135; cv=none; b=mzRkfpgkjlbJOcn6gNBwdqv4ripd3C3glFi5TiJEFUpK9LsFi/0pawA4v/MitYr/Gm9I7nKLedreedeanZVXX7KDIispSTeWjm68vsSZJW4tagNrcF21gkCkwjDJcdufI5/SkEhSBh9hK+OT1TtD61BKJERykV0AhtOalFKMpBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740415135; c=relaxed/simple;
	bh=+cgphTyhAiyLDDiUQW2sPtGvoDVJ33EgtXVF29hRjZY=;
	h=To:Subject:From:Message-Id:Date; b=Tuf4pImTLAzqP9803ZbD3dXJ9MnApSXt7905iBGi1gfZ47NEvvirLqhUdvIEXaNa/bBJxd+OOAYDJuQSL+VWuF2cVP4RBKlOvh5ta+pGlAbmHNC3w6oPLUSVeiqM5BUwEhAYadksdrz7nAILHI3sOuv+UhD+k5uEezXsqQ4wlcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TN8o4FZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TN8o4FZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FC9C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740415133;
	bh=+cgphTyhAiyLDDiUQW2sPtGvoDVJ33EgtXVF29hRjZY=;
	h=To:Subject:From:Date:From;
	b=TN8o4FZm00m/N8tMWb3ZX8JTvgfdROJ7YOrPqO4+OK4+WWuDdgLG0/aU7mGPD1gBO
	 1L9bnvmVAxJBu+zy1RJfz6pIX1vkRfRwuJyZtScMkbdIIbcpIAzh7UbdsN1Z5ywM72
	 RxwZGdKSiYxCD8+sRKxs3Td5MGBKl8zgymnJk29H5kgdDVwIlBTGI4n72Y9Io/8nZ9
	 wWZNA3MqxujUnTuT0MzfLxTOfrjIuZq2Dq1pR6tBjGdoW3O1PZv9pAWxDUJ50+pvLI
	 Elfd+SdYaq/qMtRMVQ/2St1S9N4k4MZhyqaemkXYq4jAGm+9zkPSaYayd3NiOyjham
	 o27YhyYM98eBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A32C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174041513365.6344.1628110409981961374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c93f0d4667c1777e204f5c9edb7bdc272ec7a95471de27f9fcc6a25014da8d
Date: Mon, 24 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740415133
