Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162A01C693
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727774154; cv=none; b=repI98q8xZLAXtINsR3Pj0V3atqmlIVcSn3l0qZmuWa/m8E2X5AtdAEgHi/b3xhG5vwhcMeCBMTQ4M50FyuHolHJN0WGQaoC76AbP9+Yr19l5a0Q3aLvoip0ZfkvDomGQgAWXzuS+uQhN3R2eI8e11mmFwzERq1+Mq7tHDHVWZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727774154; c=relaxed/simple;
	bh=xEIeWzGYY2kSN2qzBo+0nLsdbNzkzOVV6AQ19SGdz4o=;
	h=To:Subject:From:Message-Id:Date; b=kQzFPO85dGqWw3vMEgvdDaTx+KwxKv5cHnBBSHEVrhJx3cNvwNWMbrI6wWNrtG7znmCecNMSJSOE68Zww2pwb5PiOPnYXHJFO2QUvKO6JR9C2nSDibMSHHEwVBaSxhHGAEhLGo7C0W02hhm/+MnNZGGL5KxtvrYaE/h8h2ksY14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWt5Q6Ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWt5Q6Ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D1C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727774153;
	bh=xEIeWzGYY2kSN2qzBo+0nLsdbNzkzOVV6AQ19SGdz4o=;
	h=To:Subject:From:Date:From;
	b=NWt5Q6IrnnE4mRuYZAU5Hq+dqi2+bpmpEmYW/XnEf0h0aW9JvL3BwWmzDlDT2J+yf
	 9JEcGEwZSa+LVCmmZ+CyritskEz7nDmwsgEx517J2yrIpq7GlSM94eP8+SdlKWtJRB
	 jxwx8ylMztySJEcVI2qjeMeXffz5TDbInfFujnSAQ5bBFzcsSBPe3p5PkprBSeG0S8
	 PrTsMUhwM/vuaiqOzvB+PGrh1MDX9vbqb58f+JozP6LyEWubLfQEtVclr43+EIcW8+
	 eE6TL2M3T2n2X/+18Ge8r6t5VaK8j5vRsNrzNqadFdH8FAZiJ1egGlzawc6Xvrz2md
	 Et1K2Lj0Ms16A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92763CE7CE7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777415359.2555.9139327250317170925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cc8fa0233f438f7681402bd106d0c09ba8252fb4d7d38eacded447de5ea967
Date: Tue, 01 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727774153
