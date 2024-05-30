Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F971CFB5
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717037663; cv=none; b=MPFnJd6+9VvxISzoU3G0Nt9ZKr13F3d0GtLvcIwbiTbSJw3h3IIvv2wDfyQHTmBNNviQqkjZUlAKA1bAQ1BI3SMg/vEaJJ/nmSsPRmCv3vjOaRiTU4PTB7K/kwLC5lkZsYyi7qNh0QVnfUQRat8pFpa59eMHqlYiEq3tYTAZY3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717037663; c=relaxed/simple;
	bh=dRdto92iVzjjfyu4CqXJBiel9LRBjQ2J8N/27L7sPGE=;
	h=To:Subject:From:Message-Id:Date; b=gGAGNdj8CilErAoJGd/tQQj1UNhWBb+Wx2IZnlnrIkTjB55zSwdtmFG29BhTWFvaUnA52pocRW2shpFj4rXM+UlragTt99YqAfQ+shmlq2N3HYE6bMHUTc6U+EA2gv3dNLLXn5fSO8DCInVXpPoMt5o4kz+2vNdJczc0cUb8puc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF23OqaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF23OqaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B5DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717037662;
	bh=dRdto92iVzjjfyu4CqXJBiel9LRBjQ2J8N/27L7sPGE=;
	h=To:Subject:From:Date:From;
	b=GF23OqaGD1STmIjeszl/8bHgDUE70klBb2vvBaCXlh395s/MSo2c8b8zOa/YRMlVe
	 6JcbW55uvlwgls7iGx+EZtMdzEhdLNBOG09fMeN7k9E70AruSH7O6QWxgJe8orIJ5S
	 g8l29oPMyzYMqDFckk2VYLZOaQjebakRZlyjuu9mGIENO9Zx17v/5h3GbrENkf40It
	 gUbtBbea36Fcth9hFF/Zpn0YJLXQlJSYUiiFnsvOzIbITLotDaKYUeACco4W67Cjit
	 Uyl6ejfXeKIy6JoG3+uQutlaurZ92Nv1eJI0nSQ7Im2NWipqTxQprhM6aawuDIhPs8
	 iqL/NzFTdX02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E39C27C44
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703766278.17432.6107580799523374717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89e3c2bf755d95e8571960f52e19784afb41e077fef242632b4582497e4a5b2
Date: Thu, 30 May 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717037662
