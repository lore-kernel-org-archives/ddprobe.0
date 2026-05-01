Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22FA2FFF90
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777630054; cv=none; b=EUH6JlrYcfsy+I16Px8M4kZXOYN2zfcw8tO+vyjdYJ8RHF14Y1xWYUQB/cvfshmMcPKXGPG+28XhJNkBVXzFmEoLY5uLPvpwAddBJQpygZftDDC2SdQgF6aukGCV+3ASAE3kQbSaSkjNffPhE3h9SnQu3jRL0NhV/9jMpQphOE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777630054; c=relaxed/simple;
	bh=HmrH68ZEGxs+fz6T0OieNwuMgvFWyxW+G7NmesSfymc=;
	h=To:Subject:From:Message-Id:Date; b=KuRwgsYmbFQvEmU72HLf8MvIvVf2HVVcOxejApcx39tMBhUlA69rFwso60nalnTxtQH4uFEHXas2wV6nXWh8cuGtV16AH8v+6uCBwpri8BMvS4lkiJJ4MzbW9dBa+XcKP+Fj9UiaUf4T2vtGr0rszmQVf90FFfEN0PaD1XTnj98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nToUiYeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nToUiYeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40BAC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777630053;
	bh=HmrH68ZEGxs+fz6T0OieNwuMgvFWyxW+G7NmesSfymc=;
	h=To:Subject:From:Date:From;
	b=nToUiYeJCKfXLc82kimyrr/lDGyZoyw2/EBWIxCP5zCvGdZ+lcwoQHidTFUR8w1Ma
	 lSbICoaZ864FcbdntwvkR+SBNy/ZiUENk1hMt5/hjeZwWK5ZYL2zkQTMCM4DvCLObT
	 IFfn2Meq/1YPI/nyzvCbaL5vO43uSj1PMLNMJMWGVJ3vKGF0GND2IaOJT0Z5b0wCCA
	 wkTQ8cdnSe0pYn8XhFqFPYrLJYo7xGfIfgiy0SamrqOCHroLM2jXBV8t1ZcKjh3N+G
	 gCIRTG+pO+W5Z8xKIyCbnmrPoTNunEF0ss+e6XfDodmH9DxcGV2in7ZQDtkXU9SLuG
	 tMxLbb38lv5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2124FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763005369.30167.10993369754122294209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0686da591a6b053ea3c14dd0168a9ee35a5a99e8c55bd54451d95bd5c603cc84
Date: Fri, 01 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777630053
