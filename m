Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F8231C88
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728944154; cv=none; b=sGAo/JAl8MiV0Uprrh2AjB8/dNBHozgVqu3kgGWH7ftFfaIY966MzU4q1lm5ivlI9wvbJJEHbNfduQzyqpHsfHQAPd2eKGgZk1BdVzFybfEoPW9a91nL6fYWfgFRW0fFpOkXxpDqZU1LMAj9fktj663AwIO3hYOGCQ6C3c+++l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728944154; c=relaxed/simple;
	bh=Yu17LLf7RnQzJVTdEcoWmpnUOYSXDZWlTq5cvEyg/24=;
	h=To:Subject:From:Message-Id:Date; b=a0sbNbmKRKGM3PfqnNl2zlKoTMtl9BzhPDT0ZMdLsW4W6IqtxG4Fw4xd2WEE63knxHuxT2JrhEYPCeax4bpDfVFfRiW3wXzUDRGfnNxYs3wSJ1PrLdTaGyrAzUX/VZx1IRAt6uS9xa8BIg6cHo+lLHAggvbU+KFvnrY6la9IaUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp0+D+pV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp0+D+pV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E94C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728944153;
	bh=Yu17LLf7RnQzJVTdEcoWmpnUOYSXDZWlTq5cvEyg/24=;
	h=To:Subject:From:Date:From;
	b=cp0+D+pVsns67sxiXfeNnQ9HOvLgEfuzKfqGEm0UzQRwbiMOAZ9ZetkNePuHZWSbf
	 mISDZTW1j8hxPc8g8/i9+cT/peT/WJ7+ahGNxLVkg6rN54qJHzfA6ndR+Y5K0NIfHg
	 gb3xw+zbEws3JrtoPUn1ay+9FeE3oHBqTOL/xXRNIQBP0ZarNIKm7UjQVQp1ox1334
	 oHrqJwEQESvnsfkurfuzrJKBMqJ8NFEKhbybC2dwCcx8e/r5sMO4zOJE7LWkdSXHdV
	 yEtntDDBeRJl9c2D8ZlHNsoqKZkrrZ+FZIBXSDSrMek1yre8pvvVcMAKSRwg1HBCqe
	 VScp0ZoR8M+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D9D18151
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894415360.21346.2548874318392310687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b2d29a101bed2be38166df4f9e2085f3842dc05ecf042c3bcbf81150872eb1
Date: Mon, 14 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728944153
