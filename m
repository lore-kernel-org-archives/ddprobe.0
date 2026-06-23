Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5584513C9C4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782180394; cv=none; b=X1x8zrGdZEoQW7w0YBLWJ1wHyGfsGXnGPpyq0ksLkZfgNYQPFOaotRIryfxlPrN+XDDEKUSNj+nVcTniNakYwiQlZnKCySgJpNGNXiwBRo8cQNwcKMHSs/XwombNWlppt2ZEH+hi0v2R++h9QcCE1881nIyKXeynXVs3acIAzI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782180394; c=relaxed/simple;
	bh=nFBIOgG43WbAMxCaVNuJnki/uW42dlt5AxBzlFvZvlw=;
	h=To:Subject:From:Message-Id:Date; b=njf6V9FkAVis5XRWum41Uth4b0a0/e1IPKuZL/FT1tT41ZiZmdcQ7pcznk2HoITeMamkGprFx5Kedf67I9eN303thTUKJX5uflGkh9PHRmU64GMBAmP3gS70//mbewBABTbaEuHrYHpIQwFlR6QwRWAbs97gDVRfaNJJopRT/HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7ER95bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7ER95bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB99FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782180393;
	bh=nFBIOgG43WbAMxCaVNuJnki/uW42dlt5AxBzlFvZvlw=;
	h=To:Subject:From:Date:From;
	b=u7ER95blFfQmKVlii9w8+TOIz+D68GDBiv7whN4KXE/+xZJ8VglogybftGf5LQ22J
	 t9OPyNXUQE2oSe8zN4U6nd5bl8E/SHwwfhJZD288KPubFcWNzom9w8gUqwzP7JW2SO
	 e4R0HJRcLgc57Ek295+nFv1+5J/DTXejquZvQf5HfaLse0wQZQ1h0BoOmfozRCalL7
	 xsI59K4j0xHScPszioc+gn7THZGOF6bjlTCKOQ3jjwNGSO54OylSHbDgiRpXio2FG3
	 iNl5I2ON+6jZic6MxvTfAEmndIWQ/1gZ3IEJ4L80ac9H2vqkwVAt1+xoyz/7wa6oBU
	 T+fA0u9vJtwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B163CCDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218039369.3055.6494408238325198564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e8f9408f0b23bdbd72cf1c3aa078cb509a2f3ebe4429078ead4be8e5f362eb
Date: Tue, 23 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782180393
