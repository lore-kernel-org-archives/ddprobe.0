Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529C5547065
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790415034; cv=none; b=jnl7asQSCn7HWlw7+XTuY8JgYatVXmpzYN19kTD/HPz5boUv9eemfYRxcPgcgXq6m1C2tvqAKmiTNYluLUNi7GHupbNPva7UxfzDHgmGYq0kLlbJLtVoZJKWviFgJ5K6PpHpxxFoYI2PGG7VVj+vkBzMLdfAy7yhhSXCF5ziIdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790415034; c=relaxed/simple;
	bh=Au2v12RevFvBipvi2rvJSyqM7Z5KnyQpfNKkPJt0V/o=;
	h=To:Subject:From:Message-Id:Date; b=HclRXYly7XXO3MWzPIam6PKge8Cm0pkjuAEVGaZoAqAKO4YyFM1wmWupZVVPrkylKiVjg+Jy3fC2t9gUAVMP0LX1OBJkR47DB7/UZG2mDliG37Ra63oAqLXaoAViG9sHginSee+8wm5dm4JHDatT0iQMlPc+ItlST1AsAJuDeJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQMa1C3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQMa1C3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB53C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790415033;
	bh=Au2v12RevFvBipvi2rvJSyqM7Z5KnyQpfNKkPJt0V/o=;
	h=To:Subject:From:Date:From;
	b=eQMa1C3s0mEOkRNnzuI3LF5NyfgkdOsCMuRVywQtn6jJd8hAhYa+R9fGjTa+DCSWP
	 vCawJ1R/8RSNxPMGEI2T80lPuJYOoDzijOwrPeHhnHmk2AZhX1TJWlfDtXnot24kAw
	 OGkdlGIQTV/JsvKhpi0/VGSWSpVlSxGSnHddFB4wP7y826JatgNKLLyxOJHIHuVzpi
	 z2k6IU0h1/+n3rhfriiNVLb1g4D0T2rgD7qt99fJ22T3P0mKQvVoY9KzWSGnvp2LZ+
	 ZeKz7X+hxg92lm7CwzEGyotvfjNtunvpEP+oMvyO5K0tOdCxWGCauxI/LhBoDtedrK
	 AARohntoTPQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5CAC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041503369.22833.11262660975365022597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7dd6697be3b5e3d5e2a0363ce6d7d3b26758c278f7254d073b847dcf31080af
Date: Sat, 26 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790415033
