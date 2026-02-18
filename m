Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FEB1E0B86
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771439094; cv=none; b=nv2SQuhZ3UQdXcabhljN62rQJFL5VGfRENLVUYSSb6fwmsq3ZQwqrRGvwLpijYKasQh8Wzh5qox166uSzcJfaCcW+Wz7NKjOl6Kr0mHfjQVcv6wfQe4ndpcvXVWdW5ZNwoduL2khI2DCu72e7EdHSf8QPKLUExaNq4Oj2yG7fRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771439094; c=relaxed/simple;
	bh=FP2DlTWUL7NBbXaN9JGa0THT/s+C2MiEIEdP4667P9E=;
	h=To:Subject:From:Message-Id:Date; b=TLMp/SNIuL88Hu7mP8in/eKcOofrF7F4GEq9Asdq+YU6N5PfOW6ftO15JBSB3c544lXTRdjGSjXldgwHzx1yxOWh9PO0etgeM4BNcEZk0rER/9rCw9VcZpuWVr910p6h5FJBw3OJuMg81jHLfgBOSE5zYwFDsulepSx056slklA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4mB9fMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4mB9fMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9945C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771439093;
	bh=FP2DlTWUL7NBbXaN9JGa0THT/s+C2MiEIEdP4667P9E=;
	h=To:Subject:From:Date:From;
	b=k4mB9fMs0BqOAio/ZYnfSwmCJtzNqtCu6vNqVnEKtmjOVMc4dbHX2O42fPP1XpGx7
	 fV4iIdq9czziJN1JGUk2As5QdIZ4lDBQeiSLj6gl1EqNLdKrUSQumsS1/y0OupnCa0
	 xWZi9i3KY4DHjM+S9FjVjvhivdetDAIvseTHxR8dRgfTso+N2tGQV94Q5YWKS5C4HC
	 ZT1t+B+p8/IYn9HqSfRHlLwIlCytlE/IU5+3Cp9uPEtoj2SGWRTQTVqA7aoaQ58CFX
	 MU+tKNcNJTw2fv6yJACFnxOHqdNomYx32i4Z3rKbI8V0kcXirlW+05vBzw3U0POzmY
	 2q48A7lU/M6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971CE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143909359.30952.8572390034884090180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4e47bb1551b3b2327287daadb53472098bf700efbe1effdebea7a560867382
Date: Wed, 18 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771439093
