Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3EB157E6B
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745822395; cv=none; b=TJY/LXsa42zUMbRp4NeiHA6Oc6iF8gfFlfXgAAvJW22B3wYa4vSEPlZFsVLDMeos1gXq8mkml8uRo+ku6ZywDT3iMcf5GCDa65Mao1dhsg5JnHeEUixt035hCK90mXZfBD/hv+mq2Y87ax70Wt0ib0m0vbMlveIBa3KRY+nYAY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745822395; c=relaxed/simple;
	bh=8lseeyj72X60LTK09txBd1Htbh1u4Dde12rR38XmFRo=;
	h=To:Subject:From:Message-Id:Date; b=hOpOcJSG6VJYj3kMxmJFRoHdw2g92U0jKjS+/wmqmcA87n/p0inKl0eFnRfq8Z2rPWh75mJXcqqtGEYMyzPyOXVhd03zJwP4jmfXIE44Lr/cFXQuVBaJiQzb7I4ulSElpx8BV1A3dxya98NCibDRKORiCFzaaim8/5HyclY2YO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TswtjN28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TswtjN28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2600C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745822393;
	bh=8lseeyj72X60LTK09txBd1Htbh1u4Dde12rR38XmFRo=;
	h=To:Subject:From:Date:From;
	b=TswtjN28/R1iOwVw1BnLxk9JEXr6shajfBA9zqQBMk1bbr/TTdHAwKO4RTGwbXAWX
	 v/2xUgrmV4mx/GB6jJtpDPXqJkzcImNLQiouY12TPB1wVzu2E+Lq1GX+bPrh8URVi+
	 AEtnxCtUiXHWkrqapQK3xrHdO96heCYdhqc3mjA2XVvjbSv9IyVevtqGdMuusbGo5H
	 qoG+Qxy9F0V/mVe5ycwKD4oO+7e1aTmA0Hc5YVnr+YNPXfDMBc5nSxxHYj2fg/ZqYj
	 mW1t9PYytgNgY0g59b9aS2/GRK5LFrHzW/W/NdMdld6S2CXH8pDOrZNDKZvU1tjVUk
	 1iQzmtmRwWQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC65C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582239357.26504.7217432132980920869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8cbe2a4804e1b099a99e95b455f6d83f6cb56bda5ed50f10ff7eb75cbd05c6
Date: Mon, 28 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745822393
