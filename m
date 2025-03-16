Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569C0D53C
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742090994; cv=none; b=EwDvAGqRXY0jn4ryRdsfMPoylF1ptAgZBETmVBdFZEMI9Of+b7yqd+hLuLaMGPI/Ke7/1As8qtRf5BGGree9EAE6phz5ODm5B+ijLZ2p4cytzCg77XDMk6sGSsHAAxmvHnIQP9Qxr52hv9fq16weFsHDriPNCfuhRmfmBL26ZEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742090994; c=relaxed/simple;
	bh=rmpEsnPXKdJnhm23E61T3XRO2eJQTPmCBiT+A6BpixQ=;
	h=To:Subject:From:Message-Id:Date; b=u0ei0tt2rtPwhMiGKSem7/lRdZ5hQA9LcqStIqloMrOXJXzkQ/QRb+KJLlk0TjjTanco8w/ztYAyc/kFYSXve5WxNRu6wyGmtKhjtN1RoMduccPrT7XTskKu8/kjxDQjqUL9nCo3gCLFhei3U0uRuK9YrGzdqz09DNosGvpA79s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3xMXkIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3xMXkIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16D0C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742090993;
	bh=rmpEsnPXKdJnhm23E61T3XRO2eJQTPmCBiT+A6BpixQ=;
	h=To:Subject:From:Date:From;
	b=G3xMXkIGE5fa3N1LxyoTNvfkFrVf7zfjHs0mN3jLZ3g4TX+vyB5Rd+J/4OjRIPgcc
	 zyY73xKaJegz2L7rXG58fTcsTBsbUTFcMuFIS8GHUAWvlrXmpZKBlMykJyf0gPZupv
	 M3Q9Mlek7QNIapiNUsycY9XOuBOEtmgQcgsIJ6ZJvYnK0IqiaKxMz1ca2WXIgEg2sc
	 t/+6YybYHqih3VCm5v8yOy46/At63XeoutBCDgJNQjXmVu4FtwfZy5VCLpD2S4IpF9
	 KbaStd9dL1BwsHE8bWY4kPImirDsGxsMu5vwCPqJD1fawH5TEcyb6pSTnt00TMqb+n
	 DI4/VGIWHZbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E007C28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209099362.26028.5920425124438302995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db0f958927618f5c851e5efe095860d703be09d8c79074470987d2c78e2a4ae
Date: Sun, 16 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742090993
