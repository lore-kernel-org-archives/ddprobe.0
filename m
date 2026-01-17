Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB43288D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768653234; cv=none; b=Tw9MF8czWtynoBmqAPRQcohjvpscIRd03iW1UXDAteL0gx/ut7/UYq7T6LdBtgykM7DIsbWIvhuZVwtRH1BaEHVzZ0pSuYP/ntvbs3F1HsW+z9kbGgSBPvqhfsGlKQvelT1VimWq7LorSRZFpCo8Rgk2f134530wLMIMm3Bw5TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768653234; c=relaxed/simple;
	bh=/ARQ7lHgLAj96Wt6+nLJAoD9ylJxSquXJBlaz3ruhjY=;
	h=To:Subject:From:Message-Id:Date; b=HIdR3iarOfQAAoeb6zuQGp7e0qH/3095wC1tlv69EcMp8WxDjcy4haeKjYtZ9xt2v19biuCN9S1ShO/lGgV7dFfN5J/qImNCsBaE74fcFwpzCF2Nx45ayOaai3V06hYHlkC57mpKECdW1KkVzIyIjsrB33fLvRQq1Av75SA/Qao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIky1W2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIky1W2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A26C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768653233;
	bh=/ARQ7lHgLAj96Wt6+nLJAoD9ylJxSquXJBlaz3ruhjY=;
	h=To:Subject:From:Date:From;
	b=YIky1W2NltCyjW2xOVCpXHl8VBvlv5lhfUU1EjNwqlm0bR6MoODNF1cBYGt6M3+tJ
	 LF4lnXw6YgDnJdHDTyAcXXqM7UhVOD29rXVnuepPBifueKd2N976DYPAnNBV4vrohl
	 KZurakpvDvXFwgTYSQo4sRn4rEiBz/n/6MoUeUVXkjeDuoLDIQqaci1RfYJHljK/5O
	 tz0N0bvuxHBeSbftOqfySPA90sTErwl1CL+F2fVOhU0TQHlgLsP8GpVIWBUReURCIN
	 I9tnjjzngzp/PD+3SH54EAgBTM7+U0TWsgOy2yDl3MoGqHHMZ58c0+TAXbrei07m1y
	 uU+XqcMxI4g2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90841C98321
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865323358.2696.12403058694518852235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d868f1af64929f985c114e559179c471fe5f1c17a05649197514ce8d1e5783a9
Date: Sat, 17 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768653233
