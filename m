Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277721D6195
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766961234; cv=none; b=pJQjSRU+25JedpNEnmPzg5Da+5WykqHkSjxO1Ulm8tIl14rs5RqWmcU5h/CIKPDrb5OuXB2gdLljFXrlzvl3x11M9JipVWYrvFIpFNXABFRAA3japQ3p9O4YSIXE6HMKgNszIJziE0E4QiH/YO0e2bDKkJtwFYURZVGyuxiTPE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766961234; c=relaxed/simple;
	bh=MqOQe0XNL7X+j4WMt0484pJl9MBkKKzIKkTDwRFTBSE=;
	h=To:Subject:From:Message-Id:Date; b=jVM48xY0yP6Lgq2K0A+HlYYdYQOqemYMVw/LQ25sWYJbHdfpnKTIOIyCyx+7FHSYI4ufaStUQT1VM7rUJXEiPesGI0UvQcpEIljV+XKERfbvdYQ4wqf4RSuxUvybM/+gRmU2EHhh8JLkRCbSUu0K/kRbwJXyScods4j4lkoXgbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3qMNJ2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3qMNJ2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E5CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766961233;
	bh=MqOQe0XNL7X+j4WMt0484pJl9MBkKKzIKkTDwRFTBSE=;
	h=To:Subject:From:Date:From;
	b=i3qMNJ2yDchlvRW2xk/fHwnc9u+q1s/r0bhKajpd4P3WbM4OGEzyfJjP+7Ptd0KKO
	 rIqsLLn6mQx2nxLkPfzpp8sOyuLuXKCg3i4t5r56oyoSu0Qv7OAUaTzKd6ys2gNTEv
	 CesRb4wV9sLrgbCWgRC8B9vegkWlQ99EqAf1xzDusRgwFfeXn04nJ56j92mxrUMuHt
	 FSxOYVsdFRjqy86UPZz7DYJllXxsR0Z1kivxaJpXjenxVQzdJEChsVB+jGAfwB+9M0
	 RMsZY/OcAgtdKsYGjsUF0oH3ZAIXCfK7YT53AQylJOtvS5AAPUN+EUe5aPZG3K697E
	 l8T1u9cory15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D904E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696123362.6607.14490014338913088086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b018c70e9969f014d84d54ad6cf0ffdc2cf809242b3073e9e438fb9efb43e116
Date: Sun, 28 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766961233
