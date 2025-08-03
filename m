Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F8A35979
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754258394; cv=none; b=aKXADkLO8D+U+8a6tsGXIOBZOwwSG1JiYIwsjX6LqE1fIkX3R8GBeC0zvrxZ9n3pOt98Y506T14WZBfqCq0cSnfI/ttzy1eGSsl5hZibuYC9fzXBvZcXxSouW1wmzWOQVF218GFjV8h2IYlsWHNuxMt4jyqyXfxgW0zYDHde0B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754258394; c=relaxed/simple;
	bh=DByaEr4U3+/fxQCtF8OWsZVufNotITbnaNJUmhXOF88=;
	h=To:Subject:From:Message-Id:Date; b=LK0fEI+y9gIJebwEUl8RmtkppYVHX4ioNuyH/JzoCfCh5mkUtAYNmuXXJN27as93cWtzoazWSNvYeo4Wwi8CLkoNXJAML6nLXWxGc1E1IqfXtk2Ge/KRgLUzHSfbbaweDgToYcSCIGHvtkdzXf4pgqGzdi69GwMVHnNo03c1yn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWWQTxLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWWQTxLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754258393;
	bh=DByaEr4U3+/fxQCtF8OWsZVufNotITbnaNJUmhXOF88=;
	h=To:Subject:From:Date:From;
	b=oWWQTxLuI8/wCS881dLRxOqQJQ++1Ykr8Hr7wa9tfj4If1za6rBZEWSAQGV7wBdE4
	 VmH7h36GKcc30FM6rczn46bYclG74fg8YU7QzzjlDlCuDbrWpFHjD07R77gpjDZ4ya
	 s0GRPScY9umRbLGsd2HktLdgoT5VU6moMRpcs7Cdl9EX1fV9X5YcIx0u09DNHmS1Yv
	 QpcalnyPNzwx8p9aBUa9LDQFT2gC4/YVXLgHcfS95AF8VshjPlniya/6jXywCtailR
	 3ulxbA14LOGUAsKkC71FsEdytLIyDWOq7i2c6h8oy0Qs+Ts45JQ2U1tpllzM5xRFFU
	 pG5GyU2FqIt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA5C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425839358.15263.8797301786068269252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c68f9162f67afe11fc5662b35e8d2d6a6f02e925da4b67b20cb2d6a3b616ffb
Date: Sun, 03 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754258393
