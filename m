Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BC17C8D
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724022354; cv=none; b=PjfOfs9wSHhBSBjYOlovHaFXL24NYRJGFst2AvKv8HTeOKAlJm5znyo5TFeEXc+y0z1M4OaH6J634mjtH1nuntqSpcJlHeLnF6zBExZf2fcCzJtSmfPI3nrT5TZH/NjtrcxBCUjpKJcLGgP9061PCLFhER9aYY2Hykp3PSCLr8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724022354; c=relaxed/simple;
	bh=VyeW86P7jRqeVHvg4tl6T00GzLpkbBMWjTrN1vX762s=;
	h=To:Subject:From:Message-Id:Date; b=i3mPYAPtZgxnkc5c/8hH1P5QjWdw+y0iNOKTzdgaEvUmQ4Uj3oxCsF07EAJm3F8V7TiLz/czcppVP8zlc33Ng6G2X/szmq2EMnulhZNy8sA5PF+N61LHxsa9o/F6gzEWQkBgh7xRCfmlJuM52F4aVx2ThzbqHIhEPFbkCp8KW5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=je4XgUfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="je4XgUfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8F8C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724022353;
	bh=VyeW86P7jRqeVHvg4tl6T00GzLpkbBMWjTrN1vX762s=;
	h=To:Subject:From:Date:From;
	b=je4XgUfAToXUFs2MYAMiLujN81ag6xKuTJXHtfqzJ8XF8s9HmCnHtKwtwEBfXLZcG
	 rFoaWWHKEevYNG5aWjMzFyBcvbZYRjN3vYAB582uv6E2C5yEbjXXojacwC1tqKJers
	 +CcvQFAkUCIEbC6YeQzBFxaWa0FyhcC1EkpVWuyz11zeGFY/Pkri+khheBomrtvVU4
	 h8P2aidvGxXG5lUC1G79W4g7KmHEZ7IeenxwKNgrR6535j3ZVRSWwXt9Lu73r+TSWz
	 yLEGjChtL6Yg+/AxT09R6pl0WChniduIqiZdr4fpseyLsUaCYgogA1ixd862buxZvA
	 VBe/QMDlQT+JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDC6C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402235368.13176.13944149796672943565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6368e2e0e4a9f27ed7bd1e920fb132d5e7aa5d5622405db937005ea4be7b6294
Date: Sun, 18 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724022353
