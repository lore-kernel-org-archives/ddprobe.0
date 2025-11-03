Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD5128DB52
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762196394; cv=none; b=eWLGnbmssudY0+h2Z+XL01hZqXnvOQKL+rbJ1jvlta6w19DCcwqFeZMalGPlbupYiIrDfuJ1svciMXN0ZzzBRLwDFPWij0T8qkZW1zG/jpQeJNHhYh+0JqgwKxwABTJHcu063PIbcidN8psScDYJdC1Bue/68GHXhMzbKjYdTiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762196394; c=relaxed/simple;
	bh=/LTjgZXE6zXgyg7aajtBKMOGOQdoDFsHTGCfo5f5GFs=;
	h=To:Subject:From:Message-Id:Date; b=Ck2WCcDqk6qU2lclIfLdV5NFhcWrsqA9XNFnFLSn/MGSe5586sRG7HKruEH2enWvuDk/pj9Qn+1Gf06/grNiswfSls71FxNhAhFUgF+zphlLmfI21vgvxEcfHJgWUp5JGxNFPgUqQhBMYRbbruj+/j/xAKaOfhm62iPxMTUyu/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTCw8Ogh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTCw8Ogh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA57C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762196393;
	bh=/LTjgZXE6zXgyg7aajtBKMOGOQdoDFsHTGCfo5f5GFs=;
	h=To:Subject:From:Date:From;
	b=oTCw8OghZeCc+wveu6Wq8+tGZku4ZLW5BtsttmzKvfU1z/KFgQGOxI39pi9VY/e7U
	 c9GCN1nZt0dyNoabRrulptecplLUgNubU3btIXeVnEg1SN4EibKqOEW2mkYQTm7CmL
	 5qhXKKm2n+PsiPFmOpQBTSfb3NXfZxu8AJrYkY9a8V80Gi3SyrdptNMH6e6CJ0gAnt
	 7+gahiFHIgGRYE9F44LB7jOVNIbKMdr+nOXchH5UkdjX94aR9fDRZjrrUtH+ZJVKfv
	 E7sTmU37GuOnuahJdP5J5AoVnTC+305QWO3JCgGjfQSAXVcoanjmbwBxv2S8258tmY
	 KoY5fX/6Ko4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F32CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219639359.11765.6274480074954350865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72829ff1a84e7de8ab59a90da168c09bb11b9eb6b09142b2bbf709491755365
Date: Mon, 03 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762196393
