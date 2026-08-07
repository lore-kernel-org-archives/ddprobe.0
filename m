Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479423CF1F2
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786096234; cv=none; b=EimbIASHRlLi+4xqxJtmZouSN9y7qmbmONSzI4Rbuqvk3suRWKyPF8wgxMNJ0nEXxVcPfW3FClcj1UiQRkIOHD2qJMWHZ4SxilboNOuDz8tWmTpQxliDokv0XRQLHVc5C612srOv9ZO5Li+T9BcNbCm3OBP7VpTcB1kz+5f5fyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786096234; c=relaxed/simple;
	bh=vfgYX1+zhf6gAgEcG2OvnCxGirZpJi+TZPhfxNeyX1E=;
	h=To:Subject:From:Message-Id:Date; b=SBCZQvA/5Yu+o+Y5hZbuphCAzPnL7T7MqkTBoFSi0DePiJpp0NhWnHBJ+oDXQr9pm02fdlJFFPBrGVPAOkNZm1hq2TWwFBzf4DfxWv/TcLtFLi9XvJqWCW2GweBFx0XL/TYViJZtJrvt6HCnLJhpszs62Q3iQaD3IkYR7HerLqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwGCIqto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwGCIqto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD351C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786096233;
	bh=vfgYX1+zhf6gAgEcG2OvnCxGirZpJi+TZPhfxNeyX1E=;
	h=To:Subject:From:Date:From;
	b=gwGCIqtok4q3KhoCALIJ/WJI3E4vK2JRBtQz9+fqHpvzgd0q8hazxmSt/KLBd/huq
	 0y8+hUnY3SoZenW4lQuFwF6dY+p/PSWPAjoU1L8o5wj4b1hdeXmow273fx1wnNsGBH
	 ipxFVAHbllaIB02ST4sf8C7j0jbfRoFWJY8YU58x6jp1uR28JOLIJIorGn4fAGKHHh
	 q7sxF2lAi/iYXCNIelv1F1seY1AdGmbWW9Io4NC7QYWuK+C+pkOx2GomKWGuWqwoWu
	 7BSmOnjQ6zAgf6V3WDn5WgGk4yEd/uU00r8KhafJxfA4BlUHwJ+37dNnIAB43XCyMZ
	 iUtgcly7oWq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA057C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609623368.7788.14754920027051500766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f901ff73f3978d53df2fbe694062cd0af71066b30edc1d0105ec0c8d0bea0d33
Date: Fri, 07 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786096233
