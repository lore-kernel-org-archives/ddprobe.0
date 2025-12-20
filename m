Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D9D322A
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766189034; cv=none; b=NQU8Tm81uG8EP19CLmafB81bbhbEqv4+vNoNzZSdJlRQULqwvKoq2WSiGRdzs44LOXeGjkQYTCQ9AHgxC9zmAStewvAZGj26Qj2XxbnzZr4F7gV6WufbR9XMxll4I6Gswsk/Gaz4eUw8dW+9uuVX6Bd/NUgrb3Brv3obRELJstE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766189034; c=relaxed/simple;
	bh=L8ZgghqRxYG6Q1Xqx2LqjJ0R94VrL1ZT7Q2SAWt/3q0=;
	h=To:Subject:From:Message-Id:Date; b=AsG4zXTSm2y7Eu+sQZiU19L6By+1t250ZTH49U0qTvXv5R46eLjAm9Muoldw4CEcdPDfervE+O8ZdIoL/Q0oEc6UAOLlcS8b+/iqmmJ5yX5SXUWjG7Ip+Az25ETpJAnp1aY/+7B02M4BdSK6vgn0cU057h5P/F7X7djnRbenMH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm9XLr3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm9XLr3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2212C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766189033;
	bh=L8ZgghqRxYG6Q1Xqx2LqjJ0R94VrL1ZT7Q2SAWt/3q0=;
	h=To:Subject:From:Date:From;
	b=Pm9XLr3rAy6oYGcMulVB/vbcLqVmbt9jr+N3WRpChxa3J0stLiINugCkq8lUvXxa+
	 1VB8k5sH0RevzsYAmEtUm7wZLtveX6hWqDO/NmyIR3UL+7EXSoJXztcVXBWzhdAnrE
	 prTOtcoCM34JBX7qvTuV+JuauwJEun/HEeIjaQlNk3pX6kKaYFioMp3rtKy8HWkXbU
	 od8x1doG78HMFY3T7Byd4IlLr2lo8eM/fxpFcel1UHfOymRkBFMlguGpo8Ts0JBHW1
	 hNyJ88E8waj9+wDj1LGdWcYIIOVUhBva3VFZPl+jfpfWsFJg/NrYMvKA2ha0Z3SklA
	 /SUu89v3rc08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B63D78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618903358.24114.7109721479004851437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7db745d5ac0e91b11f857715822737eff601c8e2292273650f0036d61f5a26
Date: Sat, 20 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766189033
