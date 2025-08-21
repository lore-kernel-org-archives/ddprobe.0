Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F102F3610
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755815994; cv=none; b=ETbki0+a6nQfCQPU8BnLVxhz9cp8C8Yau+AqlfbvdpgdJDPDHid7ebQMhOD2H6CP5IQhYLASrByHDWREi8r/D4pfDSnxDRDABduadiNJIQIip9mfRRbYKUaE8Dsl/V3Pso/7ZuAx5gdGcvkzihv39i+CorzmYSR10Eez5gHdXSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755815994; c=relaxed/simple;
	bh=UHmztBMkfL90oQXRo7kUZPkIUHgivffmJDWN4B/hWiQ=;
	h=To:Subject:From:Message-Id:Date; b=P1BUeCygqcc3Jd5q6op+MjPEpGMgeoDh6I3C96b4EDEX2XZsIZAQ1oz8XVH5uNKDq4Y5HpLSHNBa3OO19fSbSGDxUOPSTsjJsvQUJebOFKgvm8ZEYXLNnl7XBjgyWE+e1OW0tSslclJ3aZOqr13inVZ/Yqqf0JFWS5O3RmSnmeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9ENJIl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9ENJIl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA064C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755815993;
	bh=UHmztBMkfL90oQXRo7kUZPkIUHgivffmJDWN4B/hWiQ=;
	h=To:Subject:From:Date:From;
	b=S9ENJIl3+Kb7vHcrtP3Qfe0p13ATPxGdrHH0r0CUNv7tq51vcrnS56Vfyojg/FUeS
	 +NcHl8dZHUmK+8KXOZHntse7IgCXAN3lysdr12iAsVnc0gyQMChHiuv3aGsEXO81vK
	 jV7qzi7lTycSYkppnWGfxlXmWu6OYeUAiPSS82YKCH8Mz4qyW9t8RFpV+XeEFhl21Y
	 39lsmWz7bLoQBjiKnDxqSw6d9JHq4Jb/xaEyVGoOAltqNkYV8MYgOtGV/uWWnEajwO
	 d2wzDiFbwLD5Ww8By40upP81qqKAQvVRNyyK2NlpRinRHu2zCQ8Qovst0iOF5agtK1
	 Ek9Ze1gteD9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9969BCA0FE2
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581599361.24374.14087354262526711111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f6f42bcc8b0268b49bf057516435e62b095cc13df6cae5d2470d8dff4c2a4d
Date: Thu, 21 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755815993
