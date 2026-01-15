Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C726E27B340
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498433; cv=none; b=BykPjkEkAOo9Ua3jgrDj09N51VMBajeZXsMiPxdphf1VBdhM6KV8n3t+/OTnlfryR+Wxzht2LZoDmh2NXbFRftHCpdy+lnGIgYu3XoOXXmcJolFTSSlrw01TIIhBX94GBtIZ6sBdUWfSU4fXigyvx4fnYe50IwV+dxHdNzzEgX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498433; c=relaxed/simple;
	bh=wwLQOUxBI/ZptrsCX7kKXbNK+XTbIYmsgzzEAI9kbAc=;
	h=To:Subject:From:Message-Id:Date; b=Rorq1F3SyjL/EC3n91AKPyO9kaiTScNo+LhEbWTsz/gNLOzvcMZMq0f1kvRuroFOx3WQ4x0QMcCET58FABLbeltY9jCGg7FgsFmuQ8VlMgJPKjy56WkQ0ilnPRbB5hQlIaIHgWCAsoqXOFNHMfRoGZL/we9W8+oxK/CromlR0NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8uSplHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8uSplHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C19AC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768498433;
	bh=wwLQOUxBI/ZptrsCX7kKXbNK+XTbIYmsgzzEAI9kbAc=;
	h=To:Subject:From:Date:From;
	b=h8uSplHP8EtpWNPsxfAjO59/P7fsyN1ie2DCMwWaFwHirzoG65KzmShYwKvRUWQZB
	 MgcUd3hMXh9LhjC6+LzJmwVOfgPzjzrfjjQFc/JSC32TuM8HaeorpP02Rr/mK9R8im
	 e3hAX7jlmKEeiv4vB89+O5f8DczxwSQALkGOBAmOi6veOgGsEjUUtre5MW69wM7xMc
	 m6FDG/lGsOxQWCqxrZHwJVCVC6PJusK6K86cngAgy1uiAJafBiFbrLKJSi433amAk3
	 kJF5StkFkX0JhEULxCaxC5oyZoxjUeVnLzJqRbA2dqJ7giaKs2NFWHhWNFuIwfIewd
	 7VsPskAWa0Ccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8ED46600
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849843357.32071.18038605175716568123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6899033c3344751055ca0f5d30177023be8eba4cfb02ba715462e7646de5f2
Date: Thu, 15 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768498433
