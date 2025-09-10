Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D2B1F3BAC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513994; cv=none; b=bWUkN3gWObEieFDcol46ik6gr3d5nmuzjyD0kc6jg/tfkorVr3Qkd9WoOvU3djKGeXLokcqg197Df7Xa6dfaqOmSp6xRkNANOcoDpV+CjaNRWO2qN9l2KLOLR7BTdFf0wusMZeEOvVTEJL3Fbv/820FRTTxq75+VWXWObMLhNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513994; c=relaxed/simple;
	bh=hrsd64C0o4tY6UpSrDy9EOJR/46Bo0kmxxHs2CXK90U=;
	h=To:Subject:From:Message-Id:Date; b=Z/7ZnA6kgSrBf9zUM00ZMA1HBMm8SyML7T9VSQUSOhNKLZsxLEg/Ez4yJuocguvuyJaJzteIgGc9WNroGh9/Ph4JzChbBK1KnUyu6qaI78NOhab6zKb7Gcpzwj64URDXY9fq24YKFkAT7eOr9bE5lgDYSvImtgpnTkRyPoHY1Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FP0nyP6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FP0nyP6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5FFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757513993;
	bh=hrsd64C0o4tY6UpSrDy9EOJR/46Bo0kmxxHs2CXK90U=;
	h=To:Subject:From:Date:From;
	b=FP0nyP6VIcmtvqUyhnpaFyKEiQuVUEgGRxZnlq/UZvqIeHHOyzr//cc/PQAbTXSDH
	 kWXLaNH9L8GEaiiHjKBx9kHvwNVvEHmzEkPkECl7omHxrAytukfVP+0SbkjxZsNvLa
	 oMaqacecDcEC/43x+2+EEuDROg1tUxcpSU2jpYi7koE12l1hrdFnD3pPstyPIBaT6Y
	 247ik57h9LQyVrvTqAjeX72kDNi70R83v0lPq6HBRlaW8HlG+V9v3HEFlh9qFNizLp
	 crryZO5oPE9PtcYPBc6ePL1ZrsIFVa+ozH3htfoYGVinieS6rLi7dORS5xjSe7Wxj/
	 J78YC/tLapDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90755CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751399358.13971.9616050394467927306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f64ac16329b4562c4d50f79f96fb6ee46d2306a1b7e2979a9edb0d2afee254b
Date: Wed, 10 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757513993
