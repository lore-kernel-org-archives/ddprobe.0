Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0050D15B102
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745456995; cv=none; b=UmcnMYWGVrR1ETY/xg1kGy6ZYd9rXnj8UaKTVTIPjL0X9WpL5VrPx95ULs6AzPqCjcs/WqUaQtIq0T9T9rKqXgISi9M4xwq4Nf8HIOkIB88lXufGGdrfKWpXJPFR8SwyWR0+P0qimgqBG+qLhfQuIMCmiOeR22tAIAcU/wzwMPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745456995; c=relaxed/simple;
	bh=mq8fdFhpNStFXDwKN18PHBwmnCJNokzQIeraDd7UZPk=;
	h=To:Subject:From:Message-Id:Date; b=TTbr0ZVXTsK3Xt0LIrk3ZjznyWm9453NgyFXK/sONFFhrC9XzLjGdkXKyBzrreLGmINgvelE9IwyPypyFOW9Rudwt9TXsoSTGXfWFEzCOy95EiiqnGW/Zgq456azF3bT69hKVa5WK8Fo2jPn86XPCd8sX4A9KF54+M05cDcNyz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0SpgmXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0SpgmXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEABC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745456993;
	bh=mq8fdFhpNStFXDwKN18PHBwmnCJNokzQIeraDd7UZPk=;
	h=To:Subject:From:Date:From;
	b=c0SpgmXydgfvrnGLVdA0dG/VuBS7YAIrpYu0s8FLDynSz/pdzcjyrCuzVVQq75AL2
	 VFPD4IEKaeUGiAdM4vchP6+sqBFD0f1WwCjiYcMGwtPlQDwHB7hVRJvenHi6O4RMvv
	 ZzsbAUpMyDviwg81xUt5KBqs/q7Utkm0AcQ8r8RMooN8gg0JOvDTEtK636AiV9A9dh
	 NDOaB3JG2JnyL3AUhPesFFYDCbkbIW9Qe/NWaH+XTIZ2/C+3K0WbKXex3HpYH6gTCG
	 /dENxEVVRcZFoSCxNs7cUy5zeI7cOT0mKonPjSGhdqivH06O/HU9y9MdkkhPf4N5ss
	 8eNSYjNbqCbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E618C369D3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545699357.24279.3433332606401008243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456c1d13767162b56cc428a54b89abfeac2d1f17764dcccb9231ddbb86879f8f
Date: Thu, 24 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745456993
