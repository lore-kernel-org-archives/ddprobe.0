Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E02AEF5
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783647514; cv=none; b=qYRXz6LTBJtVRrwdHmx1I81T4UNTyvAfvMBozLZ1WzZciMyKJditzzeKUlLTYp7FW77Tjs2ial7XSfWph6aW3NFsOPRIKOmCFC3AGNLb8w3ecqSZMHkik9dAOBw1r2nCMnLy52vr97fuCL4hqYZHNBzlOfywgrWu5V/6nxDkAfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783647514; c=relaxed/simple;
	bh=CsZPxVTEm4efcUqCYHrQa7c3Bn6bJpYiOPhoP4OWvWs=;
	h=To:Subject:From:Message-Id:Date; b=CPmzN7vzB8hhP8TBbW1Ig8PUkpfoAqRsJdrQLlahX6Z95SMiIiTxOtJgTizjrzggmf+mYB3ytQXCeA+N0nN/yoAoEnTHIsQx8EWOAiSivCv2abheSsE2yHo6DG1LYbp8sb7Wd9eNXIvOf434cNDtvrfdrBKJ9eAV0lqxxY5y1y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZ16M+5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZ16M+5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB27CC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783647513;
	bh=CsZPxVTEm4efcUqCYHrQa7c3Bn6bJpYiOPhoP4OWvWs=;
	h=To:Subject:From:Date:From;
	b=aZ16M+5cA93CorZjmSyk7pCn+zhstQwIzqeGFYr7kwhJz3efmmcYe/VqRzEMtNiAe
	 XzHRf9+DRJ9pc6cUGNjedp33yL6ueQZGy8bcA5OqKQJccto2L8DtEuzEfFwxAab0mP
	 sgb9NYyU4OoVi0EWHpYMWqOn+aIEBMxehCdO4NtjJOnqeNqnF3E64GKIVGufXqe80B
	 dipV934aR4w9cKc3SBvqnNvUu34uG5m0s7wY8Nt0SHCGbtm2n2PYqXkL4Zt3Q+WU6p
	 1f8ulO/BLpul82rBg6lU7y+5Le0ebpOIkJSEHxulXDl6omc4iezNX57TaVTFc2NqeN
	 8jSikv2EnAvpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364751368.24458.10530327870710810525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8cbf144ed0784d749138bac4e0a21ba98e44b6a9a37cb141b7842fe635a6266
Date: Fri, 10 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783647513
