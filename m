Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D6C44D01D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784033914; cv=none; b=gxR65rBiJv9bCeIntpvGv1OzzpqTZgi6CtItX3gS7U6bNvGC+EDdemomO9s+9UUzkOJMXT0Cy6HUihEWxE0MlHMMZVU8XdKG6IceuI8fcqCO00+HuWPYh270DxTsVI9ks+fghRXQ6XNl9Q9irdZwTRrmQqbSyzObVBwfUykwCiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784033914; c=relaxed/simple;
	bh=cPWLSTJXceqsPcmoodbSa+nUY84DnBp7pQxoyYtDwEA=;
	h=To:Subject:From:Message-Id:Date; b=XHZp63ZCIh7+GCeHkNa7ivenz6QCtnzZaONHAUxNHk+wc6kkbGLfKJRnS1tXkyJhcL2zkqjtLrF9SXmL87XHx2471ysmb+h0HIPm5N7K6DSgSCgWUQ0UqftKkfdlSaccpWhoRXs/p0LP7oY9NLAEmQtluqfbpR+n/Ixz4X/+y5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ynl+uwE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ynl+uwE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10C2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784033913;
	bh=cPWLSTJXceqsPcmoodbSa+nUY84DnBp7pQxoyYtDwEA=;
	h=To:Subject:From:Date:From;
	b=Ynl+uwE5dkJ89pV5ZmjpuLgc0caZScOriMtBOWWfM0beA8RsCFTWShRZptX4Bh4EZ
	 Aifwukd90m+nsG5lkukquhX5kYqhpngt7199rfd3AwVgJWyM+uHVV4GM9PbYZB91Ur
	 zq8cm9df0D0kf3Wl2Eer5vXrjsdLI83aS9NolVaIL8QNBuAK+/dv4qiE1/D2o6kTt+
	 sFtQ4LLbmfpqPwCvv4cSmLaugvsRY97guxt0dyuSF5FI2c6Mqde84yUssaeUXaRMiw
	 HTRKSmuHAre+waOjR4xC+NNfOLwlDw5GeG1cqwKnJDuxmFkhEdrlqpsf4XIF7cfriG
	 Udcxo7sNQHRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9400C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403391368.14777.17584848388391524509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402b48f2b8b47a39890e9f49154707e35c3c1c63aa9cb4ca0c1131967a44780f
Date: Tue, 14 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784033913
