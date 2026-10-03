Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC022DF13F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791018034; cv=none; b=pBNw/LP8CMYpjNbYqrvwIfxw6UfNKV0Mzc4fiZhSMZLpfbZSAanXmUj6NlqUkY1m+YHndTQb7Zawjvc9N1FWz8Ph/Cti6ME1cCL+UghpJtbk8H5b5zewL5u8pxeyxvGPg6dpRor7xQtXEwMpQhU6q34zs9kVnl28YdQzzJuJtew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791018034; c=relaxed/simple;
	bh=gl5A9SJuty9TplfMtsSe32n/8dvgiieXOBp/nzAWIds=;
	h=To:Subject:From:Message-Id:Date; b=urix6bYLnvMdhlUrkaXrJYu0a12vUDShrj+d75bE37pSzdpy8wVQEojRTuKIaHJ7bmmZ5IkVJGR9A44p3nuCQPND09G/xJs2eQdCe5YgikUBi0BKBeSUc/f+pY8jmjpqlTtwpOh+szvN1atqLQr2vzDz/DpSO5LPDDgqBUaS0I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkIe87+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkIe87+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C7EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791018033;
	bh=gl5A9SJuty9TplfMtsSe32n/8dvgiieXOBp/nzAWIds=;
	h=To:Subject:From:Date:From;
	b=jkIe87+kDCHNq2hJOQ5a3Fx+KoyG5NHsjP8aCG8WM40wDJsKlFMMP8XJeSSxtM/Al
	 YOABQz+39ihXVFWCUWbssFzfu08cCM+zbTlrAq5ty8Adt6/NRjpKzG+Hn/ZvQACQVF
	 Yl4cywL2PfpscnWlx03SBjnDA7p+uGa2xG5Rwe1bzw64a/DzuG1lY/z7d5dOjg0tC3
	 PsVT8/GMMXarIb698Oq2qa5eRA3bNoKukJh+hhiSClwP6zYITQWly+XmDG6ZW3ahBF
	 UaSclP/iYyZcyraHJ2Va32b9rZUGCkKxJnt123H1LeWfEUImMauhtA9ANjCUpezHSM
	 Ti5g0IKAQLjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B511ECA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101803368.26170.3176907241662231476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a4fd3608c098058979c3dd427ddf5b79ba2231417a7ea26f52b510e7afeea5
Date: Sat, 03 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791018033
