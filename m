Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09149FBF6
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758328194; cv=none; b=pSKWewmsmp6v7xmCEZQ4BrpdV3A6f+cV8hN1fR556UFv1FjWXIPzA9uAu4hZKr2BhwbjsHIAzjFHwu/i3T4AKT8gEzBeIyzrpYlwDCKsj73umuuNgHUahqDwRNgtgXTl9z4f3Jq12ozn7O6ltZRYXA9Yvc07rI0uZnKbZMuOSIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758328194; c=relaxed/simple;
	bh=Metlo7rEWmt99uvrq9m1hZnlWti+lyAQge6HIgtlndU=;
	h=To:Subject:From:Message-Id:Date; b=eJZFsa9uSEN4NvSevTq+dBUuE3A8/2RHzorUlvU3Le5cKNSTLmMGiHiAI/B0qIV4tPM4DTpHi54l1wUb23ZSt5HaU0l93q+ER9BSUSWUXRo+2razLDXbrK4jY1gPcupGZrlImq2TJk2k+XffmkJGRK/b4KopSLjcZrER0MMqdvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiP4iLbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiP4iLbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5FAC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758328193;
	bh=Metlo7rEWmt99uvrq9m1hZnlWti+lyAQge6HIgtlndU=;
	h=To:Subject:From:Date:From;
	b=iiP4iLbFLvMGkYzyuPksfY07aiQk+kO6JuQVphFPgOa29z0r6e0OjBKq/3YKFvqpS
	 3PrC0yEnReelABeK/NFjBMa/iraR83W7Lx5EHpg3cmzY3CZ0h/2Vx1LrUHd9L1U675
	 Rqu+AgRNIgBuMNU7JogSRFRYFpZx3wN33Xlp0axxJF0jJ4b8hi3Jn5usWB25/4vZnK
	 EE+zE3VLcBvcq4eR63CpbjDFr5tzIMLPW3qg5gwJk5xCXAQHHhZDtwtylt3oQMrYf8
	 n6pqkbZNhisIEpeiJvnCOYGsVBJ68Nma8T737cIsiyo4/voptlTQ5JkObNeo0uyzF2
	 hDVaC2vCMQhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F377CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832819357.23697.7733061949401436065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2553e6d12903b588dd66417c96d61667578879a99389fdf46a510ab5119c3b1
Date: Sat, 20 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758328193
