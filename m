Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A6618D658
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773545094; cv=none; b=aAtnPcWJ4SKAUArgiKz4Cn7z+gsG7jXv/TDk0ZW2xXtSWhWc5/Ww2WBR73Aal60CH6tEVpKdfM8aUkNEYFExe9mxo/F5uMAyWUmMcU8BBVM0LAvhsTQn25nUuTJHrrK/1VTh13PMIdrA5ouU2hz/2+RJYJGZsFuN9cOGuKHtNbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773545094; c=relaxed/simple;
	bh=J3MauL3brL6X+A1oVDa1PFPuek2KUlruN0qyG6L1K7c=;
	h=To:Subject:From:Message-Id:Date; b=Z5e9ZkhX2Ejc+kIem3H1t9WEjMwhc+fFslfpULmk5y1v0RDPSmL6eH/VdD1nCTHh32fBmJeGddCIIGom6Di/oJqFWj/L9lwM+THpfoe4RlK3WkxDgMFFsc9xzcesSXJcqYrf5IqoXvxpivp5BoQd3d6eAxRoWIx6rmDnSUPGwU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT3oU+7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT3oU+7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773545093;
	bh=J3MauL3brL6X+A1oVDa1PFPuek2KUlruN0qyG6L1K7c=;
	h=To:Subject:From:Date:From;
	b=pT3oU+7BV9keH+DY6j0wGY5mHN42IhQCWI/a+IA4tAXEts0YfAP7ud2zyNiiPdm7V
	 uGkPE8CpvylI4gGHyJGEEcuhr1r8ABA7emjdQNg8mJjARgIbE78og29PnpyFQ4iLs5
	 8RaVSP2b4ya2NXMbxYEEAvgZ4MlJ726GJjxryb131KyVkhuRBYQi2P1UXatoaW1m/Q
	 7MQIlEMJdlAcZWjyiK2jnisbP5O2oy1eFqCJnTf+U25CX3y21mJB+HoiKDzFn4ol9H
	 6ye+/j7TnywS0T5VNj8aJViUlq7JK3+gG2gzNuTBVAj0GbDBV3YDr5MC2mzFwsRffN
	 Yr3qAhylc7pbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B910854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354509358.610.15498832199443112206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025b1ead7c3af236ac3418fb7cd1d11e009f341f99e00258fb5e1a316c1c7a30
Date: Sun, 15 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773545093
