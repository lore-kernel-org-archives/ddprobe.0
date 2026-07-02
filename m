Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F9433E96
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783004914; cv=none; b=JuXa8oTgispuANlNgikvmekpILfI4rf1B/A3bbGost6uFTRKY5A2z/uNweCwlqjHUmuwBu+9Qm3pjK0vY9WDOY2cNfmGGdJkiXloHzD5C1+dPaBTmMtIOq//iI6Znq+m/X2M0cschNsyOiQAHvCR9783PjIzYjhhzux14fsvsTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783004914; c=relaxed/simple;
	bh=6nJy+cSDc0F70zQ5HwZrFnlgv1FzWVQKe0i6BM+7O3A=;
	h=To:Subject:From:Message-Id:Date; b=VNAwpMCR6duhqqJHBdiZ3FGH1DgfRVDSivhs69kbSqEL0U8iI10NUQsquKdUGJKEGA3NlPSvY0mIbgSrxnlra7CDHBY27kBjoK+PO5AjdFjYvo2miKlCqsi36PKrCPqkHz/8/AkvfSQod+4sBFjkWW/S9DoKvHVvUU5xOT+MyJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhmNGzWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhmNGzWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC22AC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783004913;
	bh=6nJy+cSDc0F70zQ5HwZrFnlgv1FzWVQKe0i6BM+7O3A=;
	h=To:Subject:From:Date:From;
	b=hhmNGzWG1x0zB5kXXj+sV8wGh+D08KSgRbWPoDaB1rZlhA20t1+ykbKoUB7cQ6hT/
	 AE4aUFeVUow2rjaNJvqP3zxqOR2hytbnRA7WM/IDTxnyCVS2M2Hl7Ce7TN4iF1j5tm
	 yjLf+dOwzmzPap/490zbM/g2S21XmdeXRrcaMUiaAV9KMcWB9OQAp/fyeipVgsUQa2
	 FEDDfNoLGhOD2BGzIv6vUI6OvndP0Hjx4tNP7uB9Veyvm3mJogrlsMP4exdvKhc+zC
	 Ddgs8CrBDT3XYfb7GARUm+7jZicFl9cxVxEj4561NuzPq3+peYHFoNhWWbv2f7zJkg
	 XrX1BZlTB+a3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA662C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300491368.19394.4380953111577751016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5fee4f232d91a25e06e08c579ea5e7bd749000010e10e7a16819973c555ba5
Date: Thu, 02 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783004913
