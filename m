Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FB521364
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718869163; cv=none; b=EeBk/5OFuK1kwfaZrLoLE3qkUadWY+5PmfXKlxKaHXr8FIHhDn7b/fzIbBvlTuI0wTVzr+DK9PpHyFMra8cyWQnDgCnGXaW829kFJkqkYj0c8BRt0IvmuDF9l0yOeSUWdvecYaFn0Zms9nmT5FZUIS/0BHMXhTgbIRc6QtIDQKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718869163; c=relaxed/simple;
	bh=qTVToHjI042dZk1tB16uyD+M2WoyAQ+lVbSmGAmnsWA=;
	h=To:Subject:From:Message-Id:Date; b=j/H1QLVUmJtEVOWRHLot7o1IshbIBaVAM1M3SoVFBb1RVeaTu2NGhP4Ts7AM+dss80biVfbzDGNZpLtbpcnmmjnmq9cr9cWv8I1CSE7zoQeJE0/qYSk2aC0eHPB0OC8bhAyxV1+Lrte6m+9JuYEt+Y6WgI++TVU5LQuXzKGH4Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XShqzZqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XShqzZqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D02C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718869162;
	bh=qTVToHjI042dZk1tB16uyD+M2WoyAQ+lVbSmGAmnsWA=;
	h=To:Subject:From:Date:From;
	b=XShqzZqJz/56/QP5TCRzg0aJZdU8bp86Vh6T7Vcc3eBQOFYtyfzeF21qZgoE9m6ih
	 Y5FaKZkMqqnavX2rmaTRVia8YNudA4jaORRlujdk6tR2LcWap8tKN7Jm0Sij9XnJJK
	 7jo0mz86NrMgP7/EEnweDKhHPwBzIQsKHTNfILqJbO3F+IxrkMOUBpj4KgLRfAJZBj
	 33ZzQNHg5j1RUzTJ0WhfpoeBxLiXCPgePqRhNxW1a7aKtC8gHlKYI7A7CwLfdWakRy
	 7+ffOp4C6spk41CNth8TXMlaTTTlc0Da++wMArqF2HGkZ8/3G1CQnbDaRXvbpZ4meD
	 11Hv6Cohaw14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A07C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886916279.5839.18273954548981809381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cf57582dcfff1bc2d707485ab2329f56e41b1e0690bbe1803d154a88a1b1c5
Date: Thu, 20 Jun 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718869162
