Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E0500976
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768755834; cv=none; b=Jj1Crn8vzKzP4NSQBJfhZfl8tNmnCZCOXehY9JyoXrVIZGLxiH75uItrGuelIhfPMed5tC5Bsz+Z0vmrFDlyib4wW/FCLFTG0B2tdXdA/CN3Vdc2vKIMFi49OF+R4LOYifSfhk6ay1ZPa9pgXnuvyH8FBsXIKf7bGw/4yzKXwWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768755834; c=relaxed/simple;
	bh=nTqHIQbYOxx2oQjncER4Lbt6DOdmHhfZXiCHHkfQuFo=;
	h=To:Subject:From:Message-Id:Date; b=OJ26IWIFol9/+deEG1QOvidbt6L047qaVcRengxsKNE88uqNwuPV2sv5rxk8fNboL97bFgU77kxf3DFKlrhzO8i6CO9ZhGd/c7bgYmW3NLxrRCz6H13WetFShD1YQ3VWnfDApNsqx8qstX2YdEAY3BAv/tHmsHhlDYkDzwojPxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow52BMsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow52BMsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A760FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768755833;
	bh=nTqHIQbYOxx2oQjncER4Lbt6DOdmHhfZXiCHHkfQuFo=;
	h=To:Subject:From:Date:From;
	b=ow52BMsdFE37lXq7D1zUrySqLoq3+TLn0++bwEX9Nz/4HYGXOgblF7en3ZgQgdlw3
	 IuOkfwmBfGm7mkyv848JSfAkTK1n2hfeVoBbsSQIP7vX2od8C+6moelAmFsI/T32DN
	 3AGiHhWyGqR7rWSM9/Lrg2ir6wSA3l4FCmlJBucCFdZNhZR5AbyF5c9xHuNcDVHRGY
	 MM1C1m9IXHRDpR0nruza+cgQDASS4/yYLkACz3lC8aSs6hWovppWb7DD3XemqZju+w
	 Og+O58Mq+pq4/GtX7Y7mWTG3lyfybJQHfdlfJAci9T02fUTWSWnJieDUUHFPgvd0Ue
	 XgZBZNQGJGLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AEAD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875583358.30791.18277707806421365281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e341f5cd26b55189301938514a070d168866c9f3894b71e1ad89b6f7aa376e
Date: Sun, 18 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768755833
