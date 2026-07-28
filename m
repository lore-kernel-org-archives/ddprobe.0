Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C2D187346
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785214834; cv=none; b=HLAwuE9vyp827GlcwAUuCRC9EGDFgInHlkG1GtDLONYfEqjIrROR6XKmvTjHzDqLBcXjthCkNTgsV55+L3Bz5F6rHiQuWqXEx/5oAPZ1Nm5OD/YQ+aifwlEfgiMUp3tpE7882vsATqUSqvwh9jwAIa6WsNGUxt0tsdlRoDErgr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785214834; c=relaxed/simple;
	bh=RwsJzbW8wdHdC8ZjCLwVaP41LLrYU9f4WzNN6h5TnYQ=;
	h=To:Subject:From:Message-Id:Date; b=jZnoMy0G+mG5cmZ1TzwuMgGVllo5tfF6Bw74vonmd9Nw4Hh7BWXrCQ1lcOhlI4GKX+6Il5g6wzgqXv0lAYM+399plfo0frqroJZ0mEzum74UyjoAS7CC+QELxzY5UxGl3ziKZ7J7P7q/wc4rQxZXg3s1KCVXZEHyrMEtHEijz2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5ceeBTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5ceeBTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CB5C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785214833;
	bh=RwsJzbW8wdHdC8ZjCLwVaP41LLrYU9f4WzNN6h5TnYQ=;
	h=To:Subject:From:Date:From;
	b=m5ceeBTy3UU7qf1E4cLU7JXq3DXXa76aN8R6/gIcHiB/4zxgCI3V6GWXzNHVKTxcL
	 c/JfZXS8141+PpNFhftj+jVs9bqacjy5y6hv6WSRBShXzCRXo/DPqf7q57JatAThV0
	 woUi0FD1PTHHY0vbmyWgHdas4TSMa3ZE84B3sKaVUDIYgrdP0X987GVQMJ/tBEeVqG
	 RUjz/kbxYR1XtGxUiRDQAFUFcAJkd6p/XroG9AuGANxzZYhBgKkDuDQrLtpV8mlL1S
	 i4d0rl1o+IVwR/xGGrhFfkn8XB74U2QVyfTZJG7UjAB0LV05cTU80it1tMg/N82+e0
	 4kaGqcwMQzU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB3C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521483368.11683.6874729973408204618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a885a1d19f98ac432bafe4994b34126e46ee19e7d2f263e85f62523186663f
Date: Tue, 28 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785214833
