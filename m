Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555FB199EAD
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786368034; cv=none; b=M0RdEh895ti0Nef3PgsHQ8l+0Ryrx24SJnRKjnuY5wmFXa0qpAeb3Uys/DPY6B5VMe5niFx2T6vLDsWNfClooO5nw0szwlNvws599lYNgM8Eqlfaod8ylib0LcbVVo0agpRJgY8jbDlkrT9ksY7fBQd0c6Q6+zLRDDRFnudNeAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786368034; c=relaxed/simple;
	bh=AQ4MCgZiGR81EXTpodo59q/Z7nwrBT5FZvEgAVol1cw=;
	h=To:Subject:From:Message-Id:Date; b=olA5/GZ0sZwY9ZQPboEVtwKTyjdpzy4/oxzb2LdaHE5RCYswPU64SguF/5ingVqQWH2knPa8kX3c2TV66mlQJBnblAHij7PRkvf1wxhBHU4B1UUPwcsIi6UIfrU+fj4xTQj5HDudJuGETw2tx6OOaIg37oWZiAOTmbBxkRacfno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvTVKfGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvTVKfGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD25C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786368033;
	bh=AQ4MCgZiGR81EXTpodo59q/Z7nwrBT5FZvEgAVol1cw=;
	h=To:Subject:From:Date:From;
	b=pvTVKfGJ06eo+ZQhgh/IqMjnfUTUohEXHP2dzxXGY/XIyItiL9K6lLZZRMsEcLJti
	 ZUu+QuEYHFBvP+P4I4K2Z90HzcNtsPFGeJAacV1jPNHr/cDut17nDrsoUjYIe/77nZ
	 MD5duj19jHpZ0Da6Ab1AuGNrfChx+dLNqgF2ljDmPu/TDXnehyPF35xkILsynUxzrl
	 trHhXbbiypiiEP2XY+Ngbmkzi8NhuSMH8MfjgziUvpRWpq5noYITWGCgAdnveCX2D9
	 A6ZiT4/uS6l6F4VhyopfD8304o1ggOzJwbBpAniJgivFi2MSpg1aYruHA+ZsefjVgG
	 6U0BwGlLj98/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBE3C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636803369.22691.18111666972766972957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65156fa812336fa15ec5dab21f9d9fe1747f493f423673df26b07f157a0ccb3b
Date: Mon, 10 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786368033
