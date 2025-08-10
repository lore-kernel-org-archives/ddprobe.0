Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323C61E32B9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754842194; cv=none; b=rxE1ows2OxvzgajdxaBpwH4MG5BG40WLiqgpoT0li+M51HXh7xS8kHrX0t8SAQwQ4tbzEQe177W8dimsUnWmJUD8hAY+gE7TOT2+5UVFxt1DNMZcu3b8OtNwp5miEzMN+kRRNGSZgqQ5Rqff9Wo/0tt4lLS9nAtgPM+4Lp9H250=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754842194; c=relaxed/simple;
	bh=rMbSA7cSu1gQV/TEQ2VaSP1p84yieB9SYzlzQTLdiZg=;
	h=To:Subject:From:Message-Id:Date; b=HPf3mXiFe/49XgRGjpUdunzr//jXIgfzd8GXE0Dhm/agmLHF+RdxKXght8cFLv8OEysv0m0s6YjR0hjJ9D+qClz5kiHtd6awsQGL2PZfKZ/PMoS06COyApiSAqhTTZY4l9eqAmYjMaE2NSePpD5gY9Dz36tpRH1hr0a8WdpousI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/YzRzCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/YzRzCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09BBC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754842193;
	bh=rMbSA7cSu1gQV/TEQ2VaSP1p84yieB9SYzlzQTLdiZg=;
	h=To:Subject:From:Date:From;
	b=q/YzRzCQlIp8AFQOWaxv8dN4Ac1lWqn6d9hD62ufI1jclKZDX6pn66+riKl9Nz1WL
	 2kvRYjudScOLDoViVlwAFAh9v4Rp68Klq3vplhipj9RTRcr3e+d7PJ8KUdZ8RDurfz
	 e1vC3O3egZu0vOD8acyXueT43XdBgLsuCWRjy8Bx2AdkEP2mdS5EGjYu7VHJ1yfTV5
	 X+4/D3M3XrvernnXZXlVx8Y3s4kmiFXAte6VTDvuOzhEIBdEHwNgYV+V5fQfAmEwbj
	 AdLvtCsapciWTuuWt9oWygctBLwclooITF6gvjZfcgp64uG4VT7nk7duXFbihzq4tH
	 gWCwM/v+fmkAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2BC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484219357.8952.11826491314814869175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d2b48603b620d201208bf98f538fd364914c3d84eae9b46e1bd20de15a28c9
Date: Sun, 10 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754842193
