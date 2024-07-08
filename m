Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086631DA4E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720436783; cv=none; b=SatbeZRwlRF1vXeQMHCw5BpU4LRAVdqWIjXgNydLfFDHJ9/KL+Seepy5MCziZoUQItUdY1G7httB/uyKj7hNRddXMYnp8Yust+Xk4S2XvMUUZL9winf+cJynBjFmAZH0hzyYQF7kqGZnZDnUkJ0YVZicWQ6jbrSLdjIzMJkw5Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720436783; c=relaxed/simple;
	bh=5tMLLf6GD9cSWR8/MNVJAFgJA3ddkbtbLlkzfQ0wMsg=;
	h=To:Subject:From:Message-Id:Date; b=uDMghVyiHJfRclwKQml81ufXQzi4xZwGVXCoNnvRYjV4Mlv4xyrzbqy76rJogkGtgKZQONq/dW1p6KWuI+gnh+z4sM19p8z+mp3bh/v9Fufgm2RT2zDAr7MNiYO83qv4RWGmAH9M8njhAmBGJmCB3S5F10DLIyrOwQqyP3vzREs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1hkB4AD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1hkB4AD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DABC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720436782;
	bh=5tMLLf6GD9cSWR8/MNVJAFgJA3ddkbtbLlkzfQ0wMsg=;
	h=To:Subject:From:Date:From;
	b=V1hkB4ADG/dXyIIX/BvZYCCP0dmckKTpDJJy2SbvgDluHrdM0b1afACe+9jvG41bw
	 Z16vogtVq2wm7OLA/pKrbuYpsA9W8CKS+MfxAPN+AgdzDbebi/J77uJWzqmJzPxrRC
	 8yvAENeaxZZjvizZV/yfqgOt3FO7WeVWOVTX9feVJtSSBSm9zdmHAX6IJvaxvkR1Ag
	 4yZDcrPSjE5qxTP3Tc/6U9WRKwuqIkQdifRB5ic1JhIGoXvpREWUCsLqzTeeipM3QO
	 kt9o6pojjZAb4s6NaVXqlkYGOtFrEFOyN8u9T/bHLzqTKFb5HbaID2rffXmcd1sDHd
	 T1WA3YHXALmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0038C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043678277.17959.12347762063759823520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2747f5afe2dc2aabc3f99766926ba7f304f87fcf3d916a53737f4c2cb17d63
Date: Mon, 08 Jul 2024 11:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720436782
