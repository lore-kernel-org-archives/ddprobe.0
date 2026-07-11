Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCDA3770B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783748314; cv=none; b=U5amXExcRlQkmO5qS1/BbK0+FjBUlBrb7G2lQSNUR/61yWDhOf++grW4BXIoRYb75uQ3N9ZqYMyM65hc1IRDaA0e/tNQNfXitegHx41inXb4DuiW4fkvtSLunmFGGPXg/saJLuFa3avupGJ8FnsRJw0+GH4pt+kYmFffI9MMxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783748314; c=relaxed/simple;
	bh=Bo/UgX6WTaro/hDZ6LJBidd7jAFJ6kQxQI32latbUts=;
	h=To:Subject:From:Message-Id:Date; b=S19WxfDTESAP274qTrSG8wD+9EVT2Q6A1VfytrqzLYlW8ngiwfibZgW+1LYFBMHESNGaVsS6h8+IsXJx+KaAjjlMJdtuzX7lGzLTkjTADF7GbztlQCR/sKI2TSCzIH1EQCQrmou+9Od+7axNISbqhfRHVuQbUR2fIPXz3tiqhxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1rGpvOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1rGpvOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0728C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783748313;
	bh=Bo/UgX6WTaro/hDZ6LJBidd7jAFJ6kQxQI32latbUts=;
	h=To:Subject:From:Date:From;
	b=s1rGpvOuv4iyn0BgIIxMUknqhJbE1yHkcXmHhwhiNSHo2QPGPPe7eMBUhptUfgOCt
	 3YSH0vi6hQNmvgSy7k7OL7T8Jq/kKVKO3ieZbc/W3L7mb5TpdAs+30lahrbHZbxClV
	 5dLsMQajV6yfUrp0eeGDRGy1cIw9rX8MzVf+o1tk/ojwu+1bYQtz0owAn/xdxD2rTZ
	 mke/XinVaIkpIbYAD7/fx2VgKIdYxHhsQcHbqr1UxEl28uQrAIydSxafjxzlWp0D0q
	 0ieKiIaeJOAL+nwbgs7+QBzirsX8iUho6WdtJNgUgtR1MiQ3u6YJ2sCJyk5YngFbed
	 xUEWZeXnIybKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF0AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374831368.29718.12385572757550470971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e533051378be902dd00370aed9ec0d6b8b9e467977b5a69d209bf9d99c97b5f
Date: Sat, 11 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783748313
