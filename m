Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB0E14AD2B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748369396; cv=none; b=fmH8g7h+lZEaQKonHJ0T4AjsWM2oO2wK51ou3C+FrTZfs4AYAAxoIPXE5BmCpTtD+G1qtA3cc9HV44sPLJV/nTLfCRnw20eH8VS0iHTjAFYxgh+Rg5QJ4X9zRCvHfa7RrLmv4YUZ7ZdR6nPy7pSQCx/QWIR13sAnC1x3s+ajaWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748369396; c=relaxed/simple;
	bh=Pm9PS4R6CSBMfYq1+T4STt7QOvn73XqlR4IXztp9dV0=;
	h=To:Subject:From:Message-Id:Date; b=saicmo5MVtw+vhVsnXcvJ4Pn9VT8psUl6aKLYshmIazuoOQkdgCI/QnOkRZG869hc1fR2X65B7Y0tRum9EXH3HtojVwUHhNIvpqmYrJXuEM6gRTAHE5oCSdYffSXeRojHMO11tsql4yYks8fGHKaRbXoweWwgKIFp6H0cHD0DXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr2IMYdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr2IMYdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A9AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748369393;
	bh=Pm9PS4R6CSBMfYq1+T4STt7QOvn73XqlR4IXztp9dV0=;
	h=To:Subject:From:Date:From;
	b=Xr2IMYdBQPuFyueUGgHEz7ypESiiWdXMCy3rRws+73nT0/XYRMTfe1PrGWc7AtQPc
	 XgrSCC2X+3XYkqmu/Tw/3D2dIRcdkTehHFqZ3DQlwKUUuha2ML15DZMAnyN3hBfpI7
	 F0yOE3Xuf18equrrokbq3LZRsFVUzUfCpD5L0FZYDJ6X6eEkiD8/t1xgl5eQLRiT+T
	 SOGuxmCmXL3Lwm3gkso4hBampu2gWAVUDb6kMjlN0MjWmx5Tzz3BkEZ5tfegBWrjkF
	 UhZ6sAQZAowMiYrYN7sLKaeCWVGcGSoFZaabSMiJdso4k6X+aewH1h/1u7/+xFGI08
	 De4LLSuSk/OYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E74C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836939358.11038.14054470973037582600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19b7c42289e4d371eab37a38ebcd9d1fa39ede23f103a07484f411a293606d8
Date: Tue, 27 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748369393
