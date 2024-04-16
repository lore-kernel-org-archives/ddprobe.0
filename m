Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435C73199
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713251963; cv=none; b=HgKIWmiFuFgFpqJAl6TcsuFvMOiQE2FXm3NIJHjuSXxLIfTMG2yY/17UN4Q7i9CA1ma1ihEOMTbCzICVGlV+ydGJukwyjumCMFHsj5RjtLCZX0Z3wYj9zy/FTSDad2CsShaLs3iACZZFCCYFfNax97uQF+XeEvLeEAOZYnmwrsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713251963; c=relaxed/simple;
	bh=ldv1PwsbDiIJc97MKcWBjMgph049uEbS42kHcdkI9vE=;
	h=To:Subject:From:Message-Id:Date; b=ZcwheN405iYvBMHv95Ubd8X+VPS0ecRPx9yUGJ6vGVk+CJaul97MOpcEJQTEbwYLu4XiJxnUaV6TGlJIHAl13ibfL3EM93lt5KtMj6L7k4idOl4VJqQ091MpO1dDanYU4YWWntkQGhmfw+fcfd7fKto6TWpkc4G6wMBKNzV/axA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZvihMkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZvihMkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC28C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713251962;
	bh=ldv1PwsbDiIJc97MKcWBjMgph049uEbS42kHcdkI9vE=;
	h=To:Subject:From:Date:From;
	b=VZvihMkOVTHFIS3WwFjiQINluryQ2lEdiDxd0tOP0EB1TLTaI39E2k9vXRs56ZJFp
	 zmbjxTwFxQzXl7ARr2B/4quiqNv/QKRHqDWWxSHVxX8Wf3FF5FQk950W2k3HcllJkU
	 6alkQYhs0aLPdTPJ6x7IUNCpCoAwkTItd+1f2PHanE+B96MpwznUSWAc4fO9sugRI3
	 mBbmvjkz6fNTf0wdEp43tF7EOjw1Rk96NkHCY7TSh6yyXb1oqAFSdgehggo8qn75Kc
	 T3gIjrAptGTL1yPVUW3HrglhCSW8+o90LrhrXmL1dsfNn3O9bfEzc2mckpmddzwiHe
	 RKdeALM56yZ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD40EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325196276.28145.7837750846771001508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb1272dd05dad4d82dd94c65dbf1d5bf9020ae10ce294e17f5768a4b9e30d5e
Date: Tue, 16 Apr 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713251962
