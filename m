Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6329E10C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767350634; cv=none; b=pYa/QuTa17HTwU38A+hSNcds64VDTp93ho9nAfBS0WToI/x7VK0F/RBYWcinBjxE/zoZmcLQ2EhVzljABhGxFItwEUpxSzn69/x8NkTL4OPYsttdkbNnloOj4YVe+TH3NTVmXhXtKebNeKbLTBwfNDcj+C34fm7h7VSOlCq2EiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767350634; c=relaxed/simple;
	bh=KMWhIDKgGXYYsUAiOInjNUh5LylqWiy5x2/MHcYeMqU=;
	h=To:Subject:From:Message-Id:Date; b=JcX/fDKaz9/E3axcruhWmqlCSbSPvO/TIgdZ6RKc/qKrArf3TTZOia12xHRyvfC3FDEAPMdOcFA1I8VR5qrmzXvM/jIi0cEnI2GhiB/BW3PGqLe5qETgl2f2kx88tM5GKLS8rjKoKLYSYdC6bUlMWZU9jtmYiTdJjdWwwzXZy08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxTyUXw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxTyUXw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ECFC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767350633;
	bh=KMWhIDKgGXYYsUAiOInjNUh5LylqWiy5x2/MHcYeMqU=;
	h=To:Subject:From:Date:From;
	b=IxTyUXw+rEAhfJrnPKJHWLaVSocLmStXm9YwOm3cS8rweo3sdBVJCTQ2E+Cx+ReKD
	 c7xIttNKr5FUdFBxGXzDnGCUONCNdJG0PqUPFTnRyX0OD+FbbOcWDX8MLto8Hcn+Ho
	 fKgsii+8YAXWSTCuD+/pw1WnGB+Ug2ipo9CS2x3TdMfQXPSfIZ/t7xUh8iqT+VjDW2
	 y9kTkR2kjUm5Olsnut76xyfZpU/FsMrh9F4KA7A4Nn1QAWl0iXBS+ZvLhNz39Zp5Ev
	 e4bXIl6a914N/gHngAeh0ugeRXneCsEaF6jOuWuW6AX0zEFiRvQvKfWd3bZAurK4XC
	 WxLgDkFTg7nEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203CE9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735063357.24816.15065614863740219540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da10d73a07a0fd7ec18225b88b9d526f01f83af5b1ce4428491f275b0df3fdd
Date: Fri, 02 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767350633
