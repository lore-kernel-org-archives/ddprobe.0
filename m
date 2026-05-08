Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DB33D891D
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778255855; cv=none; b=gvCYudqRK26DouGXe4qIqFWtZXoixENg1Jwq0la8Wq4iAyPLAGw0pRtyVAIOhYp7MpVnC/6gFj2bPXTEa0oV4E9dBxC9ytWUkyOenxlXmYmCcJH7nEs9jnBEF2uvyDkqdl+0elUxZj5rzV0SbJBbh77gZlyjuEmUDAQKn82HBKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778255855; c=relaxed/simple;
	bh=Xvou/iz8ak8JkHYKA+Tj0uLZh+QqWV7ez/55M/S0+Hc=;
	h=To:Subject:From:Message-Id:Date; b=i1+cY/tWmDXr3MXNwxiFe3R+1K+/ow/krLXkorVOLk8fgIXrVRgiIojf+iJt16+Kkx7c6zaDvWL6C8YMy4sfH1wTWKWCosc9laZ5J6Ov3PU/t18Vo+S1sBYjrfaMp6xpJU4htr/QElvs0qbf0IkfeyBAdoZjxfH/O1pOs48k5+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6WJwm9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6WJwm9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D1AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778255853;
	bh=Xvou/iz8ak8JkHYKA+Tj0uLZh+QqWV7ez/55M/S0+Hc=;
	h=To:Subject:From:Date:From;
	b=D6WJwm9/A5xR0CJqwx8kHW/l0Lveb93rBYbuoA7RI8nZj91yGB4xbeF9OBrYijZBB
	 Z7jBH2t6R3luBBFT7WMfhoTfibb+RZINKZj/IhH+vqMjBtgLmr2154M0jLWGyID1hz
	 o+QkZ9SZyPROi3d8On9TjU+WriI8eJzHE0iZP0np5JqWd9l8MkrWy8hxO2HThHdo2C
	 pIipKVNc740OXwC0kTvySvvXlxILQAv/+z5mmqG3FXT6yYpzo3M1MN+HxMM7ny8UIa
	 +06P6FegnjFi8p/EFJGaWzziMiMgYKcmBov9faj8XQkE0CwSr6BCzMAbUvCm3r/WpH
	 f6v0h+qh+Q2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9344CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825585374.12242.17987529678782672408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce573417e5f346c8738de1bbf8c4763808d59fbf2cbdef2d7a564e52aa5ec90
Date: Fri, 08 May 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778255853
