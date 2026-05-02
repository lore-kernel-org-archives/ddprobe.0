Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638D9463
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777750654; cv=none; b=czrxniHYYAUkkmgYPQoI1E2Dkii8+mQmt0x0MJmOvrBFIBF9nXtyHmB48BNFPTr089WgJ1z6UTDDcq7/74upX293vBPnue1iX1ueNf896aJft4Lqwbx8QxkR+KxDp+ku5wtab+nLQliEaB4YVQ8KypPf9LQcfRi9tmoeIemNhG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777750654; c=relaxed/simple;
	bh=k853Rhf7G7BLeB2Ij9REarhgctOxi87C74Lgkfen5f8=;
	h=To:Subject:From:Message-Id:Date; b=G4PNjrtqMaw33KobetZaMv4TeMW+55gEZL/2u5mcphGhJL+8ovI1rqQGDKAw2OE7deZAVMoVbQ5KR4SiqpELepAaIUT3k996VXFVGtVwe7zubbcPPp63AQr3qAfhxC8KuUOr4BXlJOud6Sl+6K0bNtdPHZJaBi3yBCjUaYRGkJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7NJ7zxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7NJ7zxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE89DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777750653;
	bh=k853Rhf7G7BLeB2Ij9REarhgctOxi87C74Lgkfen5f8=;
	h=To:Subject:From:Date:From;
	b=i7NJ7zxPRIbCpSidb52Kwdhomf2wEXdBERGQDwbNEvE++d98SNPyNiVS0PnSKCElT
	 fk7yV5NLNq2FKXx76Mvm/qVWioEkh0BbvdhyyyUJjJR7vUYJEyO8paejhNYhC6ZfaQ
	 8FXZIjgDxxgK0qXih1iSBM2L/7C5IuJnwHLsfLn3p8stEowG+gEAjMGEMPlmHnIeGW
	 XzfsCnDT7sztheAJ32OWh3zcvft571bGwh5jyx26lEfWvsXFq8d9jLd57Pq5Rewcmd
	 7N4N8uN3p6dWw7fV59JZI/9jX1SP2tGV1Stawf8Cj0pfymXdVmAyh5Z+MjaKV5w95T
	 x+Nv0+flXho3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF98BCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775065368.24794.13214493084965730082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780ee0f07a4e904a4221574b42e6b3576a0ca06f1addf9b63ab009ca88b05104
Date: Sat, 02 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777750653
