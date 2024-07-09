Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638BE13211E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720510583; cv=none; b=PvSW+Qn/Fzfzx3JJEJwnlQvOiLtIHxWPsLwnBfBoqtnH2TzSyhl+l68F/yxcoRaXJFS9T8osL3cDRc8YW4RI0N+0jS0KCXUo25F7GkIUOzCsO92DaVpWRZqwHsQhJ5PoxrW3YgzJ1ZOjaOnmoX2EVvakd2URUkro05oN30ksYAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720510583; c=relaxed/simple;
	bh=pE9eB0TDrNK0kFklW9dPi/Q2G6CAmg0gajOv1MDSrVk=;
	h=To:Subject:From:Message-Id:Date; b=XqFp2TmjrfPMCIoSpI5a+JNcgnHG5+fk0NfFvct1eb02JkfWTDVnXQR5Yklni/JBEiskTiPv1V++X2oXHQrQIUC2v4Zrvq9Z06R+GOki6Z4uGQwd9dM9hUFZAScdJ7xgrHyctbt7rkKvZSx4xLnJvGWL4Qv/05uSRFDqoSWr2LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAm8Tjxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAm8Tjxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D716AC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720510582;
	bh=pE9eB0TDrNK0kFklW9dPi/Q2G6CAmg0gajOv1MDSrVk=;
	h=To:Subject:From:Date:From;
	b=NAm8TjxiEQXR33FlT8uu3Se4fDOvcqufDUH2qdX2tilhLemu3MaTuGH4a3Tw+qBgN
	 LRHgFkjyeSXvVAg/Wb3ZdGngYmIA9f+cRMaPkN3dXtnYuZLWyjQeBx0i2/c25wxNgs
	 jzr6dlNanYcNZnFPd9BHZIn+Mc97eo7XbwNvDLvGHZuOdZG+r9ObbEc4PyvIa63YBQ
	 jF4mFchoe4hMVHMv1EWjgYnkK+IzPB+TnBcWaWsNP2mcteEkJ5CWNk/lh5plYEB2nQ
	 7fTkTKZfyW03biePJCBWI1oN/m+pumiwlu5xo7VCk2z0ZhSScKb7snmPHl+KytQA6j
	 iQYSxlHuxHHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8E6C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051058275.18041.3136955141448298995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3c9a5c40dd8d25532993c57d6a914e07ab2134c67ce7c3950608cad74e9f02
Date: Tue, 09 Jul 2024 07:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720510582
