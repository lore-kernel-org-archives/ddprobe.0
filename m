Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F3413CF9C
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742754594; cv=none; b=gQfXQQkoEzPf5TN8AOP55GuB4dvFi7I2ko+aQseA4p61AmMIfSZxTC38Dh/9TfxzK6Hkc9Dukrt6EYe73m5rcZ6h78cNpiSUre3QT7IyTU2bHTQqwcSKOMRi2ZRlARHUgJ4amz91idElQRC9Yh1ptnP1sX/McjF2BnLXWmR/nOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742754594; c=relaxed/simple;
	bh=bVuNmRBKkxnLfmGDM566U+31vVWAoJREpje2C7831gM=;
	h=To:Subject:From:Message-Id:Date; b=JanB2uByp0QIlD1BzETNeY0NXiXrpiqUfx0g8h3ES/weW7f0girB4V+nHAavl8HzZ+jXuJj5zW1VYLwEO0vumX7NCzFJ2WngUVsTQdaBHEB6ItU+H2FPOx9CHEvuMhvh/DvDA/R4sC/m7iYw37ye+lQrn+gqTm+8V0trYsU8An8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+t26+tU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+t26+tU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7870C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742754593;
	bh=bVuNmRBKkxnLfmGDM566U+31vVWAoJREpje2C7831gM=;
	h=To:Subject:From:Date:From;
	b=a+t26+tUIic92831CRRDr4et5xZ/YHXv7AEUFXCg+5KIREk2TEMgI9Qv/RGItlBv5
	 Vs2lZ7TqMo369KFZJ8OJNE+iVPOzEUGgkRmqQN5vK0iOzC9JD2yigKZJB1p3PAYs9N
	 qBp0TCbFGq32YPPR+UV3lYo9eCq6wEvYKJfdEBdLPDQVzSxNMC29NnVvigq+LjIzZI
	 2AnZL0kbaOH4XyTeP+6YZiairr4twbzE2Yd2bQ/CI1R27jnxeIVogLEDQZhFcx3RnX
	 pBbvpvpVuuxaa4h5Ph3kQJxzg2vwEtDkicMvAO+ywZG3jR7urY9J3kwC5LITM1al4n
	 YxII0WPH4TSUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD864C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275459369.23636.15921206500587002946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb786d0bb7abb500ace055d2e44af49b4363aaf167cee6c76716447764fc39e
Date: Sun, 23 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742754593
