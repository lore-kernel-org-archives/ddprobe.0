Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7C52F0C76
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757056795; cv=none; b=QaOS5zruyyvp8uXvMX8b+wzhg+NRP1gkKc0apWb0uxbyNeT25zLbpi5r/oV7MdyMUAdyWRYfyQL2keokRZhpCuujCX3jhhpk24vvhT1pnt5G5GxpQgs2Vls8rsDeueRILv70HtV2gs/8oICyD3dUiTr3poPWzCrUq4/IQMOSUUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757056795; c=relaxed/simple;
	bh=/C5y5BRJ/PIk6Us3Oqm0BA4GmghDpmNLeNOmYXLx1dA=;
	h=To:Subject:From:Message-Id:Date; b=VWOIfHhe7PZCVpSyf/NXP+mhWQF9+P5POFmxs7J//MLnK08TWzdsfQWXiJ1aPHdLT5IO16294sW6S4HJevhEGjSfc5oEHxA5BDU6KbCcddvs1fgI+04fDtYNIuEymWWzr++31/r9P2c4AIDnByN0EN1ws+e3UU4xZ5ZQQGowUo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVcrstBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVcrstBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46AEC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757056793;
	bh=/C5y5BRJ/PIk6Us3Oqm0BA4GmghDpmNLeNOmYXLx1dA=;
	h=To:Subject:From:Date:From;
	b=NVcrstBkz8dUFHrNrBEqE6zUVNGhQLRO3eMrkT9gT7vDan2P8rwK2oGsCQmswk0rq
	 b9xvEbOdGbQ1lZwe2Na6Tf1eHBqxZouh55TWMTcs3teiT/S95Qp43eZqGCX3LOejr7
	 kAFvIgWi8QNmZYi5yStQOgGVy7JxnLxwel7FukBVNdZCLkIZQAbo+xE8dFWzZISQsV
	 vQ2Fn+YVpcF1q9V9kWB7Z0rcmEQv+dwaXaR17RWLZRGi4UQoYN6FiWS99puefakx50
	 Jrkzcj4DixWYnJCzevrYh3HkXTTiIeFbCWDVvHXsfY1C9tLxFqqCw/+AkPf31opbX5
	 uq1VD3+l/7hsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C0CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705679363.18271.16248700645166663624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f378e14492bb5d5098adb8a1f4dad64e826664ba9a456ca1d1324e77a8338f36
Date: Fri, 05 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757056793
