Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67471A32
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716683063; cv=none; b=byKgNYt5PBxGz1BKPZnBGvglTq3qpIFEbpuuVtnnrTif8njSRqjRO7A8ApFzhPJWwDfiTeOVl8NIkWipEcwSn905bJpFIKXgbmotQnug2txMJqJGE2GFgr88UAoiFrR02fSFIH1GPQgg+GIUSCYEO8OpwNcAmVlT4Q2KfBlTins=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716683063; c=relaxed/simple;
	bh=bFOJR4jR79y+OaocEKSdcBcabZJ+vhYMbQJ0QiBKthw=;
	h=To:Subject:From:Message-Id:Date; b=o4dzXMXD+sWnDhR1EPgo8gD+iJvf4fL2Po8YeUIrkdQoosY4nxim005a6PLt5u1QkVtPYJF+8wPCoqon4MLEbrzutiHaGZfOx9qNeBnInL6ekurOvqLnp94Ru24SzspAQASPy3HGmznEX6JqJ4Uxbe21q6ox6Jh/fmwzjw6mkLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9MsSrvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9MsSrvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9981C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716683062;
	bh=bFOJR4jR79y+OaocEKSdcBcabZJ+vhYMbQJ0QiBKthw=;
	h=To:Subject:From:Date:From;
	b=T9MsSrvpgxlpGtgbz1Qp4X19UfhD1oPYAQ2AinfSVOzRUTNkCqf43J0gEWnRZi2+g
	 WlgD0Naoo/agRmGVrl4L3nJDAD4KELxZ0J8xPI1D4w6KiujX0wkXPyR1xrNRcvxDoB
	 grlc9H6yMp+j4/7vPW82awpLviia7OrPLg4M5Gy6PY1jcaIm7iX51doa2HJymbZfxd
	 cdWODn9LrqaTpFxbNIAsAnpARp2bH3fLm7CdZMDYPWGKjZbzZWiku8xIVo8fpY8K3B
	 +VpvvZQ7en22yTvaosMzwk786Mu4WZohY0rKGRZmmLvTpWbBWbtPrW0GFiFWXRW89t
	 9Gkxn6913yMJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2EBC25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668306276.13122.15613052505305313950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b376c33ca6fac152b1a0aa98d7670afeb4e27e9d365f045c7d7f9682db485914
Date: Sun, 26 May 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716683062
