Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552C2E574
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713840023; cv=none; b=HBluwMg9l5egNdKHXkwcdsvRiVaOjwjgpYhiPtG9imeMojHUGXZAyIsBHq5j+yRF8SkM23w4g4aS/A5pPKHnURTFrB4a8IyWoG2ciAwp0llrqS5RFBAlKuSiCzzzTETO0AlB9DCAdONmpcyIQqHCCwnhXrFGp+vB0rTaUkPOx7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713840023; c=relaxed/simple;
	bh=X9/aze+Hbh5HSnqkBaT7svW6HYEf9ibIeYwV+rVzvWE=;
	h=To:Subject:From:Message-Id:Date; b=N79lMFVdUG0vEcsrdlkk71+e3qt7fiHb/xR6vDzPLK8l10IC7sp5QgMugw+wNtRgMoO0cQAIc0VFper8/tfueryi04JGTB+v0AjKqD+8F3Cnv1d8cMqSkp1vx8yugFm805xLPCP5klwpbMv6ajWlQMBDPfChqkud+wMoqGrY364=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BljtExmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BljtExmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EC9C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713840022;
	bh=X9/aze+Hbh5HSnqkBaT7svW6HYEf9ibIeYwV+rVzvWE=;
	h=To:Subject:From:Date:From;
	b=BljtExmX48uu1jjH6PxYzbswmdAykRmJdK3PHgRwPvKogJckJEcapFKChsviWhbk3
	 I8nnwEwNq8Fre/xm2JO1uSsvnE8+vCMQwV5Uou02y3yMs5gU5YXGMiNRLAFbjikzBe
	 V6x9jwPohnlgyBHiZ34z+p5a94J2ovTE1bdvJSRxZV4s90h4GmLuQBbWE/4EOy4q0S
	 eCtyz6tjcKzcai+bSoPyOv0tKDsTKAWqXBkqO+/JwWasbQxRX77e/MAJtsi+OL+D7F
	 efNww4mlb8FiT4KpLZjlzVRaYetlH4ASTgIwRJ4J96j2uoAMH+HUg69ck8HEIvGr09
	 X/HsAmWsYJuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C281CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384002278.23707.2355418585289604457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babdcdf64ea2a0f1de188b002c2ea8d685a080ed4c29e859dc34c84845529249
Date: Tue, 23 Apr 2024 02:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713840022
