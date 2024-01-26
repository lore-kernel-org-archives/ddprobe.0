Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB33BE49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706247497; cv=none; b=JuzTAoPxQ7jzl9ccUK8tjdZ2iOUsf3ztO9iIVO+CKqaMEQIZ48anOV4DeA1F8UO+7Ev42aAX+hBhBdTtrG8//zZcOHUJxt3xbg6B/OI0w8HpFRjsjphfqXBR+/QbPbQrAqw/0eWGFMmHRIdgq9pNu+SwiJruSzdxcvWF/k1bYS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706247497; c=relaxed/simple;
	bh=s9MQavS+wbMzlU9WQpNvMQox5RBcg4Df2fOpqKPq5iE=;
	h=To:Subject:From:Message-Id:Date; b=NGSYw5uXZw+25t1btBdKG4nvz6zdhW6Ke9UmEl69VuSxbD8dlSy/nNciTcIyBWxBvKuhq+0JMyfZm/pbVlZxSmJWGfddiuAj2+A5I92Pxshw9Zq/QpfQdkWGa+heSsJmqHgzkKMpUKNtexrQjWWZLSn6mrj9G34INgK7GvtFWyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyp+5uRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyp+5uRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D2BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706247496;
	bh=s9MQavS+wbMzlU9WQpNvMQox5RBcg4Df2fOpqKPq5iE=;
	h=To:Subject:From:Date:From;
	b=fyp+5uRaus5jJu6orGG3J9T+sMtjHUoN29Odgf+oT9JoE1sV//dnCUE0l6Tezzog/
	 USpJ+PstaF0ZiaIyiSuGBPc10kI/Qsh4UeeZ+A4FrTNiTawzMHCx6WJsbaJ0ESNDuN
	 gZ/aXlVbIGBHdKAn9P1pJj540WOQc13IGssqG7l1WtLguKMUNG8qZTV929vSgazrhq
	 neAeLmAolRWwmc1QxDHNJY7BPPHbOOkXaOPs66NgjQ/EXl3Z0QNYFdmd7Uj8yypkeG
	 vxFP2FPa6ZyQdLvhRoxVpESG+V02FvrfTjXYsQE4x9+jM4hZumCRB+dT99HiaK79NE
	 S/6YbqhudEoCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF60C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624749636.7277.4170242041976118987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28238788d04b3520b9a2e608dbd860a89d4274bd9f3519748ade8c6e33d6072
Date: Fri, 26 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706247496
