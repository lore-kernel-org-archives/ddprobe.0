Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1BD1EA65
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754081393; cv=none; b=PVs5n5PlxXrGHiuw21/1jD3na0KTEIM+AU6/vUYGKrhASzBqPoIRt3zJJ0WHacbvFL1nLh5sAiZQBRAQG9pE2lCn5MB2m8yjO4n4hN9bEdxBQLWC7gWSTL799lur8LLSIkPEExOEiF866a6cBq/8ZX1E5OwiEOevAsrB1/BX+ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754081393; c=relaxed/simple;
	bh=fI6NklePmZsZrVfdaPVFgIunG7qaudCb/YkF2vjP5tw=;
	h=To:Subject:From:Message-Id:Date; b=F73mqdNB9XaKDalDbiYDe8l99xxahkTyaquLiPsn2wqo2IbsxCO1KsL1vbUqGyOFWMissVQNea022qfSkuvPLRNH/zBgXcIwASm6xb4mW/renjEi27ABZ3MKIifW3ipGEQTxuvBXfCj8xviZc+kJFyQgtMPqMi3TZftMnXO40Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwaGu2ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwaGu2ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754081393;
	bh=fI6NklePmZsZrVfdaPVFgIunG7qaudCb/YkF2vjP5tw=;
	h=To:Subject:From:Date:From;
	b=OwaGu2ngIwK67rbwN+EBTwn1LS/C2INicee3SJHhJoCxUgtoNEKm6VALkTCCIG+wK
	 VuLba4eVUZ8z+FFjPGzakYEv4zLsYlU1qtoxijRII8zgmbY7crO0Yr6TXVucfcU1PI
	 om/eeHUYE5HFuZPfHcRebPrH3eZqgsbV3zQlgbg0Xmop9fpwnZ9yJWkUArlmcTW2+A
	 aC+alO1L3O84RBbnodPS3KVvyDObEOko6QM9yxkxFQB2bCpikMk8+4u+NDSQVAGeEL
	 l0SFZvgIs9yoX2VOTiHDuXMVg+jquYI83G83cRtpxDux/6n66fMPTEu6ZMhA7lHwdp
	 SqJa6hUc6N6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B1C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408139358.20073.12935346134863143867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18b24e7a2ea088f7800a33faba9682476d5dd29c5a5823a1131046eb403dd03
Date: Fri, 01 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754081393
