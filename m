Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428AE319617
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779641554; cv=none; b=qeISBcVQycJxHNebXht1ifS+cq6bJ57t6QSAbgxYf19hlclo4sPZi1Fvi0IGgfbhPlEosRvqKZSGAJng9XicvkOHoHAYHz1NEkPRoqitqe97YiNNWkoBsTYa0PqW6SA6R/YxvIkJvZDR7nSX1yZPvuAYzS5QAGRE9fgGuadc+s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779641554; c=relaxed/simple;
	bh=cQ6V2h25hOpayPSZzkbEC8fxiKMUrEAsLbDgWp9f55A=;
	h=To:Subject:From:Message-Id:Date; b=U1TByqSRwOTs8ivlN3Ix29yM8Vv7sMM4olcJEnKJpbHgwhY3XXzMX2/p6103pytMe5FMMPYQAjcagTr9fQYXuHesUYCnnZl3K/96aFYdmZ4f4jKnYSPhRFo/VlssxoWl5EUHTL+vvVtLPplKsk64rMnisA59oeG7A6Sa9zzg890=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMYUvqod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMYUvqod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C387AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779641553;
	bh=cQ6V2h25hOpayPSZzkbEC8fxiKMUrEAsLbDgWp9f55A=;
	h=To:Subject:From:Date:From;
	b=pMYUvqodb8XoyfJWwebtjZav0d0Wa2g9WbZ7hU6TOJ2cQu+TX5qH66064A/3/NRCx
	 bE9JSxi+S3nlcFWMS6wlkblK0+1AbY8aw7hJgngwCOJyMgvIn0n/zf4Yc5Vz/EyM7B
	 6jLGzIScWiXMZ9y0WRE12txKQ+lqaMKurPyWBykgFpkf7SFGahN+5DeacH0K1gn896
	 Jdabb1eqpX8mhivyz0uEy4BQ7XukfkjFc/X/H8uS/fbmrtKvcy/W/70YpPegoEuTJa
	 msmCGxOuzUrGpSyPHwF485nBEezNX7onVbD+ERbZAJFYYcj3uqk3RYu6KmEblkY3vh
	 V5XxcktfqhX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB763CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964155368.19868.16162631474951231053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3982a609dac05a65064b237352d3f45ef1c287fc4da1b5f7561952c8aedad48
Date: Sun, 24 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779641553
