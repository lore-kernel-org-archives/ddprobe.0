Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2C913D625
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718636903; cv=none; b=nhfRVLE5Q3mBh2nSfK6bn3cDOlISj72DrmjqPP1Bjknv9UseFVlIyiJCqF1HrbmXgTCGctSlgUQ/daRGY7qCfS+sLILYxN7GdQ3PyfBbs8HetrHyji/9VNqh+ovsEopgkSfx0KRggHT/3nlOyI6CZ16jjOFc38/R3UwtcLd5BZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718636903; c=relaxed/simple;
	bh=A+042++G/mRplOMM6dKZ4J2049srtRKmTnFs89eYTLU=;
	h=To:Subject:From:Message-Id:Date; b=t4FwBn9Ga5wTiGw/7rcxCwlE0geBn6YcOQ0ippxOp84Wt4UDAglyLv/TOiEUP8Sm0ZmRGqp6LpnGZW5xjbMBAnR6xfBx5pAoV46HB7yijsVi+J3ANnB7JsfnWwB18mhbDjestSytBL3wNZ5B1aqvJHYCZbkxMuYs0xrpimS5xgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBoqHV0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBoqHV0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 038D5C4AF48
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718636903;
	bh=A+042++G/mRplOMM6dKZ4J2049srtRKmTnFs89eYTLU=;
	h=To:Subject:From:Date:From;
	b=WBoqHV0nOqmkfIQJdWIZIGMen0nXcP9AnrRVF49uw5oBjfqW1X5HtuP2wLpuFw1xs
	 /WCh2rtfrEHEYgSU47OEwBux5xAX9UPMnSpR9psUtx8/9Pq51+kM0yXkJe2cABv9d5
	 o2wkAdM5/hlGMDKLzGpOXnMzI6J+xfo0nxtS84ndHK0guuyHSQA2kI0iRFnqJX7KHD
	 0iLdSBZmGYedZ8lZNtRLUncaYWhM83NLEm+gJ/+Ay9aRaiXhc0jO0vdDUAA4kqENvs
	 j5N+tyRul7IBv+fByYylJt5qgA5ruzero/VkN2q1KySuauuZ9c1IccMRySrHHAtgRT
	 yWg8q36dMjEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6ABFC2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863690289.22411.14613153202191754580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d461f5fc49440d260897f497d56bb527364d199b42b3c8ee169d0dfe0badac
Date: Mon, 17 Jun 2024 15:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718636902
