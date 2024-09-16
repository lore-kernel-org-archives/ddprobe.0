Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2900D15C137
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726529754; cv=none; b=UxW3GO4SV0SkCo493rDZ6stKVhvyDV/Oyji+aftFaCMh5YRlTwSZHXk5eKkTZvYhJU6PJYvn/SXtvRjCwJflWU2FJ3f1KOr2yec/Vo4rP/mNH8Q8jjRQcI1aUC/nqTDtYx/r9u/EvmKo39CNCHXvDNAqNqZOTn11JNX+ifzf+0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726529754; c=relaxed/simple;
	bh=UrMQj5nwLwwsJKfAgFVcRNlWrJiovCfY12pGWxIM5+U=;
	h=To:Subject:From:Message-Id:Date; b=Nts+WotJuUmR8utVXTY0ehl2+Pr+wC5hM85ZhmFwqpV+/vT0F0Hw6MS6YrkNah7lJ++WHmBtGgCPVPq66ekSvUfXOLCSRII0f9ji7NhSY8PHUTifjHtnwfps+bxMRY3FYdoLPikC+GNoCRZUCewBE+aTxp+t53ZH0o+QJsstoQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tan8QuYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tan8QuYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB0C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726529753;
	bh=UrMQj5nwLwwsJKfAgFVcRNlWrJiovCfY12pGWxIM5+U=;
	h=To:Subject:From:Date:From;
	b=tan8QuYp8la2RsiitVCeVaFikfuCY5Oxnhv0jqnW6IS+pr1gvn7QxmbHHgVfFUIs8
	 t24DL8q3vZl+NXNMfP3b8TWsA2JJ5ZgIXzR5lrUKG8Zp1Q4osZrFiySj0fie1tOxXv
	 5XkjrFgWGVIRCO12z0WixXRe1PkpS0+vQf5paHoCNI6XltlEDqF325sdpBd1Nfjce8
	 T6nbvTirMkjnXTry7zlEHcFzluG6H/qQNIsWF2L6BOvPa0Dzchk5rpDvWL4FaXIz9W
	 rv9wytWy5ZyfJ/SzLxbI3Oc7Po9POhM6vA3pgedS+JA2ojRaH1ssMbgplNtISfBPNc
	 Z7LpcPMsd5L2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEBFC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652975361.23161.11692144453292906905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aed5caebd3ebf60c7d001a7864d415007603753bdc36cbc3a3edc4f45ca47da
Date: Mon, 16 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726529753
