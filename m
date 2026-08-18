Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DC33AE6F7
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787023234; cv=none; b=XV3ighm4h29/+1pK4rmLkAQCv1qaPSB8IGNELl84jglqJ2VvpQm8fkjYK+LEojfej0I1cP9u0tQC7Af5hQ09JqK5hRzQSYjnOzd45HCX6GbQ9z9Fdk1YFDmcf1Dw6xKkbpg1PLZWdnn7rHR12SY7Capav27LP7/obWrjgzGKUiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787023234; c=relaxed/simple;
	bh=U8gGaF4XognHE2+BmoyTVHMDYPl4Wqbl8bhbcrQ3aBs=;
	h=To:Subject:From:Message-Id:Date; b=AxizYLrBEcNn7nc/2djkUu2aeRidwsPvElKbSlHR4dYA+rJXjGpGVMt0VyZnCpufdGrsYLzrOMpzSCW+UFp6LQENEqrJY6yt7HLfUi7HBPKRP4Q1DvE1CGOcXZ3TQUeY7huwu3jjoDw+OOL7S55rgQLVmmMO05o0LCX/VyYtm/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9aniham; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9aniham"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC648C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787023233;
	bh=U8gGaF4XognHE2+BmoyTVHMDYPl4Wqbl8bhbcrQ3aBs=;
	h=To:Subject:From:Date:From;
	b=G9anihamU/BdS03SKkBzeKsFY9FsnY8pht5plbJQnsPHEccTRnkZR01nN+7jZ9lfS
	 qt0vm/E2nXpKzto0kp0b30PYMY61KgDc0FFU2lCCBU6/yUV2n8jAvQEHSRIO0Y/JO/
	 uv9S1GNmS/EC4YJX9E0fLd4jgJ0ysSc9f5q0rxfFcKPF6Pkrgf3GBcYRIDJccPWvp5
	 BN8vTJdWVQAGiNYuW3m0g3PvHGnyxi7wtFjwHh22g+kRyID3CZGRwpZ45poHdNIpX6
	 8z4cPzMNRHbG9GNbhBaXWtdeFZb+8C8CK4dVQZXrbEhZxJcikmdLn9dImKAyYqMek4
	 nSzli4m4I//mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E00C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702323368.32338.14479184501049350514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718f4f93c032c51928accad97a506572835f52aaec789a8cc69ad884ab6df5ef
Date: Tue, 18 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787023233
