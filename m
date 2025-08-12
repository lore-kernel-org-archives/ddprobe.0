Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C97E1A3029
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755030594; cv=none; b=Q+KPKZtqxar1joOSLrf5a/MeBnrLRheptKkY5qMkAd1SeD7we3rMFUI2s5HtGAewDKkmTbwDzgIYQwq9dugXEmRLCixNYo2T01ps2GvGPX2SFhX1t35R3l75pwzPc8HHz9FdHGnYblTaslc97NBOxmp69dBSuCMCxMSYdjnqTzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755030594; c=relaxed/simple;
	bh=jEzstBMbwnalD2OiY8ghCN9fMdJ9wfOBDWZ3Bs+QYqs=;
	h=To:Subject:From:Message-Id:Date; b=bRr/RlX66lvOehAQm0wsy0IRrIbbL4z7OWNxVc/tnrxNwly37BIdLJHfMJGLRbtJdIXimCnrdvPhYy9JM9UV37gjqb2kvAjFblc+MmEMSIhJY6WOTIPWGaU5r7IJU6kZP/O5CpB5SRgWcv3FqECvMco/vuHtuYLCXqiARh+AYwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU3SDh04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU3SDh04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5122C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755030593;
	bh=jEzstBMbwnalD2OiY8ghCN9fMdJ9wfOBDWZ3Bs+QYqs=;
	h=To:Subject:From:Date:From;
	b=lU3SDh04PPAbeAV0zkHI9bTy7RrM9FODaXaez6mSr9ksSEKPwglb3164fZnBy6fBs
	 DKxFClf0lx6rcduPqgL2bx5UfhVk5JVkIcx7mxZDoW54TiXi/5Yws3+96HaculRFNP
	 iU4Gu7lcg7G+azwj1rOy88jk/WyD2szlP1uHA595YkoJ5f5nTKp5qmFf0Zqt68/ocA
	 Uwvm0GJ5ipcUblhVvMO8fl+s4IPGB+ECyJE2IvMIbsNrKonlMYbprEuHMlHN0xt6AK
	 RfumpfFgEjZKAUak4SC8PXoFJ3iy5WKmxiDZaZFbx1aHxbcK18SECA+P5Pt4Lwr4mc
	 QyYUoT+qjLHGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F6CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503059358.9780.4645140949356478671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242759a68830dc55cadc77c2c08f5518c5f7418f7b53f299357516bfa6ffd466
Date: Tue, 12 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755030593
