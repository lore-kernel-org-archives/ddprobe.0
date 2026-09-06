Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C10374A06
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788679835; cv=none; b=t5PxxKN+NcBAHH+wQvWntilBoI/aMKDWmFvoQloYKXCM4Z+XQKbtzHC7OdZ2DwmorMBVPx2ZkvD8I3ANrfk/T0t39IeghFuWip5KgE4MriazYZGWKb25lVxDtpPnjN5Qr7seMOH+VAb8hfm+Fb6xvBxcQ6n3nFtAj/A9iHbwe/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788679835; c=relaxed/simple;
	bh=8tHGIHFgMCPqQe4uSSu9Tuy8JhnqiXLU4uWJJf9V3sI=;
	h=To:Subject:From:Message-Id:Date; b=awoOMrqVyYiHgTAzPtPahH50acUtc1XPFh5vpsZimFW6oi/N7pruWcD7z3T/vd39Lcne3cBHDHSRveL+rneBbbz7mJ+9jKxKcTahaNSQYL+e5dKnonsTNGwCYHikGNYHK45FOmyE72BJHbFibbxjjPJZx+b+W1mXQ7MMYTr5odw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYBlvPs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYBlvPs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788679833;
	bh=8tHGIHFgMCPqQe4uSSu9Tuy8JhnqiXLU4uWJJf9V3sI=;
	h=To:Subject:From:Date:From;
	b=UYBlvPs58Z+zOWoNgk6r+f/AsXnGVOm0kJ73wPH/8WfDqqCr7naoW56LVZaWO9opX
	 i7AWf3U4qraQfYMd+ilChJL+fXkhooE0huSAyfpiomxMYVHzWC6P3/BXMt5GrFKO65
	 dnbiR+krZz7M4MjY5YbWf3Gh4Xdrgxy0PInQ5FDewsNf9K6+JKFsVMESS4gRDAbeWn
	 K8Z7HE0pMbp+zfLlRtF99ts0JhQOQPRzGWafCc9WAKECm3mpI2VgdkqJiOdZkvYABU
	 0Bkzw8k8AnNM7cUQxhTZZDxm/9xv0TvhVts+h08AH4/lcUElkQwNbJn9HLJrOrEEYY
	 H6glq4e3U8CSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C3C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867983369.3197.8407331609062096996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e61d17f37f40f38c9a1eff5c7ca6e389d82c9b2a45b43abba9382368407277e
Date: Sun, 06 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788679833
