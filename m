Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FFF312807
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782152194; cv=none; b=BSx7FWfIejgpWwe9amLB8oa/KOADYVkTSrcS05YEeIsFgicj3CtOvYXfBLkS+EdwJqK8jAHxlnkRtfBnmwbk9kIOXQc2UqfD9Ttj6qhkU2Y27yBYDd7MI5a0jvE8wZOwxoOW3p1+9jdTKBFrpE3knG8/W+vAJw9qLVACfsGkcwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782152194; c=relaxed/simple;
	bh=Q7wqZjRaMgW66I3Z08KG4Bo8QKTwh94P7VJ2VESX7yM=;
	h=To:Subject:From:Message-Id:Date; b=IPzWl7dBlgnDDo+NVoc0vbMzAbboWLKAxPTSU8oLZzOAaFLmxGvfGUJvjSGPpnJtmOzkgeR5UmHvoAqv93Jd9Z/iw+1/QYZsZf2FseNkckqfgirwVpltiY+Htsdw7hC9kbS9y02JQNDGLO7NhDfh4K0W349uGGub3GgRB5dvCmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv9RExgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv9RExgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCABFC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782152193;
	bh=Q7wqZjRaMgW66I3Z08KG4Bo8QKTwh94P7VJ2VESX7yM=;
	h=To:Subject:From:Date:From;
	b=Cv9RExgVgdjWPUYBRsRYW6i8KXNKFBGyqrSX6fDibsZeiJCN/p9D57/bGrh4NGfIp
	 7K+TiQLsswOOtLUPoAt/b8IpWMOAdPcbsRNGPu9FHXTdf3sDhUz+ztZBOexBtlnbOj
	 dedQ5UzQsRXPbixWy9GBae8BZvulekQoJ3ZQLtpFZ9+PPwtkm/TSYkSlIQyirOGamo
	 pO0uN0Q+ozLVBfRFhsmndXW2LcYTc82UxbeOLH/06C1rHDu8ga1GKXZZVSnef1fLW6
	 R3atI3g5uKsq2DTg0SdYHxBpWcWGZfB9C0qwZUjcpAsXsu6fpMi+K3/FMv7vOZ4iyg
	 qZ59Lvdr/HdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29DECDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215219372.31484.768863684685322053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d8592d7d311f923bac415b43037b0e254a255e07a029a22cc23c38067610f4
Date: Mon, 22 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782152193
