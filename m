Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077CE3502A4
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769952834; cv=none; b=VUiUYQsFrRIPQ28oMimFUe+tXMfyMCLAHbGdWV/CoTZaqg3SLif0xfaaP5N2I0MCAwFppnQrL7Ova8/aw3DoFUjEPlA2l60JOAyukYzVhBIWhgSsNr35EJY/0Wbuh48649w6vEjUE/pMJX/q828OuepUrL8ESAHegRckQc13vKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769952834; c=relaxed/simple;
	bh=Mx4FbBsaKxmyXMVqcceArKx8O86Hsba3Xng0Xu48AW8=;
	h=To:Subject:From:Message-Id:Date; b=grlxNGDKxA9McaoQeWBRIZ0YkyhPPAWWM6wzL0bOcCJgfa3x+LV1toU3sCk8Eou9l9i2t91nz3G25yyUpHgcafyX4YIW+JRT3VEuTfkb+xpFhsnsSdp7fQXpvnWZXsjTWI4WJiyf45h5vf65KN8cOwf6akRsXt3zogLmIwjsRYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av9yK5gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av9yK5gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4CC116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769952833;
	bh=Mx4FbBsaKxmyXMVqcceArKx8O86Hsba3Xng0Xu48AW8=;
	h=To:Subject:From:Date:From;
	b=av9yK5gNSJGUULh1VQgkJV8gbREtA1biCYO+nma49Lmo/c8HOfde6Bu66in03XgZP
	 0d+F9llilnfUa1j+tdX+jTxizYzHrtGOXHDTdmtiOhdbwoezzJqelTyA44jAwAxFyX
	 K9KbDeNwXO3HY08Wy4QRckA2PTKlHDuXvZPZQut6Y6/56rsR7WjugOi6aPcYPTZSp5
	 sfRDrd1FroBTKeT/0kZpBK7h00uBPWoZTf2J1dRWZnDvVFg5d4O4Va2Zmf2CsVR+RQ
	 CGQa1UU6ABSdQ7WZaJ23LdN8OxDtl1FyIZ5EruOE34Cca4uIQEBGpXs3+t7JZ2qj89
	 Nr6zfpiS12u5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E3EE65263
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995283359.22419.17755485144760524457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7b153d3c105d64fbeb48d3710c2253d0de57a14ce824aaf888be8ac296371c
Date: Sun, 01 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769952833
