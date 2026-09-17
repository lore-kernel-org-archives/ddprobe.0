Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ED74BA1F4
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789669234; cv=none; b=N7eROtto+brr9lo927aSa1MSlSDL+AKuvqT7IeGzoB8k2CR81YTjph9CNI+dDXIeIPdIAnV6FiapXG+8k9UhBLnJjk9+sesmtbRwLT0GlQNYF62HmT+8EGsWPobH1M3frecL+g3uYrw63ygyln/63EGF0aU8k8iYh6yM/SKm3vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789669234; c=relaxed/simple;
	bh=5xKagwVznEh3RQncykTonSrdMHkDS9ukfOJFGgiD6aY=;
	h=To:Subject:From:Message-Id:Date; b=t/0kW8oly03PouAWPWvuisHobr2fVNKfwgTD2ivjwwk2kw+InsjhJPsjFw4g+OkEQGE18ZHFO+r+n/zEZfLiY4Ygc/11VPLQ+HdYq6gYZyp+r7dseyJANbqlxNScUj3mUSwYSPjwtwt52WctwW8E0hZ98WjeEcf2kcVgOIlZSZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsKKX+3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsKKX+3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789669233;
	bh=5xKagwVznEh3RQncykTonSrdMHkDS9ukfOJFGgiD6aY=;
	h=To:Subject:From:Date:From;
	b=TsKKX+3IDNkGA/lrqP8pV85fivGYhcOJsffZDxfgtntB+ooDUsuXqVG85lnkL5MZw
	 3QCUWaAOQ2ZjP9GQeE56ZoVdrZrhgYw1NFeE1j95cIAT4SE1ynVSI2GTAxRtOVP6jq
	 uPKOBQeJuCksr7em9NVDabe6x5aCscCm6btKkXw/6+P+N8KDTmhHeknXoP0oJIwKh7
	 6A8nxkrAI8x5FItO2IlRwwZDad5GhcPJrsXWmb8qaQKkhL3I+ektQU/axM57c/XFAX
	 7Zfobt05CAQ7egdIE19t1PNjOUfZ9Uou0BtlWV3SEN9405Oi8bxIAoQXP8pBm3LVKU
	 teh6FPQ3EY8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCEBC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966923369.3159.18046217745945690656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49683e01520337c6c991025c51e3a93860ee8e1ec5604d078f4420d7ed87c3a
Date: Thu, 17 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789669233
