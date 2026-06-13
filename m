Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EFC2F83A0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781361995; cv=none; b=kPIHEN84dUpdIjH3PkJgfEV57F7CMuswxUwNasWsMzPDenTjFV5A5+F4Df9y0w8MfQQx+vrr+RYH1k2O0iYlpY6LPb9owPIfnJM2GXQkBdsUtqQvjwCDZgauwYX9YWUrs7QvO19YZdNpu3gSlqDIU2IovE1T4n2vJz/jw9ev2gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781361995; c=relaxed/simple;
	bh=7qkYDFUbhVffTTuGX71QA9j2eGA2GWcs06DvuwWLP5c=;
	h=To:Subject:From:Message-Id:Date; b=tYiCRd4Jm0/Xt1biPHDY2TRKVmTK++sLX9xKoiTEWB7t9tykMOTEx2bUv6+19C5VLGpB7UlGtaDUYZNE2A8nOWxWv6DhsnJqD6Z3aXCtNfxwQYSsalmdxFELjMsUp9BNssHmu/k1to9+cjD8A+YAS2b4mRMkKgm6AzMlV4/r78c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBoORMPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBoORMPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85A9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781361993;
	bh=7qkYDFUbhVffTTuGX71QA9j2eGA2GWcs06DvuwWLP5c=;
	h=To:Subject:From:Date:From;
	b=UBoORMPlkRIfIN0P114I9dBN8soVymAtrAVQgDWnlkrqmqFD1quBIGF8Dzmux3jwM
	 1JsXQe/5zxV207Equpn/4149lxvjKM96JomdzpHpu+iBvjNtKIoReUplU6VwTOVw08
	 yIyihJvAPaFjd9tA5whZN1NxhBRiG2ZEV63maFDFfekH2hFG9RaqpcELslxMeuFjbD
	 SyxSGNnKLflE9KlnRJsaw0ylRWECo/OQ4WO8Ep39XJCoB9hAn6qon2FUUQppGZjiNe
	 jhZ41ykTAKjvIit1XRYjHtCOY5Vo8EzlEKcT14YS7FCdkvgqUjQ3TEL6NCAQUL5UcT
	 ZpJcWEA68ZyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA383CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136199368.603.18007561925479797925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2df1ca921bdf00383def54bca5d9a7cbeb289f70eb5281cf1887c092fa9c646
Date: Sat, 13 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781361993
