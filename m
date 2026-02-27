Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2466338552C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772219094; cv=none; b=T77yO52E06rFzzhbtB4MbZAkTBYWFtdbbhYd7MSFElnekbWST+l5vz8zY818MCYpb1paBvx5UFL2eOIIrY5SlO3gi9kPUJjOV1aeL2hmN0ETY4/cdmTJEsJ4T0vihh2xYVlPPq0xCCbTG6xJo7OerAZ19yZZzrP5Z/oG5KRwKQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772219094; c=relaxed/simple;
	bh=ki7TSKpTTvHrxENdl+aYOW/Jr/GRUs2o8IcBjtFEIh4=;
	h=To:Subject:From:Message-Id:Date; b=SgrSThx7Xa4GP+NnUwY+NWCDPKqNSwfUq28BWZoD7DNBUJ1ZnPxi9CZEv14P8UqU7hMLt1lgmBiqt8ghyXNCij2URCecpFTFwzVhzF6AV1UhxkazyeAN8UFhNaTSwD6NteglSB16ZxtfIORLdNdgdY0k6T1+liE+JXmlCoCwky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzpFH1dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzpFH1dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E8AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772219093;
	bh=ki7TSKpTTvHrxENdl+aYOW/Jr/GRUs2o8IcBjtFEIh4=;
	h=To:Subject:From:Date:From;
	b=qzpFH1dp6mHiOmyFWkGva/NChLOiqm+W0OL7yrCQDOsh8BWU5id+SY4t8BIUru5uT
	 q4CqJdl/dExeiLZnZ9yDqPSysoTPQsQWj9ZySPWkMzjOEr/m6gnaFA2WGpSH/IAuAX
	 4ZxOxzxCkIQtUNymzLXFsM9r/Mmh3S4aUO4RZ7Ri2MRHhBrEIUFysUUR+BhojLgu9r
	 gK6t8ktTF+PvseHXWz/dpy1PptRGKhF8H4D4bwa1KLZA0R4iX2QGvJsg7u7DuqYUlt
	 Yjrk4yebVu7YB0curnbwdsj6XAdAaga9bwdWtz9R6Cf0RQdZRAjDeXAppYBdmzcrg7
	 A0O+11p/wxmJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A045AFEFB7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221909362.22397.10328133089136513320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb3cbf517a060afd742e85880a3dc97d96439c7da02bb5175b00040e2254132
Date: Fri, 27 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772219093
