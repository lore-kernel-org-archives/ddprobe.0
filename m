Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B4732E6BB
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779061834; cv=none; b=Fhb3ZLDicg2x3210hphALek9sG4Svc01QWG+fvR0e7ZUR1gnX0xIxhS+ACLXRSnAg/SPxjSNJiBjRz/rV/0ARdgs2xymfGw1XcgsNvlRzgw3UO4yMxk8iZv0MdfwsIQCRLWnnwTBOtGhOBzjgzy/RSImJV/bq6DSPQgxmzNEoTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779061834; c=relaxed/simple;
	bh=ejd2Z2YUZYshe9wAaZLOgokSpOwT2JT9xOtnCh1QFJo=;
	h=To:Subject:From:Message-Id:Date; b=a4YwIjO/RTvorae2GjGwnAgmGTsjJU0v36xYii07zM9xqNu3yATLovGI0cMXiWsawWTLw3Uk1y4qy3b+/SkH9tjQmEcBMc/kDJFlymMB1YniJF1p3s+7cH7V0fOBFPIIVRDEXmNKhfqAfErF1RP2IPGzqAIZ3qhfW7MJdWfItZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geYY1nvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geYY1nvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C047FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779061833;
	bh=ejd2Z2YUZYshe9wAaZLOgokSpOwT2JT9xOtnCh1QFJo=;
	h=To:Subject:From:Date:From;
	b=geYY1nvQa4nm9VAmXdONJkfK90d7x75LuuwJRflUZU5ruS/qwMLoyXG+JFII+IZgW
	 6EbdKNV5S7/JedahSIPzCRpkuv6KKicXj99zbenstZi64y8Icxr3+hfcUe8uiQ7oVR
	 jRnCaK7ot8RFBorMwMw8EBdGStUBcz/f8m7c/WPLnx1/9RuHAzKHjs4IfbbTyhlVf4
	 X18FxKsx/FLo7a7G3VBc5/fk7fouusCcrVcgBBw/9tQwYiC1CYbSMxYny3sTLtC+A5
	 E1T88oxWe/91b+SALofyUQ7BYbcEli/14hJyG53gEPR4dYWK+a8P/ZVa93jpx8iJvn
	 txexSukWFnGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F4ACD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906183369.4608.14734633913739021471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5ef7205b730a42c5fd0da0022f32f54e2d59db024e036e22ec3acb1ca09e12
Date: Sun, 17 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779061833
