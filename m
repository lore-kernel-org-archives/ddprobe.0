Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290B52BE031
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771261494; cv=none; b=aX/dvSWF42Z6sIh0quypYgXgTRXYfwLQeK3R3NyiwPOxSP7mI+r+G2pd/sH6woiIsC+fISmCT/Ks3F/kl8/l4rwhgbQUk21yHQWUfuX7WgRZjc1GaC7tinETjr1nbu1y+N/AY+aCW6ms/co4JhOPgoXVRnGP/K1FoQs5mGd0iw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771261494; c=relaxed/simple;
	bh=8LGZ7AuhEy9DOYwn7yiDySXSnsAHjFX9P0y5pKTssEk=;
	h=To:Subject:From:Message-Id:Date; b=cWLCrv0a3gpQdpRiJSTGIrPezckkUazD8B9MxfKRZnTmJTe7BXkN96gx44rjeiV0s3pg4yrADlQaE1CNRj07e5M2ba6u3nld2Tgn1xhkeRXFeES4qkaD9NJSTQrtJhVNfzwoZl3lu5EfRiMpxLJVLmPCo8YRu25YlgWr8Q35zaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3/MlL9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3/MlL9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2332C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771261493;
	bh=8LGZ7AuhEy9DOYwn7yiDySXSnsAHjFX9P0y5pKTssEk=;
	h=To:Subject:From:Date:From;
	b=S3/MlL9lw8kKgCedKbLo/9Euok6oW9QMh5jpO7gf1VOk3W1c/2Y/GnPQS0rjAFvGn
	 9KdF5l5Zdm/K8Sn0XI/b9romaM7JsHV8vTWA7CdAaUbSghnmgf9OPYTxuwVuqp0WQd
	 LwyGnG9sJze7b/vWldcupX9lQBhCdA5jEPhkNslGXVLPbxChWN4OxrW0is/9QV0S2V
	 ElW5lbiG5uHwpzUm1sPr3Y1dxlWmz9TeyG53Xbe6TNHFWnuBeTeB097ZlimTEIn0rN
	 jU7h61GlheKg3o+NFU2+RNpPsvTWD2zKNJKldcJKowZsnZYAfrhDiCxkT98Kjw+ZqE
	 2yfhdf52g3cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17F2E81A44
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126149371.5775.14895289494429146077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931194ea0accde203f60889c57a04dd5b70f948240f0ebd32b4d6396a9d7fec5
Date: Mon, 16 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771261493
