Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567AC19CC0F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791185434; cv=none; b=dHXY1kiRxrgvr9gLDzIDTUA2SRXWX8kJZe11YzL/71HelL6/Twnp6l4ov+TuZIS5Zka04xKWnA6gKwD53fZA2jfuCRO2P5T4hdNzHDNfFWiM1Umws5unBBYpDOMEtUf8VvKz9Jo9qlpe/JSBnJ4IOh5IBmG7jaPAUzXtAGiHPWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791185434; c=relaxed/simple;
	bh=4qx3zCETOXnU3iN4CKY+wBmxKUGQ4HaRbvqWRCnc0S4=;
	h=To:Subject:From:Message-Id:Date; b=OTZToAU3ADFXbw6rDG1RXu45TMoztvPhcHeEjdSnqLsY7D19A33BiVQFJXJtFS0iM6yh/RzIYJun9LHyRqoDbnYZMmCNTi1lFMWp2l6is6Dgo0/hMXKpsw855PYzc7e4W56/rYlc+p7Ndc24t4u3nLSIR4Xkp3+YzTg+OIpSNfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkJaiNBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkJaiNBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE051C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791185433;
	bh=4qx3zCETOXnU3iN4CKY+wBmxKUGQ4HaRbvqWRCnc0S4=;
	h=To:Subject:From:Date:From;
	b=RkJaiNBRXQ1TF9gqGooSZtxXW0fNdg6aLfZfjPoX/KeO0iKTIFISay4D6YPD0ntKm
	 lq0RhuJywdj9MnNXYVjKpc05IU27mYvMCiXkFe23sxwxQuS8L58LaF7DwCkpbhr2i1
	 y1YC4uR1l1kOBwQhYBHpBDs7ZVFGikTNzE5A5UvrlifxNk68Rlb8n5vHXyzhQjMr7g
	 DjrK3H+dV3KJ/kzWD2oqttPmbiElagxlmNbye1CxYKOezCSqyMr9kp2iVrlSKKiOJ5
	 fJjndottZUV71aL9J6O70ipS7AKRB0dcOc1MzPogrUBkiVSf0OlIV66fudCScLKbkN
	 Y8FICtWSBvc+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA249CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118543368.16123.10673761574145671076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78697b758eda0cde1a9432b55ee63423cae49e025f29623bcf9b773a30d6741f
Date: Mon, 05 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791185433
