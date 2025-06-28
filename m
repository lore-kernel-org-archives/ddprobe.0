Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93F224AE6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751126994; cv=none; b=heulMjvjYrKl5lvlW/wF2dNECKAk0L5viPcEya5qQC10hvkAQuJnUmSs9gRj5wsIYZetFx4khUv+SlQ4KimGs8xHfCv0BY9A5vMc8IPJuFCPkbcmC2kNFAxP/zMuVciL/muLAw+RIUP8JySIaFi3C0pX3oYPmDfOTw7R4hhIM/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751126994; c=relaxed/simple;
	bh=PiOWjc6V2Aw29G37h2FulZLDwoNglWKXoZNVFPMuGgY=;
	h=To:Subject:From:Message-Id:Date; b=hmjCMgiaZqCi5BLr1f+8iFYOsaV248UjowK2QtmEEuo7avXX8n5+XUF0m/3ALeLjs8yU4puIJ1o925ucqSWGt1rs0A8OLHmXZpQPYO88s7QBB+PVzPXA2Qoc7GMbTd6xiw5BE74/fIWK3RUszlRSss5qYWjh2XEQfgOgScBJnYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6JY9bPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6JY9bPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A41C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751126993;
	bh=PiOWjc6V2Aw29G37h2FulZLDwoNglWKXoZNVFPMuGgY=;
	h=To:Subject:From:Date:From;
	b=I6JY9bPTPb2CsUBg1YR8hvLw5qOvmMkmSrEPzoc3l7TeudnICUmwkAohQky4XMObf
	 293Yy7lYBcJURMLRFe2popBfQh+kUSL8mVwyKsRG8VGW2V2tuu53sRUk9NJvShlmiq
	 fdGa2jsZMT1Zebf8ngNb9j55L8+hCmc6yInCDchnU+hl6jqedDsgeBbuRsVbiJPTqc
	 /LUs+SOByKUMVZ5vKKBtUEH2EzhPauJZJKg1bPD184kURTEQgMsh6k97iGoFi5KaC3
	 pLzATuFUDR0ynAz3aWaMZNu2SRK6laDRW6FOrmRxMDkuEoHmZDfUcDdU2H/u0aZ15d
	 4ldepCJ9gO1Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC6C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112699357.7949.16583265909521316882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d5930b46c1606d98bf6400cba987703d7e6caa0ad60725ecda90178956c70e
Date: Sat, 28 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751126993
