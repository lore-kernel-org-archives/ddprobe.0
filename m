Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2A18B0A
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763885514; cv=none; b=M404/eIbwpyKLYxMHmULyAfIUobxZ8e2D8+5p4q4Dd5I/yT36XGC9azZI2hEZwOfdB0Si/4X5cQG6g/DcDWz1FULb+fQSMr8q5lrq0fZO8c3Va4yE1K02SPnGiMhK1ggsbwoL6jALr9O77AgECNUfvgqxOFVfHRoEqbGZrGG2y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763885514; c=relaxed/simple;
	bh=qz59v0JswXJAf2tlSIvsdGyIyFx3EKJkgO5NvRIyYnY=;
	h=To:Subject:From:Message-Id:Date; b=qUdNmilhHeUeEJtSiKFohpz5zxlBmwVOJYCaPW1KXDU/pJfc8QLfgQjm+6d/4JXShc58JCPYBoUH2qB+XMKVxNoUOb+emUpuMekrRntgeg1Yph01eqP7KUoCQZediROiHoLni2Z7RK7lCV+b0VB+/BBPHefZbTO1dyYtDbiEH+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG/Gbkcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG/Gbkcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763885513;
	bh=qz59v0JswXJAf2tlSIvsdGyIyFx3EKJkgO5NvRIyYnY=;
	h=To:Subject:From:Date:From;
	b=AG/Gbkcrfy52yMUEVWmFBH+JffL739l0xTi8VbuIDQ9wQ26OOzoB5bRBZjZ9CiKRo
	 LHvqGcRYv4TYE6PtNUItoyDnY1rIxaa/PLpWQTi3vDkhKZba2txHQ4Ae6xcDTu3BsQ
	 oScQUwfH959mzAzTzQyHF2Rs88QCdX4eREtxwvMQuCmgE2GMD5SESNxHXuyTKkrv66
	 p4m6KlTlSRIBhTOSgA8iPaqjyXjRiczuqA5zipVPf/XrxlvbWKR2TH0C6uteNcN8jx
	 B2pmN4/xEhrBT8Y7/ClffERVgXXWPf4apX4hSNqVhDPjrwwBc6t0nyBv/ilpnGY1YG
	 gEPsM5F9uBBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92501CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388551358.20171.12616530257082293656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b637b7487db9b83ad9d7c65d4e76858414709059dd41ba4767ecdb993e8a0f63
Date: Sun, 23 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763885513
