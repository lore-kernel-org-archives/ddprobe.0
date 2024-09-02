Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6C1C32F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725269754; cv=none; b=RtaUcVOnakTFFVs3kW8RSKtJXsXV7moPuy+a5LnhwbFP8Y6CQcF4OmB/+8C3YSjGmO5cU3DTBM4xK2Xse1zLF7htQ/pNLnLGtNbSREKOkuhF5n74suUREh14Sph9Lm8Qlg26mrHKLz9y3tYu9lX9eK9EK3E4e4SYMxg4n1k7DjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725269754; c=relaxed/simple;
	bh=9lP+RxqmcXcO8yOdKakuJ3H90ue70cKYIA5AH785VEU=;
	h=To:Subject:From:Message-Id:Date; b=pAOa8wmNkEVRDSTbtSlDdj/2J0yer5FCM7GPYfLRUaGdgi6Fri5y9I/SnNytWoMz+VWTyqUELXMRHO/VYd/WM3Zq5CVhefQSaVFO1RP3XkCiQ5dFd+4lhbNgqdx+i0fqw8jbgXEd1ioMeCOsglnfl8I0kJyXGltimJCFBU6C8V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz/RnvlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz/RnvlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39FCC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725269753;
	bh=9lP+RxqmcXcO8yOdKakuJ3H90ue70cKYIA5AH785VEU=;
	h=To:Subject:From:Date:From;
	b=Lz/RnvlHxyJ64h7CP14oDskahFAhHl79yQijrkYvjlHWdpfNJdGy+6O7TjzTsuQow
	 MZhwRaHBN/ldKknnu1jyYVWOJjKlwZMTKlKTxSdoW2GQ68zq2yLXRFIJJ0dxXNcm68
	 nSIVlMzUGA1XvpE8HyN7F7qmnZKC4SmtCKpqIKQx2e05AVMzC1kJ/IPJBpQLC8N8Ow
	 R26EnGztM8Ae0fMjgz+ByCgCgtVqp1T9Rs+S0fDjSdPTL74l+KBylxpEE6KWUbvIW0
	 +0YBMsQ6NZbyXaR7OoEoIRnCD0KVCNyeL/M/ddQoFCaSZJKW6LQ/rv2kARiL+K909b
	 ZNFe4F29ih0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A9CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526975358.10539.4817438070537867958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35c0dea1343bebd9a35ccce447849fe9a3092a64afb151444696de9134593b6
Date: Mon, 02 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725269753
