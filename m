Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0784023FC49
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768196034; cv=none; b=Kc5otPhfNKvShEs3yg3HD6iCdMTLm2WLFxk1Wvs/LMOGUhBvvRWePiDFY7F9PMYxYUpykH+3yTh8Jui1Ent04NrmboCP8tF+Pf2j1HM/UAwPGY8i+VSPFrKb1/ZEhhn5kgVVZkYmsa9LDSlMhagDxNqtrHSpVPKbtipM5hY6uZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768196034; c=relaxed/simple;
	bh=bsS0cbnPW/D8PW2r8oovR9NJzrBvnv+FcikE3yOiVDQ=;
	h=To:Subject:From:Message-Id:Date; b=HAYJkNna6OaLdtfeIbkaOgnLnQEpsnHtYPWuKDhNOy7tnuvcluetgbQkfB0aCqX1/eA5k8oncJ7BoIQGvcTZpZ7ZEcVTwJ7ckludalfQI88c1xAYV2IC5MuwAwHzf7FGFwM4LTvcs7/NszBcuPNdndF6ams7XLXIG0DlgiHSCPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pitSdYVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pitSdYVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C3C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768196033;
	bh=bsS0cbnPW/D8PW2r8oovR9NJzrBvnv+FcikE3yOiVDQ=;
	h=To:Subject:From:Date:From;
	b=pitSdYVkEv9oTKH2lsE331+WKBFix3aVOILho/xoZf57yJ9k14hXUtkJ5rOyEh75V
	 4AYe0OYwb2KGUpMZxHMtVmSuCcaaDdbDnBO9PZPjz488qZaoUF0LY3tlRe+tV5XDip
	 zBaVrHO6A3vgi0tUfUPWcdIbtjCMnY7+JKhcp89dh/d98X2aOc+m0cPWJcgMWOW7iE
	 rL091DfGlVifKB2ApccsWQP0Jpxt1EG6tip0eB1T8+ScXrN+Eyr4XlwiuCm0Jh9NjP
	 1ZlcDXCoZT5Z96RE8OBaMWy32FMXV7Ld1NPfzZVvpTHpwvhLZCXq1bFEV+dWXuGC4Y
	 lOF6kqIvWoo8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909ADD2502F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819603358.25963.3827297603284819346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460313eec2c9fb57543f716fbe474c53f28d32c49eaa9d0aeefc1af76242fd5c
Date: Mon, 12 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768196033
