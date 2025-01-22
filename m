Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8231C5F35
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737589554; cv=none; b=iKeVXoeNsBtW4MUef3MRLiDSoi1rZATyfc/4Wg81K6V7dzpRYnlQ5pdqlnwgEkXyEMXRIEB1Xk1rh78xbCJACAAxajxfNMgFowhv+Fv36U5OH+m0a0yKCccKNxfqYiDtORyDo0QaUlBG0ZQo2ZQAJwKHmpaHx9VU7DANp5ZxzCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737589554; c=relaxed/simple;
	bh=Zx8CbqxLOynpBiCzSKUR2ubjfipEJIMDxM/5lcG911Q=;
	h=To:Subject:From:Message-Id:Date; b=qQnlV5t/VwemguhMrUmzEBqzrDgzFzD+l+InqnuxB9WaAAqe0DS81MUoq5rl4tzPJi/33koTywcuvQsoMx9jFR36BocMFtzQcXQ6WOEWfOCeHFE1LWG5KrjmeyV7jqbrQ65kTyJxnL42sOnMlslTwLeOSXh/PMmpuG5NIU8/PDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCRjkFlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCRjkFlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB7C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737589553;
	bh=Zx8CbqxLOynpBiCzSKUR2ubjfipEJIMDxM/5lcG911Q=;
	h=To:Subject:From:Date:From;
	b=NCRjkFlq8TvBjv5AAeZcECVxYurnLk5P9o5BJ85sEBANsDvDcDkdFECB7Ww865pLk
	 GldxlQpqUfrC1DamtZanDo6veWq5flg11bZOZ7zLLcYliUXA5yuAfCL+2ghdul9DPZ
	 iee6g7taMHYZJ85w9FqpyDz+VVQtfx0zdFsUfkIfFjH5Pd2gVf4eIAZakq2r9KgnES
	 gJPbm8cg/vYmuHBkoSijCpkClV6YMXRSMvCiYfdbKqh37rb5x9YLEPGW7G+pvOokOV
	 cJPpSkgWLdgso0yEYjOkDnOP8Xi/fR30yCQfCVG7PBJte/MRiyCieFhkrPtxcFMxmd
	 6PTqyPsNC+hDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F349C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758955358.17441.7938614897993461406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5216c2d75a65b10f05f82c80c346241a6234b8911d91b64aebc51b0c2fee78
Date: Wed, 22 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737589553
