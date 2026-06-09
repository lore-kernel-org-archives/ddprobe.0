Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2763E3A1A29
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781020534; cv=none; b=gu/3Bh5YXXnL93yKHa4Nw6C9k5E0HkATQaYg8H657n2RDEaRRRc+ouCOBPGN+uLP7i5jXFz3pDO0Xq2mGA06pjBHvrl1UEc2alG1KApRLIncVgv79PGkYtxBHBRYdsqiVdJLR3ZfyoIliY80eRACXkYOpw3tozZzQWmFCk0u+fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781020534; c=relaxed/simple;
	bh=tdAfgSmBKEnllKc4HRUFUEHlSQfbMiHviq9nvJdZdQw=;
	h=To:Subject:From:Message-Id:Date; b=cN8Gmv156IfpLtFNh2kBWepEQ6ehIlplsc2h0+MZ4Fx58Gw6N62uGgd2I4EHwgCjLKDrEa1PHJFOXKiR5K/bLXUuJTghOzE7UcFm3q1Fd2kGft8rwFwVvKY/yE1KMgCq3jLaqoLUDBW7PAxxGOaTa57c/uou1uP5VSvOj5Rmxw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1SH84OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1SH84OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7DCC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781020533;
	bh=tdAfgSmBKEnllKc4HRUFUEHlSQfbMiHviq9nvJdZdQw=;
	h=To:Subject:From:Date:From;
	b=t1SH84OQN3leli9snk2yhGc3qH9pj96yS2eTQv/fvhFy4WqAB/zjZfj/OUOL/fazX
	 TddwufCQDdaxvi/t5mG3hepbqyvc0A+/6ON2b2EYWfV00+0y3R/us4UL0SXVQbLv7J
	 OooTc6P33GmH+KoidyoYT17oAZsfVMNOmZinPSSw7XEs5dgINkgSQ938RF7s28oyZO
	 9I1lwF5wkEeNsPI0fcZ9qFRzh020VqXD5oURlZ/9FcueDAMY9U1HCW3lcVaKKERhE4
	 HIWug16xeZ/Y4p5Pp7xtcJLp+HhYHzNp3gpcQENEKT/Bo67wgaY0ae/8wiCdOdlcl1
	 bnae3wYAlTw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BBECD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102053371.4682.3037262264598234866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed004606e9395916bd4464e51913e7326fcb188ee7e15ac012b60ada0aa22c4
Date: Tue, 09 Jun 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781020533
