Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC51E5215
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751942994; cv=none; b=es/l3LuW6w37VaGUW1F/WwoNV32HRiJRUZtbSAdjjGwInI/YQ0Gqd0Jg9ulKMHIZe6ox/KNPJGmbOYEABE9u8bBNxbLFdwBXs+1gIlls9G9pYBe4N9l2qoIsUfk0+1kMiBjyJhYFnd4F/ZGlY5Hbdmd1AS4zpbtuesps/P+2+v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751942994; c=relaxed/simple;
	bh=Qs6YmeDpMoThkUEY7jaWaUveGrlapzxLF01p3wp9m+k=;
	h=To:Subject:From:Message-Id:Date; b=NnNv70pESRDZi2CMmQg/ekWVmX9HDW5bStUDxNY7JZwsin1MgRr6mZq10Y0+8SJ/1lLXQSaFFAnpN3GASF0DDqriVlEoEKsuFmjO8uo/32Uyc92aMt6o3FQ3m3C15ptiH15j/cWDcFASe4r5mDl1PXz9SMihEo3lLbjoOF1fVak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCSqnpJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCSqnpJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2813C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751942993;
	bh=Qs6YmeDpMoThkUEY7jaWaUveGrlapzxLF01p3wp9m+k=;
	h=To:Subject:From:Date:From;
	b=LCSqnpJhIqYGjqg1rFvIOWbZnjDuxJqN2uNPwG0cek3Eq9Iiy4T3kX+LB43gC26kE
	 Xp2xx31CocegH4h1kC4d55/KXkECZnLh83qCSQuGBNG8GYhqIWz7XRpgb3mGUDSufc
	 mnUFGzpvmyr0qsscxD6a36DR0aUxigCr9uu1uWEos3n+Ah3g/7P9/fLjB99sN2N+fM
	 JDrbC3Pphc1m2B4kd63Y878mJR2gviMnMBu86UDQ5HlIhdiicdhJ3SA0S0ww15e9u+
	 aAQmX7yhmHnhnpoDMfT1V2TsNQdLaxc7Y/W/qdR8oYNZmikA25MVGMLd9X+33egU5M
	 SdYqKAe7GbfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1BC83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194299357.15273.3919856560289040672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0276196e93c15be3d8ac9886196f7665f468fb6c6a4a6bae19f1bec60894fe62
Date: Tue, 08 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751942993
