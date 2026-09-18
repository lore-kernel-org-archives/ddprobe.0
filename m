Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8003ACA7A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789731034; cv=none; b=kSP5BSMTG0Nht9KZ7kxHeiUGFq2Hv7nU2onaz53mciDCrV0KEuMR+9mcTWDvMFvY8PzFjB+65PkAbhv/HPNLNoDDcHa9FFZc8mV/exzjyXyaGOn7KO2qKE5axuX0x5M8sCwmMYp/PFjOkERBQhUNYUUUX8XvuhyWcIKAHGdjtg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789731034; c=relaxed/simple;
	bh=zq838j5xVSJcRd3rVJVky0ZYJqJpTMO4zi7aV3C5UjE=;
	h=To:Subject:From:Message-Id:Date; b=MPd03CNDHgbWrRJ0dMbx1UqPvAzKSHTMEiROFJTqlzMEVXvXwe/Xy8reoAec0LDvisRZ6AiZfhxTvnHXHY09HTMPue+DhLkpgQK19jaO0yh2Rb0AQpGhRMHaUXzsDOehKf45IOyBdPJaSInnxgNajGtb3pqLL6SbdGYQZS9eKzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2rzGs4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2rzGs4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BFFC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789731033;
	bh=zq838j5xVSJcRd3rVJVky0ZYJqJpTMO4zi7aV3C5UjE=;
	h=To:Subject:From:Date:From;
	b=k2rzGs4bJaqpA4RKGtxZzzfkCT1Nkbh7dJGMpkAhgNJcPqKZri75bztIjF4V9/sGz
	 dLkGhlWsOsrgWR791+yiElP0t+r/0jClzaUPhLyEavJ2SWgLY9mxXbIoUMDc9i886v
	 JQAHs2zPuU8IYMLcan/2/vI3Jjdc6pg6XFCOy3gsdwCWsk+sRcVrydh5v3T3K1+eYS
	 bByWdtdq5durWUcpsHd0Com8gr5EOrkXmm2u8VgPPz2eAJSiqF7ccm65FjboVcCXZd
	 +S2pGqGOrHKJLgXkc/rjEBBnNSDYFKbKrmWlwDAnOCycCDRkssV66GxD/xJRBAVHG5
	 CtqY5jBYx0kdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66DC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973103370.456.4982274780246963867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ef3595435cf54fbf742b466e8cdba03ca7f2b8d3abd8def140d4195f11e7d1
Date: Fri, 18 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789731033
