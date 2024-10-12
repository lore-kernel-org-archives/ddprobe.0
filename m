Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863D1E481
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728741954; cv=none; b=hX5uxPIAW6IjiPE5kAp4UeQj7NCC8DZUXWUNBCY3iWsMdzFDY6GmtiNJ47uJi2r5zNSYMOITAwr7elgy1C/BShZsAKQPGAPWwoUoky1JhscZ+NPapupSwBi6t+0L2EFHAawbEDEdJhNAvzVw+B3vpSeO309yL7lS9MocCQJLe6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728741954; c=relaxed/simple;
	bh=UjImV3FetgSFhsNTEW24d1Vd9JIpMe3ftzzQlIuSGnk=;
	h=To:Subject:From:Message-Id:Date; b=thHfjQDpqJIb8m533PPMDAoWexyRYDzI4wmg/2V8W0z3Fv3FXOxKsmQBHvnAajpYsGnjsg2xMopI46+hGzx58Z/difRDY6IclQgL0Ep6CU2c+2YiDxcGPd5CA8j18pjMkQ9lnUkTxAnbuVTyqFpcGT0LsJGeYYac+w5Wqv6l4IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+mOzx5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+mOzx5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F6C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728741953;
	bh=UjImV3FetgSFhsNTEW24d1Vd9JIpMe3ftzzQlIuSGnk=;
	h=To:Subject:From:Date:From;
	b=c+mOzx5YnVa8iljMBGZj7/TWnxAPrNvyKuM6F11B9LllwVp3G1SIRES5OW1e+qqJf
	 C5ePnIYxjkmDMtZtJSXP7hZyl35T65tfJXkb9yR+wgZXBua7fDQlxP7CvsHfAxCooB
	 DVJQsmUppYYTaskfAWVw3bYeXPqDEFkx6n0hZVMNxSuuRR3sdaGij6+4ALCt4zlCPB
	 MEhT9mPyJilHBlHz27Cn7ltCwq2ZC5JnacXuKNSp1RlzQLUtkIOz/FQmxMXz+ZwCfo
	 l4iLT9vopVB6jJkNPw6MCUgKlLZEBTZRG69XG67E9PnFxpjGmIhLiVSktUXGGY11Ye
	 qYxi8gswMWrLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353FCF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874195358.2153.18077648765649162760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320716df10e2bb1e078d644458561425287d2e22778b0ca0083c040bd84550fa
Date: Sat, 12 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728741953
