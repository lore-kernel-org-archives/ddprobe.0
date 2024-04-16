Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0D130A76
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713282563; cv=none; b=r2Qt8BiGZwv4UHdEksiI4sEwxVwaEKOTJrPTzGjo12URgx4j9Amb7syEE/HYyhmyOyYgSw84ADj2lMrqWmz0+lxFzRwyoE0fxotZA6wtbeZpeQdYkDI6Ucphnw8UXxOHWwTv7+CNUnRhPn3eK1nEVwnOHA0saeFXpKQFHyKYqDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713282563; c=relaxed/simple;
	bh=uGobHKLXgVqmVl3DHF0fQ1R8K+FHa9Wex3dWcthZ1LE=;
	h=To:Subject:From:Message-Id:Date; b=NMLwPCQ/3iQ8g7H28EdAtWSev7hYLE7uFbnLULrjz0H7ALw1dTuKrMDrqVLWgYr4DGJiN3bHufe5CZmYR7zDiSezfV5sKAsxBDBfO/wi3KoYgRwP+G9yYhXgv94ddnm/GNPz6Y9bj4wvmVeeizU0fdaCXxemesrkLAM1oP4BHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD88HNgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD88HNgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF077C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713282562;
	bh=uGobHKLXgVqmVl3DHF0fQ1R8K+FHa9Wex3dWcthZ1LE=;
	h=To:Subject:From:Date:From;
	b=KD88HNglzM8dtW8Mb1KRjxvcghUOJwmLCdIE44VhWCdBZ/D19kqZlQ0sAPQuAVqGh
	 vSu6w3dK+K4ED2kzYBxtOlSeEcM6lPygOEdP6eGXJUX3oC17Ge544G3EqsxapYWhQi
	 unBGLPomltdVCaZYxD4OoMLynEm2Oyx2JjeyCywmm1SIDyfLzKlDFLLOOl042uQnWn
	 3oGnkR5Hg/QgYYqniJPRMRMD1fTwLR4eg6GqmujC+8GeCQb9VUWdjTV809FAJovnFZ
	 GwI5MU63KfpWIJpNrbcgzGRIhkczrKLYeHiNTGP/O7GdK+YfunNj0oS4CEfxaPOtIz
	 UQOxWp/oDv9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E18C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171328256279.24971.15727475835795772733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d0c471d7ddef93374b1453a607c8826f5b35e78dffb9906256bf8afdc0ffac
Date: Tue, 16 Apr 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713282562
