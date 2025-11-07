Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD2413B58C
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762519793; cv=none; b=L57lclgaB+p2dFe3XZyLLeAYS0ZBi0xm4IHA22QhJmDX3eHYn7Lq2276s4sP4gQcmtVfgMUv4qR8X5PN93U/6H2QlTFlc8OltImiLsxVwsaUFKe9HjHNZSJbJgC3tfZnV1C8xf/rUHajOovtsgqTeKFofKCSSe6C2Do6fmaBaQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762519793; c=relaxed/simple;
	bh=Aod8CHcQ6OqQJNCWixJ4ETe0XRtXEmWnISCT1mcPHWM=;
	h=To:Subject:From:Message-Id:Date; b=qSKjHH7x6eF0Y2+qEPDVVdASxOm47V17o2qIhLCXHGjpYvqabIolwLMEe8451NhOzBJbvOPkgyI9USds/kLhF/mdNmSD7ubuW9JiCrIK7TABgJwOon4pfM/aTvppDybJwytxETF1Y0DHo+nTE75/gN1vCDgAFx+79UUSRH5vklk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phqsccW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phqsccW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04E6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762519793;
	bh=Aod8CHcQ6OqQJNCWixJ4ETe0XRtXEmWnISCT1mcPHWM=;
	h=To:Subject:From:Date:From;
	b=phqsccW2G1uaO370XCfCQR3xE7bQ3sxqT3WfLxFPwHxmHu76QsgQDI0r6wmMBjxLa
	 clSrraesorgG31ILVBWX7ehGRs8akbYYKVvMffFU1GYVdcP9juzLqZfU19EQPTYM6G
	 eWdRLHhf+OJPRyySV24ElmVi2NxIjoTVnbCOwxdBPUa5KcvhFYl2r38K16KQzs27SN
	 VRSQGBf6ezzM2nQtLy17ZCnRGiMZLH4z6aiQHDqrhrJwXZs7pW6CtZ6Kw9qL0CiRZx
	 YrKXcQfjTb5W+vyLW/+wyFnnY5jsneb2Qmop9v1yZ6W4HciHgHYH1tAsl18ye8/Eam
	 kmdLXW7k1d0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95841CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251979358.4372.16560011122010930691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656a67ad342ffd1e55aa6ecf4d2b4ef958c876a9a8ed48ce320cf1491a8a40f5
Date: Fri, 07 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762519793
