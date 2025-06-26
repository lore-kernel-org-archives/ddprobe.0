Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C67D81724
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750915194; cv=none; b=kh074Nr8dMiJ1Nfp+yP4njXwIqJIAAq2jp0Nlh5kCPX+NwH/I48iKEgOkbCqqHbZzj53gPb8y8mpr/lz5RFzWmkhsgRv9huCj8YdNTvBDjudjMTf8f/hbKSs1Sxyk5xqtbL2hgyf5WTJXRrk02JuGPPhBQDgSLYe/kp9SCTXVyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750915194; c=relaxed/simple;
	bh=Gdj6flzHgUM1aTvnC4lvcZ3JxuSLEnQfE71NG5E138c=;
	h=To:Subject:From:Message-Id:Date; b=YOXtIw2EWktqVFmHkCKyqonkEC1fFfm0sbFS6ujuNzWVl1D7lA78OBc0tiE828V2u+DXi9hwKe1N759w9APQia7APvq9PP4BQwhc8Zm7ZACh2Q8inUmP10qO5NP3NdEhQFEsEsFKdn4JCIlzc2kW6lmpJ3LpBROijw8nkOXQe/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aidnfbqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aidnfbqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848AC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750915193;
	bh=Gdj6flzHgUM1aTvnC4lvcZ3JxuSLEnQfE71NG5E138c=;
	h=To:Subject:From:Date:From;
	b=aidnfbqSzP/KE8zWqPvHS8dJxgtH8U2TnCDukIJjSvBzM++fGSuHg8ZTBJy1A0EIr
	 6onIqx7jwauELTwcLY+G6bOBBMhF4uizfh8huST2+Z3rDgV2cdx680Jk9jz/kXVfOJ
	 KxWPRiBDglHhNLzjp0FMBfI0kcrrJJxtMXCm8WRt7r3rpB8FHiuzO4+qovHnZfkmSN
	 uwtOTwfx/Yg/9Ia3dEPn5Ds7lcsRmT+yDv+I4gWq83wuN3nhSQB1eHtp+Ax06R9VN9
	 cfZ2Qn3fDHmBy8F2BagiHmkEwlvnhM3GS+bKSZJDTvAbfhhbK++otJDAHaBOYZAyVx
	 A/5TSkjFZd3yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C2C7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091519358.2393.7151610666060762357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66c5c160f7ded6290df026d5791b719ef434858662d7654933a6f0e92c9e42b
Date: Thu, 26 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750915193
