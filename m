Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F6F13CFBC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716887063; cv=none; b=FjRl9GyrSfNPoJm82SdMY9da2jeJNg53smRR2y4Ud/oao6Ci8XY3jWOeIX4G1uI9uTWUhQAbqE3xqpaPZSLtwre2LV3errPGJbbo3ugkKNOHXNIQ6bxFEDdntzVgko2uq7l9vthfk7SvdV5c42M9JS2V5ifouNDDTPk+Livo5XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716887063; c=relaxed/simple;
	bh=2YXv9M2WSTiFVKvgpJWFipFjBZOVlHQu29YlgY7cMOk=;
	h=To:Subject:From:Message-Id:Date; b=Z3AvGm8TWcRZeCxMnY0WwJ44KodOmIVACfJcMFWbRsCv94vKcOUlmjzsP/o1jS+iWE2yT3tQ2szZS4dFzRQX6I5wmXNwbCxRu6cwErctFQceoCdKOEfJ5CUxk1MGJovtgHsAT4geLHXUXeLxyjzUcN7AWRYPiyQfoNFpeig/IVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7DtMOip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7DtMOip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EF3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716887062;
	bh=2YXv9M2WSTiFVKvgpJWFipFjBZOVlHQu29YlgY7cMOk=;
	h=To:Subject:From:Date:From;
	b=B7DtMOipF0Q31TMP6hobNjp9QbCYK1ZiZbC4UIinXWE+7jNyKjEyHMBZfGtw/Uqxp
	 RPd8BmiiIe4QGRi0VM9ZKsXijFllPJzpZJQ7UAwjrzIWFLYWnbEWWZE+NkEFBbtEfx
	 J9WLRyWcOZmgvFzPTGbta2KnZh9EErI+i9MqomlsivzqJBg830avPLJDrHCH64AMqb
	 NADQXhQdx9Lukt2ZiFHI0jt6FXcRHGtOiJ8+Kg+/16rM2vWNeZ+iiKJp4fzCgsTQee
	 aHTmslc0WSocJchRx/tl1zob1fcEdp95F2SCnNQ81ahPSKxdQCK3e4DEoarO3xVjSU
	 I0Flof4UgwTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3586C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688706279.27668.10518206344188800003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2fb7b63e216e48bfb7c7851a992e50b3bf20bf9dff9b96c7fab9c0542b6e957
Date: Tue, 28 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716887062
