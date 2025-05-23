Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADC729117D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748011194; cv=none; b=FwWv/MxzJdgrm7ZvMtUg90FbNsXlUcnu1TSdKyRsqoV1vXMOt3VH2hfDmyMT7xrIHbJPRecvTZ0HlGkMOwh7nMQhQYxXggeiuAtRQVQdRKT28OiDMEWZSf61jvf/lhhi8ovd4PqtH1q4pIHiw0WY7OrMM5wiwaD6iAc1cctXbVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748011194; c=relaxed/simple;
	bh=5/DcHLgqYpnwXKLQwAlUTqzY7UlZWHN6fXCMdj8LYiM=;
	h=To:Subject:From:Message-Id:Date; b=KWZ3TwC10IP8yQiRdTaWmgEGmXvFaGPtJCEWoZejNGlTYYuN4V5TsIc6v0ZEr4usCoXt1usHoK6+cO3krQrfNhj4l/0YtRLunMPy6YALK5+JS/ao2j9r6IwxArjiXuCBfRiNp5jvsOsuxcgOyajyRIArHssucoT+HKIvkS5F6og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxtzQaSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxtzQaSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748011193;
	bh=5/DcHLgqYpnwXKLQwAlUTqzY7UlZWHN6fXCMdj8LYiM=;
	h=To:Subject:From:Date:From;
	b=AxtzQaSRM8gzGOm3HutYTdqX8U8HI1B8+nvR8cAEfrRodC2fRkUeydks81dfbb4ZF
	 0GDdNaK6d5Nf/VTdgkLqVbGo0nLk+Dobw22TcPoZ95z6d6Evug9aX8rLcCGgd7CixC
	 LyofLNTDE7sDmzrJYgi7sf3hQH3ffmr6Jz+/ODB/uFDQeKPu94OrnYovWU5RnHOsx2
	 xnkhLOhca/Y+bLZkd3/eSBav9FQ0JedJciy0dsTyoA5IBJe13O7aXDJotyUGDUQRx6
	 Xd4Dmq6P14xRg75zFNip9sgFglbqNjIK87lxA2se+gIzjZDYF/S6Pfrghkb+Uj0e2E
	 gYVXqSF1kAANQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A1C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801119357.29827.14683390178084320089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dde4f50af78317348258171eafda449565ac458dfa8a82ca4bcb661a5bed0d7
Date: Fri, 23 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748011193
