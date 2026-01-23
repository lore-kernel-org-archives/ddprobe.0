Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE7022A4D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769149434; cv=none; b=se2SbhDPZo+6dfYVOsLLr5XOEYzWwVY7Wem8L9O2bk+6ERlJwOC/1cMEUD2LG/lfMOlxd+s3fKTjcOc7p/xnr/ofCOEw7+W1q8yETKn8tWjFpRNn8lf1mm3qEe2JNguCctAkSl8ej+n2eRBR8a7G4Jat0mQnpzgjjHlxu4Q6zbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769149434; c=relaxed/simple;
	bh=zE3cy0LceCvP5EHLrESEBSQ9nT3SjHPsJFDSJAa8vu4=;
	h=To:Subject:From:Message-Id:Date; b=XNSp4sPRGT1i34yJ57k6HyFFDnzp5k1Jez5t3qNqC6Fj7k0fqFcObjSM9Q8c5Zz0UnXOymAIuPyfP5aJ/lIJZ4hbfK3Wy6HN5o5ZHMUB/E9+usNx8Fm5VrqMrQGgu72ZYxwV4Py3L1T5YNlVGlCl5sR1Vl+6NI6uZcbiMuwKDeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbM1SPJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbM1SPJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBAFC19425
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769149433;
	bh=zE3cy0LceCvP5EHLrESEBSQ9nT3SjHPsJFDSJAa8vu4=;
	h=To:Subject:From:Date:From;
	b=sbM1SPJYyWyRKhuSCqDr3kEqQWpL1BOpG/IRYRokO/pkmv/Pyo7JitvXmX+WYpUFx
	 NJg3OVVv8XRePDbH2g81KFQrmBCzp/rFkqoeYodk3dKMyPdbMh0Wngt+BCVcz6FCm5
	 4aBEvHrUAEoqonnU/+ZifXoK4siMwYV8ojkL25tixbDNHWGHg+XKLG4zDDtJN1ckgl
	 qtrSufz92aXfGgw3IAw5EPxHJM693orI+UkmJMMY86WhwzfocCZnrw5TsZcwhIcGYo
	 vUvILW+MxC9GFNFLkfMRWJduVm61jL3NAFZVO08XnM0HG/o9KEp7oGwbNnFfHcx24+
	 RAiKQXHmjhUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D39D3EE9A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914943361.23395.17301163926640541033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bce092682802b684d3c078cc5e43f455cece0047936f37715f09bd884ea7de
Date: Fri, 23 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769149433
