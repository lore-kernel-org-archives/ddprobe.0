Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FE321CA02
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785076834; cv=none; b=OKlHlDWYp9Iy/C6XxWWwQgxWSThY54Ah335ZNg3a1IcnYj8YuaB6Lw9dTgotP6eTk+X2HvM50yGiCG+kLlb6wXNa9Z03Lz392f/Ji1omXnSyopOq0BMO5IH3zWmJLuk74W1AYNa19W2JoqknUR3tFUuNp+NLe10x9XCfuziF61w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785076834; c=relaxed/simple;
	bh=pAT7ngruIZmj7qWPQvJFUZ2XPJ2mx2E434VxjngcUMo=;
	h=To:Subject:From:Message-Id:Date; b=ndqreInQ/YNmn1mxpZgLwpL5oyqk63dx/LHSVKO5rwGBH5D5jie/yEBtIOGx+FHxFHA6X4HF9yIZrDFp6HQI3bnBLgCUoFSoNvUtW6583yTP1RjiatHMANnmZSsceah9D4KfPyf8gRWq74rQ/Xk+wx9AJAkKCTqggyUo36g3obc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUFcz7Zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUFcz7Zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2333C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785076833;
	bh=pAT7ngruIZmj7qWPQvJFUZ2XPJ2mx2E434VxjngcUMo=;
	h=To:Subject:From:Date:From;
	b=MUFcz7ZbcZsBqLQcTJ9hdP2P4Wvi/uCeuru6RvWbc2q3KZNLwq8Ot8Smn95s+QXRW
	 TaDBwCkTrRi1tmNVJaAHaSKhDGOkEGiTnsm6IJcPtFaRv12IRV02KrjuePPS8ETyP4
	 2PV2aQg3Ya+6DVUl3aeXzel/Swg+Q0NpaCSTAlucnVuUvAPvl30AKi82xX9F7D43w3
	 wHS8xeMuwd7iesDsEWb7UR3kR19cMLVc7IC7CV3ul7ZL3uRgj2fRJSotCVjJpR7RBO
	 Co/duJ3ajLyERFps5gmi7rflxZUv3et0ouoVsuvWUJhMhqFBaMpsemD0famqdaXJX3
	 /2frdkx6UxBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC268C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178507683368.25882.7021399792579681599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58279a9167d5674dd46e398a346e38642f64a6b53a9bbe0558745634107d20e0
Date: Sun, 26 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785076833
