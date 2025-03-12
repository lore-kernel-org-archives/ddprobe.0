Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE1023E23D
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741777734; cv=none; b=aBCX5N6HzYQHnAwWUtDX1cEHR00WbiGM96eifjCp8EXCUTv5noHKNXPIUS9iE26gK3kSUTaB1JCwXydoXdouceFY11GrXOzoaV/MruhVEa+pLiwYBKLAJw/AeZlX8r7tTOxExAsXmapccXqTihkMFuxobJmFq11MIsU5OItZ4xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741777734; c=relaxed/simple;
	bh=/HTmngsFU3BJhXXIkdOyDObP+kKkZWNj2rWw5KV+5dI=;
	h=To:Subject:From:Message-Id:Date; b=C6+O+T8aGy1Gj6CyM05CMMAkijGgdvENBT4Z+NE760fRjtWWO5oCRqC6cybb3aruPbLWDzK+jao+wmbc/praHjbpQ1H9SfTj+WNR3bKh1rG9XVArgmnw277T43MHjd8i/aZ+53WbpPI6f2i2GiDhqjUzNEhF3di0lBpK1dBTsx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRlAOBMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRlAOBMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C83C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741777733;
	bh=/HTmngsFU3BJhXXIkdOyDObP+kKkZWNj2rWw5KV+5dI=;
	h=To:Subject:From:Date:From;
	b=lRlAOBMibJkyRzLldd3+V3HWJbk2sj44Hvy9MAE7OkoRZgJ9nEIQB8dzv6dfcLGMp
	 FhbBwCT3JGYWKnXai+csCwPWPNzPy2LIEE8QAS3eOS4UNXcIWbb6kAaaUgG+fSH2n2
	 fzlUzh6MGqMA76605+rwa1ABxPgrs6cSug67yhaZqiiQFEyGZ3rDO5IXqjXuOYO/P2
	 Q2Z1IGBcqZuYXiT7Kh52iHc0GEI5GAcA+0/tzm0vtJOqt2o7fc422fsqOtw6LkTdAM
	 rGDV5SSuayWpK15S9jrSt3czDnENFATjn2UR91O9d356NtSSGEzJgMtHyty4hEdVaZ
	 wb8fUv0hbhKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F9C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177773358.17014.9552445213694162381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8cc0f1ea1de626a9694cc25c47458a7064f1a400aacd9ba6509be83440efb2
Date: Wed, 12 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741777733
