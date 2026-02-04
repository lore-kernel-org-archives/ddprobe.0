Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3890E3ED101
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770206634; cv=none; b=qXoE9ItfLdJXflI6MBxtLwLeRTl5Msso9johw6+AnwYRkwgb/YSHlN3ZqdAulJs7Dq4W8xyvLBl+QjLlYPL4MCCCM5OQ1j6DxNMr7fUkV2EAdVK15GIA50bc0Z90X8lxVjSGMEKKKDAnuU1wSUhRxyMaqVS2onOnCUvioC+gmOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770206634; c=relaxed/simple;
	bh=umgmMxDM0wq3tu1ES4e5t6Ld0BoBDT2ZiyuPUxFqnog=;
	h=To:Subject:From:Message-Id:Date; b=KYju2JBXy5+doKP5TF/0PQ1ICU+e6c7DST35vwcoXTE6Zf6byDzKRnidF4jwx8QUMqlXzQ6nkDXxrrsyebUeymWFx3sIrjnCfTNGYNgA73KpbGaQFUIZrWWUYqGSBxRrEyTVMjtJNBNts1AKjGuZ/kWR9LzUYXwRLVyyb0zg1eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN/Xi6bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN/Xi6bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C10C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770206633;
	bh=umgmMxDM0wq3tu1ES4e5t6Ld0BoBDT2ZiyuPUxFqnog=;
	h=To:Subject:From:Date:From;
	b=mN/Xi6bmbTJA2vV2hmR3JXCLL22Xt9MTyeZXynix0EoK6RHAtWivp8lr7vLYlAoMs
	 31w5gu0ciLliDL95OGiUAKe/dsAluP/AjtafD9UUSVLvzVbv6KxZCfi9hFp9epFF0X
	 srYiAhi2vhxUTRXWcaziL90mL1ayjF3R27IrLCiyOpjD1nrAADqJYpZXgx4q+lTnaS
	 ASCla2TQ7MTXDQw+B0B0cmYg5TuMwLwo0m9jzkVjM0QFUa53huiiEwz3qdfItUiMz3
	 tvVitAMePaZfz7PeA9aos6Vj1xMl6A2HLr+pjUvt6PF1Xzj875NqjYtN4dzp+Jann2
	 eR7Vzj5qPZNXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E4E9538C
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020663363.27137.3417641255275113455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06e7d579b215978342758a57bf06b6f1b2cefc280c3d11b7cae7a6ee8baaf05
Date: Wed, 04 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770206633
