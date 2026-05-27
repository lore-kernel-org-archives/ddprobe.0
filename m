Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F32641CA
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779861154; cv=none; b=VQp4oaTUZmMONLOsgd6TWERN7Tj+bEiW4NU59WZlxafC4R+m28BVNtlQ7KbBPUpBKqftw23FU7liFzxkBMgbkmHz/QdHdqTv0ODQOqQOOMh4pGqyHXcDrWRXtXxEfc6GUyp2rV24wwKytxBAnCvGUuvphEDCdFjPBFTjAYAHo5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779861154; c=relaxed/simple;
	bh=KedTGdgDbej4DG1Wamu4lUdca1UKR/ZLEuoa/Sf6fDM=;
	h=To:Subject:From:Message-Id:Date; b=XLgVyDjXR9AwdMt4KwCmWdzYuzi1dUpqXj6FVhJRsDYkJuFa4y5IL9ET9INM3hrQVUO+G5QAVAc6pHGbJw+oBmfs7BI5JDmbr1TmdnUrULlsZwwFXw5qOVOjOw5Q2OAM9u80EosES1G4yrPdY5W7vr8l78Fjo7TPKtwsVOHWoXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXvZhhtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXvZhhtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B12C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779861153;
	bh=KedTGdgDbej4DG1Wamu4lUdca1UKR/ZLEuoa/Sf6fDM=;
	h=To:Subject:From:Date:From;
	b=OXvZhhtrkxt3rnpBydF1zocjOV8E8h34FgLTV98gOHS2KXte6oQJETnzz6GCWqXqC
	 3COLYeVVT+VGqnLSdwcpebnLZJxSchBG6gpizsqNo42yg+X23G59fXu4oOHezhCZrt
	 JlquQgQeEaGuKqSVVBpVYfETcK6N0JfbLi5Xed205t4OJNmEER3tPgqLQJOt8eWXnB
	 1lk7LQYayH5vQfv8YPFK3ojg+PCYUXnYmf3uoqB8P703m6GIlrk14OPMXlnJE0hBLE
	 3SYZgbYYYqfKutxOPa54Ux/3DCNauk5NfQ+MF4vSUZUshwT+8zldivqY6FoJ4rLTJZ
	 JWuP0ch4cmSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D86CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986115372.19090.1371307178789145028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2072db4b2a6a1e124d79ab0ff6631be6c7094645675439517254bb123e93621c
Date: Wed, 27 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779861153
