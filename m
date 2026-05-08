Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF5E351C09
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778219254; cv=none; b=BxUUGhLMVAJK2o16Th3yztIG1+DH9yhq3wPQ+WNkwLUfDEpqffgacdVYJ4ELS2BauGo0CpssRRP3OdLCUnLVAaA+GdhaI0WwDhl6BS6+JvEVX3gXAPi11PHOODPJe5imtsye1kY18CfHcANP5S23BhcpBlHVi6xh5+Xl8eATab8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778219254; c=relaxed/simple;
	bh=x5m3HEJewl80RIPmMQPNtHNRq8q50ZOP79EUDtTPbvk=;
	h=To:Subject:From:Message-Id:Date; b=NiVxGiTZXkqucvvIMlhNbtDXar5qFuYsY4EdDwg6zcAHCj2I6pSj5x+aDbEa86fUNH8qoWNWB8hIbLON8pfRu9yYV0m6dTL+iYZ0gYP2ShGCFVni2D6f5l74jVVdQWLUsS3xzYR551fetUTtTdHc+IWG4Vm6tjTfVh29qFuP4/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsfwI8og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsfwI8og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD001C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778219253;
	bh=x5m3HEJewl80RIPmMQPNtHNRq8q50ZOP79EUDtTPbvk=;
	h=To:Subject:From:Date:From;
	b=rsfwI8ogcu5JTZ6+y1eG4gJ+Ikg7vXbHRz/1QQbDmjmjUMwe20G3AGz9ffiKUraQS
	 1PdRlDjUlZIJLPj7NuR7tnGqg174o3I+Jqie1QZYMms4ESC/M+aEEA64+MmlLJ7Wr8
	 3OWRC4i1lHhVQqWLp5gVhmoI/Z1zgKvxl7sX4b3wjmSytNWZwy6n74QKjqmGx0F+cp
	 NOaCYjXpQk5zMQkaM0aXdY19oq+IsivVR4Xl5CNRvWR86lW0pfZ1oGGesof3k32lEb
	 odpQtw8iNIyv5pgrORKkK1j45zWp2DRh6qz6/q/RCY+lp8njuU2HCceX4Q/xIBiqQC
	 KAZVjgrlvuzkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB383CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821925369.24796.268036357664407012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d17b6b85869d1da6d070e51080590e11cf28d8e1c96dc254cb35bc4c3472c00
Date: Fri, 08 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778219253
