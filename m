Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0EB311C0C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809773; cv=none; b=UheXnu935jta6ixoeDdjm87fpDP0vRJ0ihPk2DSwXC0uBNpjNBh5QzS26T2N1BAjw1OGxY4jYkr06Tnik8UnGfx3e8wEWWfDYOI2bSSpDyri1ZkbM+SK+SGwe8tdl1RvIdMsoD/rboXKDlTolL9T27ZGpYcjFirDEgpzPfu5SNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809773; c=relaxed/simple;
	bh=x3tcirweg77O9GnOhJwjUeoiheFxgQA7/AZ6QSuWSVM=;
	h=To:Subject:From:Message-Id:Date; b=KpDfIj1HBL6PtdqbO1jfeWyEZsWDp7WS0afg8kHpuji773MC7GpvRHQhQ+abosFwfLGUDvXqREaU6JmfFXWoS8MiwMMbZsQoidGH+9sIONkyNJzv+5Y390nOt3tltleTOy+yHcygM05TEQU/1diZsmkhh7as8hglBBRocf3ZfGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv2wavz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv2wavz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A69C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809773;
	bh=x3tcirweg77O9GnOhJwjUeoiheFxgQA7/AZ6QSuWSVM=;
	h=To:Subject:From:Date:From;
	b=Lv2wavz6NHtJ1IxEXaLw9cRo+/m25mxVlD7jYdCmXv0QHS9UyDMj72c6Qkr7cEv2u
	 FIuT+RmKuPsseS4pk1407IoPPEA8sbKkf0BEHVdZepbwKPy3YsPILP2zBxyePxHVZb
	 gUnM+9OKDJNdSzLF6fx6aylUtrjWUHfmNnyWKKa1ueItjKcnOexs6baEz6u/A/omXr
	 3jxWAeuqFVPx14sOwhUuvz9E3z/GlGwJTrUjrZvJcV/xIkdLn3W+lSTL6yV72Bsa4v
	 b3BHbLJmvYjrs9sv3AmOqevQiApNPosjx+WY1a6lYzY5r7YlV2bx6I4RcOjLu9PkvJ
	 FOy0AsvS7SRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92498D5B172
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580977359.2073.14760306751647572521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71645b76e686f9dd9ce7b308acbd68cb521c2a57fede72d9c54a4ac5e922b2f4
Date: Mon, 15 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765809773
