Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8A1A0BF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725356754; cv=none; b=GEBwGP+b2ohP8kLtO0hBx+Zk2XUde9pFF51unRGE6caqel0lZ5t3Q3X5D0NvLaUZtU0TixTklY+ZvCftQndVcb1JikSM1fY9rIw7FcoF1DnXgovzHZAIUDrY37Q6nGGSjiga+OtTOaeE/AT1jau6aMiyDfPF5dnIJANxINyU9NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725356754; c=relaxed/simple;
	bh=Kgdt1+HHJ4X2DdbEoPnp/CgElndK/9Eapa3AfICqYng=;
	h=To:Subject:From:Message-Id:Date; b=Gi4Gk2ORczFx03Y97TXFQKT/U7usJ3bB8r489+CPIuP+86I6r/mOA6bzeSudc3Uaf8cjjoHf1ppvVAgC4/u+pr4bFZhm6sS97srLeebNnBLjUeK5Sx5/WM+pvKZ3DoL8jFuG2MQmpwoet/VWiN55nOGIvsDXJi5B/pZ046NRyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeCYb/UR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeCYb/UR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4183C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725356753;
	bh=Kgdt1+HHJ4X2DdbEoPnp/CgElndK/9Eapa3AfICqYng=;
	h=To:Subject:From:Date:From;
	b=jeCYb/URb9a0Zo9FVagZ/36GqgA8SWn1x9D1DTDKoTHgn+rXPilpF2DubSJozbsd1
	 UiLW5nHlyjNQPMVyUMqXV780b3o9ncP9Eg7lTnomTgKBQhtN8q99A8Cg6q91WkXgOE
	 RjrpFtycXmBcuH5HqLi5tebgh//XuYUbVaqEcHaZrqUawuCqufV+TnMjdPKWwMYDEB
	 7CzgKN9MR9fUoyCp8tvVagCHymHT895ezw0S/83OZ7t4QOlB6LeW5RWa/qHBf9ZJsl
	 FfoezwRq2MOP1D1sbhmf3IifpaZFlNIaRiz1efpWnrls1wByzmNaiuF0vAtEu6sYn7
	 lvQ+8OZjC9nkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAFCCD3420
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172535675363.13977.13616549988091826199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c696b9b06fb4ab32e416f1500c606535715d6cc5c177f21e4dae4b1b59840ac
Date: Tue, 03 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725356753
