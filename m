Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E4E2F5338
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762001994; cv=none; b=MxrbgUrPW/NcV10gfSm+WORg1tjdVm87H1xWsm7iBaMLOPpGgqago1Npsk7+sPY+Gu9SzMklzew31J9erwUsr1JCgJmci1AnIfuYWpiVVgM95pcvEl6zwJHHT1uL+dkjAq5SMUySOerNa4E1Oqq7nq/sD2g+i6rdUjMa/1w3rzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762001994; c=relaxed/simple;
	bh=FMbBo0vqw69FsctJIaCNjtX7/MPgtBWYJs5DBATZ8uA=;
	h=To:Subject:From:Message-Id:Date; b=Rc8/GOftxRl1JKhb0PCP6zURsrMWRn5F8uNFcLK+C7flMa7FvUmOV0EEF4WCSi77gt7ZS/9QzGXp4/+VtBXx1q1uEdRS4M+mfO8FG26O8K14vmJAPfIE/OPun94/s44D8GhiSlVRY/R0mRPDIx3oo5+MyvvHQqUdJSyGdK919xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9Xk6Nry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9Xk6Nry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3300C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762001993;
	bh=FMbBo0vqw69FsctJIaCNjtX7/MPgtBWYJs5DBATZ8uA=;
	h=To:Subject:From:Date:From;
	b=K9Xk6NrynMyBIPRqJaLcocAurtNT/1GArvNLCAzuyaM+lWOJyqFJ6cvPHOREL+JNq
	 X+3TP0x3b85dhIAuPrJIUa+OdOkbl3WLebd6+IA59eiM4IH7+Dnjgq47fRHNRiyepI
	 xydagVZxBlqjjYEWgpsmEXZoftC3+inGw9RfHmwGQ2k3EgJg/BBX3MJGC6U7saFag6
	 FOEBLT8r5cZxhqy0SZKTNwrxdNQ12Zng9DsSkhlNRQQR3jHhFv7zoyKNpSVHsfCu8K
	 Kskt+/gDSIODddKZMHffQY9KLFNVkd7asNbZXmxhAVV+3emfwHa+ySQjTRd52KosUY
	 5cMeFA6wipmww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B43CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200199358.27426.17734945260722911101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e258f319345d9e8c7adc46d519cc389612587387faa92bcddd2e28aa18499ae2
Date: Sat, 01 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762001993
