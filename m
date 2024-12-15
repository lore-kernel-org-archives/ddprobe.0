Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE5B2F42
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734234354; cv=none; b=bHH8O1RTxQ+cXVsuLFYuUkB/wvIr0kuWmqLEa/ZW9t3izwTCY23qtUIdUDsreYAKlAjK3BTUExGpZx4v7IC6QX4vGFkK2xzBR8wamjuywUcoG//tYiwHpG5IApw9MVZ8pPIQ5d55AHMF3zC54NfWVKanFP11JHShL3huQdUx0UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734234354; c=relaxed/simple;
	bh=Q14wprvNSViV5XxAECQm8mPy+81srxIn/+7K2QgBKCQ=;
	h=To:Subject:From:Message-Id:Date; b=ddKjUgv4sd64HtAfkONWeNjQk5pYBNi1ds4WE2lLVM9G7l533cg2SgqDO4rEFh2drrIB4reE5OT4ojw+MSXs7bGXsLjxwLMsw4EAudNIFHnAbjtS/OPfd3etJWhJI3RtxUveGzfUDtGWCxRpstOV6IazhjlVjARuVuhsj9iaZto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVHX4tE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVHX4tE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC8C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734234353;
	bh=Q14wprvNSViV5XxAECQm8mPy+81srxIn/+7K2QgBKCQ=;
	h=To:Subject:From:Date:From;
	b=EVHX4tE7pOOoyEyOyGc/At81Y6/nSSZRMe4i046VFwOlXr6dJShcewezN4hEr3+et
	 KZlxfbMibJAl9itbeVi3iynMK1iRTSRV95lXAV+dnEVIbNLkaFIlguLTh5q7mj0Vp1
	 hIP3kkd35NCriawwto64F69O+WIkT9kG1DGJFP2oIbv6I6LP5dI4kuhDWt1kPNp7VO
	 9I+z3V6Rt3a4eNSdjF7UGPBOlxdAz6x7gK92+sMEXtLhpcyyQa38btcPJN/nTNgKxd
	 XgHR5VJQiDCq8uWg5Rbu9lLXyg/Xb/AuONYufQ4KiHa1EUun/OLUYvd6FhhBH47TYG
	 sWW4IlMxejO5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698FE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173423435358.22414.9964155328190135032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdf3533fb00b715dee894bf993ef94ddae1d38baece71e4faae89ea2846bdd2
Date: Sun, 15 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734234353
