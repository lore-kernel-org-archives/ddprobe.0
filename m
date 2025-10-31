Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E22EFDAD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761929394; cv=none; b=eU9ox2sY9ONey+zXiuKjugR+JQWEp7qyZWpOCa0la0vWfcra8D2IPCmhCWAP6At7NHLtNhMakG+LSkoQ6HHjMp+HhX6OP9EKWSp7zh/gT3LjdGaL/jNmZ9/GHjQ4ZIJBsBHBq9garhkohP8qbn4gKj6CZ03bHGF2hWeKZEHUFII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761929394; c=relaxed/simple;
	bh=9dTC3j9mJ62voHiwMGMkd+T/IZ14dqKHm2wjDAjGHy8=;
	h=To:Subject:From:Message-Id:Date; b=Oi1bzUIQu8p3L/pSQM8LAM5v6vapVEAmB7qtR56gPwlay4qozZQ5heLmQGvSvL0mEgMTrKQyioYZLSWmGm8KEZGEdKExVam8yXG1M4U1/1IY9Irg3uznI/KBk4Gyy/9xCnIjldsOBJUJnakNcReNhmB/ncw9IKoXh2fu4rpQT5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCK+mqne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCK+mqne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2926C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761929393;
	bh=9dTC3j9mJ62voHiwMGMkd+T/IZ14dqKHm2wjDAjGHy8=;
	h=To:Subject:From:Date:From;
	b=tCK+mqneeLYNKQNPMW7xdK6aArkO2joy8f0DVre0UhsCou1gLGmPayuzIntxYoce9
	 lmCWKNC2xX0r1ei/4rCHGD/PUXwyH8Jr/OMq610/GKeLftZyoSF/u7ZXfRUqFMQkdd
	 mU42NqW+Su200gbmjzZ/V1uC4SQmT79oUM66l0ugVYEW61h3Ew0Bbd6SuIJL2VfT8D
	 SREcVc4h7I54kvUq2g3TzC6S60AZGYbK9Pt2JCPd0iAsVddhTfkn/5Jw3zg6+yLUNs
	 8QFqJSESk/iSiGt+uaH3jBy6aWlJObEhUScKyWjZzsRjQ4NlgpgWWdhqia2xfy67/T
	 r4MyioPWxWa/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62CCCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192939357.19088.12184049178321832207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1d85c399fe2e14e7a1a81d3cf499ac44861d7c688db91d0cdf312bbe88068e
Date: Fri, 31 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761929393
