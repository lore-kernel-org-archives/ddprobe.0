Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D72314A86
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783820914; cv=none; b=frAOP53NjtM2zfKS2Q40CjKn63IC5ntUd6kQireRGfZV1YUb0tfeFmoBGjsykKWsaoG8LOI6/U9yjs/Jq9YnvOhfrrliEEN/tQnFVfp8fhZ7BSqziVEDX+aYiB75V3PfnMKzo4Vd90o6D7v3+4vuSWUPW/doQ+obFVmi97jzlso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783820914; c=relaxed/simple;
	bh=8/3048j7zdrgt8EUt85wktMjhJ5wSY3IOMG0o5dtGys=;
	h=To:Subject:From:Message-Id:Date; b=XbDAUiBS2SzudmtgZFol+XuCruOyLzqAPUpWBiSAIsIvrPzASB5XRiTZFN/Dek7S+aH4DVHcbdRbmgQJz3cXtp5qJMQXES01hYGaJjyhiUb+K0FLX/43Sae/9ky4XAopt6/mVMW2ht1a8FcWfpRvZobWNed5UpF29SJMMJxSd48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/shaz33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/shaz33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F0EC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783820913;
	bh=8/3048j7zdrgt8EUt85wktMjhJ5wSY3IOMG0o5dtGys=;
	h=To:Subject:From:Date:From;
	b=U/shaz33ih3/p3sOmFCRib+mAqafWKNfIr0iVUcbWdUh08KnaX1Ig1EMpV9z7tE9Y
	 N39qGV12MKbhlS+zRiikO4v4yehob8uGhpJDyDWrkZdgIKNp38uWrE5aLLi7zeiIet
	 q4PTgBPh7n/pJA5mzUbaO1RCx+MKsYSAEmLTzvg1PmjiJQIYWHkSlqoHlLMH4G8NU9
	 CgwUqZlOrRZZlvzWhRJAajQrrj3jo8TE6b5XcaKFbe1y4ZrPvjqc9UvFwmZg7YLRXB
	 g1Oga7gblR423IDEEHChSH08G51xbybiX1s6wtvfHyxvK5db4HNfiWZZGZCFVRqT+x
	 Ww4if9TLGpbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0FEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382091368.9400.4117527722094389898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1d0115b8b7ce67b16d7384b9ae9609135e23a250f03cbbe8da8f322196ae56
Date: Sun, 12 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783820913
