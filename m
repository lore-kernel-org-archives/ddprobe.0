Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F84205E24
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713029363; cv=none; b=QiW4SY9gLw6u1sVFK0ATC6ZdxqyoNuW5YfJ9Yit1oT3l+Q6McupNMQym1GicrSJaEgmLsFLZ6DxNzZy7dnHoTJstTt4Xg1OjTLvRyhnmQYWu5PI2KQGEi3pEROY8fXavQihE2x/uwBJEcrj6Q5TnHHilTfn4ow0tDqwpB6dt6lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713029363; c=relaxed/simple;
	bh=AmQoBFfTciEMT/bEJTmLTOksLGvjX0gpFPzd+/T6+V0=;
	h=To:Subject:From:Message-Id:Date; b=i2qskAdZIMJctmV1DKmrM39D4I6whnl/YHNC4YsrIV0EXzAE0c7mKH4Gk+51gL37UIgAw31OJsMKYdlvsvJKJox9Ew28shZiztX8RKHTayFsSYpSmj/phb1S4JOIYcapSal41dEcc48Gn7iT+Seq36KN0tb3eQiEY4HZT4UR5C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndPXHweJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndPXHweJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E8BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713029362;
	bh=AmQoBFfTciEMT/bEJTmLTOksLGvjX0gpFPzd+/T6+V0=;
	h=To:Subject:From:Date:From;
	b=ndPXHweJYUbm8PallkUyc916kb4TQYehc8ZhPb5zHyevhgXbYeneCdZLF+xl9j5m5
	 gPTXf19HYfn+T68Q/2o+43gv9YyPmad8v9ZAi3SAZtp1Rrp1EvbFdPEZru9AewL7Ii
	 Uykhy3tVc/p4+A9NIvOcwhfdqmLPg0uZ0JkWgW2+mEA/yuH4hDNdW58nq9FgLvKi3c
	 Pke6GHnPmPUUWSkBN7TAifvHHR7aczC5eGsK/9fhF/+iTdw8ns2flUk8N3O8Ats6DG
	 z73nBGhMQvxH+GNgS3EFY39A5om5lvTfrDGqzqXrgqcvbF+5RhNyJUAylIDEg/bpl6
	 Xq2vNjsYH8/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17EAC04FF6
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302936275.30168.3275726821366461903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62494ad7fc471ce6827fc775fd3e6844ea8cff5c2259860b00ea096cb0cd61ba
Date: Sat, 13 Apr 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713029362
