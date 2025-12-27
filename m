Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3DF32C8B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766844834; cv=none; b=Cigm4j1p3ETXLpui24brCnl5viWXyfgnkX9HkReuFhLAjErTZs7qk7AzT/JrGDu/QBpNsdyR40kXUMGz/cMdLZ8xgxvRYijWxrZ3ZZJP/Lq1YvTen0SvZJA468y/VNMg3VluRkJEvGo8HnlRq5eIRc8V+mEj4I9zJS6wtbZe03Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766844834; c=relaxed/simple;
	bh=SbfSUBBhHvbrTTubOFpNh/faClY2fXPwstWtW2WpfEo=;
	h=To:Subject:From:Message-Id:Date; b=RNcxzbudNZ2YiSMIXsSognfb4gqwQ1A5cx7kl1tMdulqrs2Jelx0mRDECkiOWIIcjaLmm8JeYOrLvZMr6q/N9DA6wjGqsGyyxfFEeM63SgXs3RbK3rGeX/zcidqTVKTvdKBOr2prxiXNGUbaHRAJKaGucJ6BLOSWqrr16N3Tj0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1zRh4fc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1zRh4fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766844833;
	bh=SbfSUBBhHvbrTTubOFpNh/faClY2fXPwstWtW2WpfEo=;
	h=To:Subject:From:Date:From;
	b=S1zRh4fcxkShjn4uTYMoMnHiy97IFEb/aJ65fgDvEVCIE6m3BvImVsMMW7iizt6y+
	 W27kQlo+qp5WbPc9Wro60w6/onq9sShL4ZMQ4LpN2mO9VMDPpCPJriWfUYaBVBk8OY
	 o8My6XaTCyAWQ7KsqpI2rLTdNx+Q8OvvxLLXnkn1IDFdDy6LW1Fe9SP5HHeEdBr+G4
	 P8MpRB256Y4NVNNWVG5/Nfr/0Nbj0pNAmvjNAqKCD7RrMC28Wq3KE/rl1Aw3ddWrfe
	 wG8DnrXJ8K/rnthMhZIzC0IYs1Mo4jrQcNzhI2T62/Lblqd+EhwhW9Gz4dP2YIpouv
	 xgKv4vnumb2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99144E8FDD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684483359.19714.11938279452208411975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f74d10ce37cdfeacf23a99844b8b8fbf176036ab26470e1ec939b3216f63282
Date: Sat, 27 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766844833
