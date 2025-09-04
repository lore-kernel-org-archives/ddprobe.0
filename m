Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3551295516
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757022593; cv=none; b=HasRL+SG3I6FBE5d4iwKjz8mwD/ahABHxXjf0UyXt8WfAZ5iPAKzf3DO5qJCcBAFC44Q5tEwPjvFVP18mYcCJD1tnDc8Ax1l0MhrUcsiQJfFyso+eXQjw2UGCq19Odw/s42YoWUFFp6VrIQS5s4JM3dIvsk6Kawp5AFq3SP+hSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757022593; c=relaxed/simple;
	bh=KnWb1uBU7mXZ3GyzsEQrYvEfcU5dsvkRKCTCAFEN69Y=;
	h=To:Subject:From:Message-Id:Date; b=WTuFmyIT6icNWF1Aatlh9ELpT0GAl6kpBF7KeFlOjEWwvRLSQTgmCgTLzDKBUzQvMnJMP7Y1vuwR20LhnMfLLVVLiXBMUJazzf92IrkxlLzd7X5bsiIvMS7ThKlmK18PWJ6OExtfRYMREWoiXQqLcfFkdKQUCyjuEJ69Erf2QYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2X0AylX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2X0AylX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0041C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757022593;
	bh=KnWb1uBU7mXZ3GyzsEQrYvEfcU5dsvkRKCTCAFEN69Y=;
	h=To:Subject:From:Date:From;
	b=q2X0AylXoa8d/CGtA0FsndSEooohlNo88T4eHGnIhFb7ObowlF8TQtuixT/+lnZqu
	 MRsGoyO/6/wCpOeK/NIYP/bRi8eDNThFEX4B58PU17DSrKMDWe7YO3ZN2bsR+IxRey
	 0ITPgz1JoTHCujsXFHRHmMh1U89+r0RH81No33N6p6Pi8rPQbzBCiZly23kp2sy3ug
	 iqiXidFRdtHwUg3SiHCo/2EMESw443/IyRsH12YYrKloRN9yyJbBjY3z7L/oPB3qEF
	 66V/AMkHFxbmzru2j1fvx756ZV1cLQl0W02nQyQOIjfUaEQ+h5VtPJ7M9up8/l0S98
	 HMI4i+72judeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8DCA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702259357.6102.16882442117656214741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e28e0a2964be2d77301b2684678a0cbf5c236bfaaae1066f8a430d9da7ac0f
Date: Thu, 04 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757022593
