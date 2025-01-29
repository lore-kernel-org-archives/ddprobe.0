Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830211ACEC2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738189554; cv=none; b=aTLtdPcbkBNCYbKAINF9Qwu65EHs+TyEbtsgDATc/DntOTI2dDAQTsCo0PHTiIh0QR+p6SUV3Y46qhuyStcYp0bubmJCYMsnc78WK7l/TEsmVEMX28rAGnUHEGcjzQ0+/8sZwghI143LKnyTpyxMWez2nCDEu9TlsNfU0VwkLhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738189554; c=relaxed/simple;
	bh=gKyZFu2QRE25flVw8B7E6e1Y4c1Osl6ixpHiXvFDJuc=;
	h=To:Subject:From:Message-Id:Date; b=giFwycvz3rcmvFbfwGfWPhyECzV/LjxCIuUlVDAzMOWm5JpF8cs0Smy7tpL8w9l1Ab1o6PKoE50g8+cC9DJIL/uM4b6i6vsf/8EZblZoahgWw+Yu6UC5fxP3Csm591W9tLD3LRQjHYcg68RLH5rJYHvgk1I0iMg4gwtH6B1mzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPpHoyN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPpHoyN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C857DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738189553;
	bh=gKyZFu2QRE25flVw8B7E6e1Y4c1Osl6ixpHiXvFDJuc=;
	h=To:Subject:From:Date:From;
	b=DPpHoyN3a5q1HAaocrcZUYflA74mvMhfWE9EcYXqOkFHEiM7ZX6Syr8b3ux6GZ3tz
	 Em8GdNe8PfiF8eph1KltutpVj47CnrFS2GTxxHq1VqJpcB+ZytlCQXAFZ/7jOAonQm
	 UB9XFhs1dNz7/lZF4swTHYH30tasxbJS+bOJOf/FmU1aQKXXzg/TdxkVfc02ZRuTq6
	 tD9/BAcK2VEjk0QD4HI9DTCD4tRmv5g0mo4LkSQeo4CV40YXkYqQFxlodlRjbeeinf
	 ke7k2HB5+JcRAIqdZyftcrQzOLD2/TmL8EHuaKAjDJiAXcYyKMGAzuR1qLYu1yBtt9
	 LZM1wyoyPWK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91A2C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818955371.12938.10428918033139865858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df6be54e052b5356c7dd3473f419398953cf53685584af735725f5f9c9a8793
Date: Wed, 29 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738189553
