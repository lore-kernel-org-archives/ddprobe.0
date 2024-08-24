Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EDA1799B
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724522154; cv=none; b=JJ1wwUkMQz1Pgp0heVfxybhWSW8KEWpZSh0K6gZhyBmyehbfmPLNbiavab8JRpaZCcWEXb6iTptVM6NR+bbTUvTf4zuYk3AtqbXSRM7KhlGpobN8Zck0C9EBOawbLbAT60Kf7k44PydME/VbNUgCfezWcTp0WdQ/Kv/sg+vHi1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724522154; c=relaxed/simple;
	bh=geLI9BrtfDo8xb1oDD3U/JQPKR+skRfwA8B5r+vgB9I=;
	h=To:Subject:From:Message-Id:Date; b=Pt1xn8Cnm26SuoEitISnoWGVjoO+49f39IOXxxfBj9aPO9n1lCH3eoAwSa88VvP+2w4xDIlNikLwXOWTIdcOu34C7STGCPgoFPJbuFFqXXvMuOvBfIB1ONEH3T2hOU/mQ0IOmd2HJk0F2Zbn3JtkprBplCjDADXMhT9oWNrQ/+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEJ91I/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEJ91I/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82D2C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724522153;
	bh=geLI9BrtfDo8xb1oDD3U/JQPKR+skRfwA8B5r+vgB9I=;
	h=To:Subject:From:Date:From;
	b=UEJ91I/hToOoTq5mUyWisWXSHlME+XcK7vst8cUsK1jZQYBpfNVXr9DsOJZxhyrZM
	 PFZBTA91kLy+U95xPj1NTxS9CfSNpiDbIxIsHcEC0tNMqIU8yIaWQt70TAqo8AMNgI
	 sZ+TLVPxXd7Oi4bcuaWGvHLLy98mK/McQrHRxSmizt8hOcTvZrIJHy91pcWgQj9/Nv
	 yq9JsFnRrwQr8EuvFcIeeMKryqVZfN5NjaTjHWnYst0MV9yHyQtZO7a0yK2YcTSjgG
	 GR9waWDHtkpFTQt/UXc9FzvF8fA8iahG+rF4sGNtjwQUQurZaLF5xVwc0dySF7DJkn
	 QMmfnYzZPvN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98111C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452215359.5023.8448124775808476654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776c0593c67f6f48df2db6640e631aac02a2be687a9053f637cc4e84789f3afc
Date: Sat, 24 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724522153
