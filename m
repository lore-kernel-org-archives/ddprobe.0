Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F95227
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724201154; cv=none; b=BVLrAObDUFlrdpu2bUx9KBrftMpsMC+T5rT91wNmWw+b0aVpvmQIi8B579zHt2sXSpYJ7mfvuXhFtOE7nHgfev3cr+E2OfI8NAyvCP1+8qsSZ0Bxhht3jm4yj1Loe42swRZZTKkBz69MTln4GKIYYhzNhGRsu/v0OI3hiGYgnU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724201154; c=relaxed/simple;
	bh=Ypu65zxkxwKHs02JsWeqVNCDA16/N/5Bm4h8y5vj5O4=;
	h=To:Subject:From:Message-Id:Date; b=cJ/eBygfWZZtx4hSs7gZpmUygyyZzjkG3zD1Sx6FSu/0uVefkIZm7zXauDphB3Gd9RbiufVuVZi7B8Xe7FQ5bdpPyoj9g5wdWwfwioAogu8yxMVdyoauAIiHY20MMr9/EHpcQcaX954gMNDyTSFx858zP4EYw383R2jRNPYslK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ8V8j75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ8V8j75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF01C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724201153;
	bh=Ypu65zxkxwKHs02JsWeqVNCDA16/N/5Bm4h8y5vj5O4=;
	h=To:Subject:From:Date:From;
	b=iJ8V8j75YtAGdU6YwkPst7vIXPSB2XhxO3OimWM7ScL4Me3IyeYymYL/al2s0/gie
	 hB2bNhiiQimnALBaHjT2KG+izU6rVr+qZdQjvATAvK8XKSYVeUohns4gJ0r4x8HDLo
	 GNseqkClCw0h9X7bSpzbKiiPunbqb/lWNtciLJn3Kmwy+6WkOusXANEiFP6K90ZuVM
	 g39p1dhAJ6egH36i5hkaqKe+J4HpkA1LXcoIs38C/zh898CQZecfeKNWCiOUEk+qYU
	 FnCksVZrSrxEu9O8CM4nRrs47rTqEStn5ZM0tdgoJX+7lbL+gxVwNhJH/31q5hMMOE
	 UZ9XdNwIz0liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A708DC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420115364.15876.16996009408430701310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9341fcaea9df29512627cfacb56cd1a3133bdf370017e6a618b7255be0af80
Date: Wed, 21 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724201153
