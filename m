Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E9336C5AE
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788695434; cv=none; b=Pb4tVZlB0IryoRX9kKDpz/swnozqIXDXzWMt6PL4uGsmL+NjAa2kUKtKGjc9/VWC9FhIVuw4zVFAsy73GOdQFjuT2WIrhlmXr0dlO3TvP+CH4gm6jo8q+Q9nHU6dN9szCyTUlU5GjECC2j4vTYwlGobfizGpq6ZwJ1fR/7pjsQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788695434; c=relaxed/simple;
	bh=BVW4bPlVE8W9ILc8OKgNPY9JI2urDim+nQrGx82CUT0=;
	h=To:Subject:From:Message-Id:Date; b=UFSGrdjznVk/mOVUQGFNfmdIsQrqLC9nKWiBSBjklY2xREvBoVXh0mjTQdK3xQjYepOQjXDjKMefLqx+Jxyd+HalGsCCiILP44xp0P79Qm3JQwNvFRKtUEEqogrpuO8GinuYYeKhyBXT+hWEmArJd23nZbrL08yKpa1jAp+83Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrk/xJ6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrk/xJ6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3B0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788695433;
	bh=BVW4bPlVE8W9ILc8OKgNPY9JI2urDim+nQrGx82CUT0=;
	h=To:Subject:From:Date:From;
	b=Rrk/xJ6RaWgAeEiTJZDbqTu6bikQnskpBNunfS54mwHyNS2Ar/jqyJ7zT8eRrXQ42
	 O/FuioH0+DSamxIlzcYPcTkiQSbLa36yseZxq9dZpHIquVDJ1XIKMQWj8DRCeX0ksa
	 m2uc/an57fuNM0Ay4CBiard1qY46yNYiOh68kykI0bN5nedWuE9XldloUZxQR8KbI5
	 gLK2Sigw3rB7DMfVQ0CLz7yGKbTo3UCJWn8K1ZPVSn2by0sdn6rxV13aXsX6HL2wat
	 aCELc0PbXOyaMTYWk6dZGMmIh2haff0xOdKrJnJ1r5t4LxZh0oVZjQhfmLDU1YTkjO
	 cbhbYY8eSwrrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68DDC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869543370.14031.15588764565722742706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53302ee178882f279a27116bf56cb9f8f07d7318724ff88fba840fa8bf741b3f
Date: Sun, 06 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788695433
