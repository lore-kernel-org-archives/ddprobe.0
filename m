Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBD926B2D7
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750760394; cv=none; b=GeByfrny1R1qg/7XokvYOIC2pZD1PCDLWQ5PB8mauBG4GpSDxd8JJqVYxC6ow3UPeoI2QR9nOXgEUv0dyYI46wHcS9DQMUCUpQLcS2h0n65oks2t3ODPDEyfGXrlcuW81qZ0jpxIN/oBUp7YmykMXvPvnNKtSaJ0aO/Ej7Fjc20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750760394; c=relaxed/simple;
	bh=lSTgIbKGL2ZkTC1+Qb2C2OcaJdwGow09dLCSTTZx7I4=;
	h=To:Subject:From:Message-Id:Date; b=p+3h5SvzbxFueC21JnAQGvVtmLbDwn4m4R5Un2MhjJ5k/JSBTtPq0lcHLIsnYEXq94OiQ3wVXzqT8bPVuq9f4LblLUq9XaO8GS2TMNZtpc+0S0p+6Q1cWjcHvcghixe94h7Ias5kQjHmSHJUlr8Fngiz8zgveYI0xmQRha02KIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMGt6tYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMGt6tYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0815C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750760393;
	bh=lSTgIbKGL2ZkTC1+Qb2C2OcaJdwGow09dLCSTTZx7I4=;
	h=To:Subject:From:Date:From;
	b=lMGt6tYx0Fuz3TCpNjVPT1VIz9dv+7Tf3t3fMNwbQShEztPNWFNDsLLJYz8KlFRpw
	 kynOXdVmBrHtTaYryWjWu54Ov9lqHFhOhTT2Go/eIYnlMKQ7JW09oUwSsiQLt4SnhT
	 +QlzWIJT3IwEZ36eFxgq+h7y0yfNR4oZXwJoOkXoXeDX/uO5XEkKGyxJN7jNp7cOTD
	 RpCyZPxbwKyTFaXYoha+QRi5ubiIUBY9CqkQmfhZcI9trUy9t4RCHmk5eyokVHggeY
	 qP5RYxHDfvhIyy8+x7e7x2pka1sFFXbNKUg9B/D+nf9BD7DjBCSbPv37ArFZcEIXB8
	 c52WM4Od3eNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D47C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076039358.23213.3595070956325604236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9751aed828b7ee0dad618622c47ad8223eba491d20793bfbc093bb2ea9d98a98
Date: Tue, 24 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750760393
