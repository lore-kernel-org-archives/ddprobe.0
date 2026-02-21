Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167A424C676
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771674895; cv=none; b=Vaz8bQIeCJJj64nZemTinJQza0tkh1Z3fJ38msK7r2+i1n+/SAMpYhwBiT6PpbIlSvyUwbAnQlmASe5w8CJ4QRp3zcjAnSSrFEU3BdGzESh3c1ndw80ZSM5TMxZAT0gTZZ3dp+8cknd10/eR7ME4ie7NYPl8ApHNpSZlTLqO134=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771674895; c=relaxed/simple;
	bh=pvTl1enoHrA/rBf7awrmFOhFvfBC4WtSdo7z8R/QNVw=;
	h=To:Subject:From:Message-Id:Date; b=jYh1H4zw4vR5t1I6lKGHs0v6FFe5np4LtnGYJnxJ3XB5Psda4/ajupW6mSi5BqS3stscG0VOqbTlDuEP/rCsPnwr1mJUozU99F1E5HwzA4RxHyRF42q7PSjzzVnLvPfGjwQsC/btfjZVSAQAh9E5FWVDKuxHAOe/eCIR77Ip7Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVvNg8/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVvNg8/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8A4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771674894;
	bh=pvTl1enoHrA/rBf7awrmFOhFvfBC4WtSdo7z8R/QNVw=;
	h=To:Subject:From:Date:From;
	b=tVvNg8/NHPDU/Mt5cZFjnhQIbk5jTZLEhBWPDMkBDwyoDSMKfen/xwJO07nrcMqhY
	 4oB11ElwBNHLvmalqEOSY22eqZdci0zahkfL0WEk1DWwKolSmMT69MSIiuUNLSSyqM
	 0jUVgLNVkbU04G5G0AL3BUrA+iwenzDB1nA9Gdo9xGrBHCiIBY55s5s1rXy2UePSNc
	 q/WKy5q0xgAbc0lpcFMu1BXeExy34q6VoNbvNv92BENUbkTqIiCftqMhh8jPVr+4Np
	 DfA3uyDCdYZs0ptNZhM75IF7EuupPVoqfp9hCACITQgHXQOa7f74JwPkjPfJnXa8EG
	 V95/68kQ/Z/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9963EC61DE4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167489358.10374.11691846855400258540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027c21b82a8098ab8b09d4659edb31b1c2be47150ec7267b28eda39af6b67c5
Date: Sat, 21 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771674893
