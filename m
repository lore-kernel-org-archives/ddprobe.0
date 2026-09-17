Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2A6418A23
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789683634; cv=none; b=tI5D/eOGZcZeO6oxwkpc6LZgDskbd5xbG0IUK3Cik77UzBLkhOME3CW8QtZG6A8voKk94d3MmtN4+IBiIcB92tETs4TxFpxWF4g3ntrnZLIwVt7vL2bTx2RNeNPioUgkL3C/xpstcTmoH3JjMaFqgcKuqf1rPpX3/sYmAUN7IXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789683634; c=relaxed/simple;
	bh=DYZziDD8MeqArGBkn5noR7dsssjcJ7xpOLQiD5kKuWg=;
	h=To:Subject:From:Message-Id:Date; b=EI8peaW2+yPUDWKS4KbJlmeCCopOq8Dh3UhHubU2RTNqe/zBKBXTK/OttjZ/9nXScCk9f5RJQN+mTixb1aBXj6uIFYSeozc0LDk4HDSqfOz5xaoozTp/BIJEFNgvkdV/OfZpFFbLN1TJRHdJqn0FE4TJ5CtiOsxUWUbA9+J5ogE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyaOPMAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyaOPMAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9050C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789683633;
	bh=DYZziDD8MeqArGBkn5noR7dsssjcJ7xpOLQiD5kKuWg=;
	h=To:Subject:From:Date:From;
	b=TyaOPMAyIjFzQxXImloJf0wzREJyKeMe5HXZZ1QFQlE1yv8YJG2T9boDe2zBCnjyc
	 sFVdX5YCx0PpVxJzcHpeozToVA8LbwTK5cCK8G7ML6cQka0Cvyvx3rfzL1/FkKrZyH
	 noMML8D6r4oyzzDmN8u+dgILpT6UpGOheS+NZSxlIRVSSdtUQ9T1D7W2fx14LHuc3r
	 3k1tj2xR4MAoAHqmHjkdpYKePSjXdp+SIiQBohtNY4pdf7UNJEm9D9tPgRNWPXt0Zf
	 ClpSW9en2/5/MEYwR1HIKvPPN5JuIRO2U00Gc8sKD0UalPdTJc1Vf7FUW+hA8a9HpP
	 k2XeOK8SNSHOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74BC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968363370.24452.2033648926592566853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3519fa2f170413e0c7eeab36cdad3d5bd6bff0361365fc0ead6fd56ced0216cd
Date: Thu, 17 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789683633
