Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA11F5EA
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759171795; cv=none; b=j42toNzChaschBJaIkqMvUoEsX2SolNvawC/UcLTGWLc3ARYQuUFKwExVwqIbr988WUp0iaAA6L5ddqZyBhuZxi3EY568mWHCmKPGxB5kqu1AMIaxf28QjhHZJ9mqP5ceVEBuKM8AcTFiswyowWFeAXhtFFEA++3QV9tiOWTFD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759171795; c=relaxed/simple;
	bh=5onupnigrpBG0tiY70lHQwlOiTlVUcwGfA6R98UKZVM=;
	h=To:Subject:From:Message-Id:Date; b=P8/zDQyp3H4YX3QdJMtOVd1vQ8wDWyaVfxNqjYbT+ipHQc5XFCohgMqLiAlZ9MWkwL+ds6D6WDeNcntElvyb/L8EaXhNGAFnKDIMsVJ5JIzknbZPRi4TLNqLcAe/8p4ErkKFWcVYjq2Kurd3BNScBdfE/R3hnHJagxyzzKR4eWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA8RUz63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA8RUz63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04BEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759171793;
	bh=5onupnigrpBG0tiY70lHQwlOiTlVUcwGfA6R98UKZVM=;
	h=To:Subject:From:Date:From;
	b=aA8RUz63y2E19TSP4uU80gQtAxFr0PA7+sNApSkkDKbFCsSPHKKamDg8Ov+77S8MX
	 pkRTM3w88pk4BB4KwAg+SEHKh128Oli69x5bsZLH/IOF1BFCD94/4CkBozXrIFjrZv
	 wG1WHpvygwU9omooSZ27HdGmvHLUd78TCe0OcC2D32SpWNVBtvtbOvFwtvvC0XZL/o
	 2re/OSMbIRaJspZZSmtnIJWXXIfUfjAKFNDXtCHPux7uxub3/TQndkzn3PvePhEHDs
	 f3ea+/PmRY3vqs3T9dIbNgsodEroy7/CMwSshXcZvqq54T9LR3CvCwCC+9bBpSKQjN
	 fgxq6jY+ZH8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3986CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917179365.6094.7899292997027309583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec298c9c29f697507d72db62514da183364f21f1b009b95abd45791dd6c772a
Date: Mon, 29 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759171793
