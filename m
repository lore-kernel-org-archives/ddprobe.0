Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ACF21D3C5
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767370434; cv=none; b=iGozIXxGPk7vDrpT2PMhJgJr6u4w0mQqujj1qr8IB7+sNTgU0eUm+7MUKnEP9g+oCG7WPccH+YTcl2Kg+FoWxxTQ6U1/RFvfsGng0hksHTa7/6U52d8h/8GIlUJpde7YTr3abcq/9/dVw3MBC3Em4XMaJk0bD/+NmNXRQx5zevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767370434; c=relaxed/simple;
	bh=oHrCNFw5WUy07wJQtJERtuOk6spEz7+lOxXuuvVhaEQ=;
	h=To:Subject:From:Message-Id:Date; b=VIN4z0QSKze9fLVwznQflpL2Uwfi3BErRUY5grRSfY3FNR+w/RYhA2Q4NRLS/1Tn0hgBw4EP+6KGpT15Eh5ppVQ1lbbnlr4YWHLn0qJZm/rn8IOp+NeC6SrPhp+FM1EAKR0V6T5sKU4YVlDybMa+Xk7Nt+visSwy0ocZ0C+H5fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7NpdpHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7NpdpHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767370433;
	bh=oHrCNFw5WUy07wJQtJERtuOk6spEz7+lOxXuuvVhaEQ=;
	h=To:Subject:From:Date:From;
	b=h7NpdpHcf82xBjVAc0bqEAC6fBwBAlgoKjg13ph9M7OC5Hxd45eoqTW3Df5eB/1Xl
	 4/1CwK/FhGiKub/3tEJIHl/JUSDXUj3ygYSursvAc/1HMgSKkEkJDIwp1a8R4GR4Jh
	 /rkdUFcjSzmsIwhGf7Dp8nTAscledH4ETfZM59nlliRoNeJiWYZX7EOS77AE2DjfxY
	 YMIhWk+ye3zEiYC8y9f0nWAr+KWQNRZ0uM1400wsXtBjs6Kavth2oIxHP/iMXh6VGt
	 ciXL47SLzAdw3ML556mYBsH/qSk9azHTw4YOY8JAVqE/KyxscuXzn9vBuJY+KnXrXh
	 Bte52hn2XSd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DCFA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737043358.4307.16536684170105080490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2e8c8a0344e8d294cbfe34b21363ba34577f425fdbb1f99f118550f6d7fb82
Date: Fri, 02 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767370433
