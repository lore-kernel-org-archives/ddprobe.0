Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C21E79F2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760142594; cv=none; b=JcykMmhYX2NNrBURExja+7PxDmPj+hURaS6P6O+Hwdbogn5nTjfGFoOtoSTTKNX61iBzx/BalAzzs++MmndTf25t3JZTyWklHoCQor9deU72lKivOOeaLQ3RMkXp3+1CatdTdntqjrW+Mc5tl7UZbj0z7t/UPlMeb0TH1cm9Ck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760142594; c=relaxed/simple;
	bh=MfaAZQBvfZ/SVWcULfTjiK1NtpN1FVHN5MwA4wu2xoQ=;
	h=To:Subject:From:Message-Id:Date; b=Vc9Ze2Y6Bh/e+uLxxNsLqv817lUfOzWDImj/Y0l5NBslLCC2rXXvJpcMUzW0HF3+1F6LFKBW5bLnb+mFREu+SePV/djqM0wNuo9itTwsP65bamUFo4pAItbo6czzgFYqS9d6UdvaMhEIevIs62Df94rnfRel6IwslNV9lZV07lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKvDlwls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKvDlwls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA25C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760142593;
	bh=MfaAZQBvfZ/SVWcULfTjiK1NtpN1FVHN5MwA4wu2xoQ=;
	h=To:Subject:From:Date:From;
	b=JKvDlwls5If7JNceG0M9+DlnTN6vXnnrcGIWwDTFzeU6FM3lK2gmuuQhiHeVQzesz
	 Bsm3c0BprSL4R4TK7uzW8IKsJ2h5qH86HaQOy0cusok27Rypdv8ZVbAschkd7N3Lrw
	 bTTRGvJNPUZ6eUF3Sa5ppSbXiyazISqSF3nhPMX8jgI5ndwP8iGg+bnKMmuRtv8rKQ
	 DpQ+fhzgkDLIBkjhZzCr7IA04YB8MQJFZrZRRq8rQFzM0tcVCdg9y7SzUJcbxa6FRq
	 jJMtNvlq1QxkmVP929OcZkibm5q/7DjYuVYNaO1FCCa0FFUciyhPnN7YyXA+OOE3bn
	 MMPTCesF61ULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91497CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014259358.23561.9237628653794533399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59d1eca6cd70a7026cff887db93bd6691a45ee538714e6e8a092d73da46a1be
Date: Sat, 11 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760142593
