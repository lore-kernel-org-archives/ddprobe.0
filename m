Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC250208A1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710065897; cv=none; b=mpdW7L/KiyUvHUiP8tc+Lb0+2L9t0h6AQKmr609EkfWQrpmUj5H1ZdB8lVRw8PjDfjw8/xNsd1vlkXchO2/tGnVP6LlVfnPSetJv/PXUV7ClQYYrjzpozIPQnh2mkmeXJgnwFgEoqGwODGuxSvphJNpS8610jU6mVCXNO7YPUj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710065897; c=relaxed/simple;
	bh=u4V0tAohotkDD7SEFN4RZlxapAt5zdbopG0lL7ZcSgo=;
	h=To:Subject:From:Message-Id:Date; b=l0SycOMMGB7vkXqRAw3LVaZ8l2FIu1PLTGjU5T6JNjF46K5ljwgDBJoIXMTfwl5t3nvGrfohXswb5zp3jAerbRYeGXPixUoTJ/YpEQzqejxKiO+uMwWZC7VbphNNANq/LvxPUYonIB76OJ5sa4avMcxZu1f7DmbJ6FmlEySGghM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFNoxtaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFNoxtaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847D5C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710065896;
	bh=u4V0tAohotkDD7SEFN4RZlxapAt5zdbopG0lL7ZcSgo=;
	h=To:Subject:From:Date:From;
	b=TFNoxtaDWkaYSCqOYXML6vreiQak+oZX1ux8oya+5aPyrcKcNE3Aq3jHPJUVp5fH+
	 WS+48K5ZRqlI9OezQMA/FMXxo27roVgNjZ2zX0mXwG5Wmff+NURKBdvP9QxFz5LQL3
	 oOUr5IDPkfJ7rWTrtYHzpVRIR6yySUyuaWCaXHuD8nC9X6CJWLI8vJxmhnUiE+WVLM
	 2eI7GoAP10U2WjLEAaJXKFF2Rk8/KZpoVvvp3xjnvrHwRXPUnBvTFIlA06hy/h603t
	 eXQTq7bqbpTSsP/ia5NL6YHMLPq+kz2zT5Z8ftKaaxNMybsGZfAWXrxL6pW+SrMKEZ
	 dnKi+J4kWwaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698B8C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171006589637.28977.13712676273583009383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942bf95d09b2dce40f7f80cf2fb9d8dfe28099776a2f6e194b0af678e09d3bee
Date: Sun, 10 Mar 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710065896
