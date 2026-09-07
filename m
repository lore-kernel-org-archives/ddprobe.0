Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5844A33F8B2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788823834; cv=none; b=oRdEM73N0CAzbudDOwOqpWLvujvcFEDG6LwaINJGh1drhqa68IFrK7Ie7p18e3xGTfoLExnIfEYg7BZIPlxq+l3gBLLNaJKCDyiVxsEWgls1j0CS5lDf+aZXOV+L8UykjQiG5bin/qtrDtHpTyXLN4L289nOpLKw+M8MhV1tV2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788823834; c=relaxed/simple;
	bh=HCmhqhek5iD9hese6P02e4afWpsJM3isAUUYS6ie2IM=;
	h=To:Subject:From:Message-Id:Date; b=W/ZN9DTVneYQI0O9BmEwK/M2J52hMrDvQ8gBlBBmYR5ypUCdVv7K+EzYSza4KZtcI0iyX4YqOmvi6AdOFrsj1+mBQ4CMaPJ665jOuBaVzn8CV06MnfLsFFPhK4Rd/SEHRW6kHYqUj2Mj5YREAdhj8npaqK8I4A5gEtnoHOQACQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3yTbC0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3yTbC0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3858C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788823833;
	bh=HCmhqhek5iD9hese6P02e4afWpsJM3isAUUYS6ie2IM=;
	h=To:Subject:From:Date:From;
	b=p3yTbC0IIn7yECGxtPgqUFkZO1NQA7m0LKkYbVb6Ap4vGf/S1zj2HxA54RaA3zp6K
	 vpGnPKTG14z/O+Z3oxdSLKpa+T+R5I+H66dvVmIoRAs3t52Gchq9p8OEuT32uUlgNo
	 dmHg9Wb9qe4DxHs/1mzCx3xjJOfg4iAjls/h0g1+zIow2xYFNmrmzHwbJeuAhOzJZZ
	 tr85wBk1AIt2+6MIVMeZ4vQiJ8QSXKQmGoLpYlO1oR8N/ZlCvN5isKRzFM79KHJDRd
	 ogtZD/e+qq+dwS4khm+UuRa08Kj3Ig49wWzKGEl2BoUXGiffh0lt/qAo//hzRjShyw
	 6J+fE4pliUxSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF31C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882383370.11880.13909803819936674632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9633349f97734574cfffdac9b0a2ef240914a87f5928035158c99addd250e9
Date: Mon, 07 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788823833
