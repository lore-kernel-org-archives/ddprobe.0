Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D350E22332A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742466593; cv=none; b=SYv6ZJy+GFHhx//KeEEBGZkYTZayejeUbwKMYlPkr3OZdE5BuBs12yF9x4npwkgH0o5W+5BRsefwVOmElpEA6OEE1rvQrpgHLrg3RFrDBhgVccJcVsz1Q8nmka4KISeUir4xdvKjHdM39ZPoTCXniWH2PLUlAAI883bomr/WhSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742466593; c=relaxed/simple;
	bh=rh2TkbKpKaND05kjKndgRBnh+g1TTu0ld56MbHag0Zc=;
	h=To:Subject:From:Message-Id:Date; b=ghJmuIQvKurYPspZUpW0rEqAvN+jj2wAo/6lryecIc9RFBEKRbPUULo+qDJ+EJAlFM0aRrS5mZsR80W8fe51muQ5nqJI/9yXyV1V59mw/qhgL1C/3TxNbbLSHFg4GaV3MPyuDZYfv4zxVudERb1dOL6eLhp1aX7njfLrqOWmJ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcaGtmXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcaGtmXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7184C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742466593;
	bh=rh2TkbKpKaND05kjKndgRBnh+g1TTu0ld56MbHag0Zc=;
	h=To:Subject:From:Date:From;
	b=TcaGtmXjeQ4afej1jXA2ZmOi8K0N5N2Eqw5l7ar6iiHINjw2NDQtV1iT/Z31CUwpL
	 Ia1Or8Fk5S9G0SICXWaWP9kZkPG3gkdqJ/42OOi7dwVaFNxK1UZLU4xGlRp3PQHWX7
	 rybeH5fySjLvXPb5Aqj1TKZxNBPYPdifL3N+94dxGFLpSN24W+45tB5TdWOOuVRySJ
	 Jk/ew9lnXVHpqX/Do20WSHKuGPif3qinuAe5meiDLvg9tyTMXHTL7rAw4WX20fAJaI
	 PJeCupVJSMWxh6WszeIfeCWfC6fU6xgKueKGBlfMfgA9y0YBv2WYwvVpMYncxC3/V8
	 nmAAiHDw/EFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E45C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246659358.5362.10013614081185608716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4b8d9a0e1202b9e3c8ba9a6b0715f4d2f80c33280db52a55d03db32a75a069
Date: Thu, 20 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742466593
