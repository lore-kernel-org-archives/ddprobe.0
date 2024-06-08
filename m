Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AB64C65
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717819643; cv=none; b=E90x4bbk1HyycoiK0xsWPaingOfQKzfxh1RK8iDEanAmiomh5wvBzZ0nXcnnhT2uDj5Ixu3OWb9mu32zVYs9katedFhDeWhX9a2hL4OhcuEtFfapuT699ctHE88bZyj+sUnqiF/QdNSZVuxCd0wmy093Wxaw4DzRewDHRrZ4U2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717819643; c=relaxed/simple;
	bh=/28GxjXCOuvN75hJl8Iw9PtfhzJjc8CjQN1WgY6XsgU=;
	h=To:Subject:From:Message-Id:Date; b=ZUsbd95zdrDwFw5XzQNuPWk5QhQ6p+T7B8fPFPRJEcwsYF4WA1ouFXCUd/mvjfnJYkHoKpc/j8Qis+PD26+1NME1m1avjnOjH9J9GZOHNHGyanFnm97STHoMonrEUVR7VzXr+4EHRHf+NxT75tJKR/Hbz7YNAwUHiMPp+BpPkXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRDsm9Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRDsm9Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11E6C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717819642;
	bh=/28GxjXCOuvN75hJl8Iw9PtfhzJjc8CjQN1WgY6XsgU=;
	h=To:Subject:From:Date:From;
	b=fRDsm9NuLsJMvbwMaysH4BLiR16wvVl/tQR2I3K5XSoJmCO0rgZ7NTIq8UMcp/uDn
	 DY62CBtwfD3ZE3RPdMB1s5a6pwvRNL1Ya4y6PDOOeoKF3hG9GYwo2C2r07nXhLb00c
	 gz1GMGvWAsBS9SBrCwFX3iEdxe/cLlAdQv6MrhQigN1t0N0Gj5n9viY4By9HdA0e62
	 wq4zC9UanRZh4a9bBYLJ9w4zAd7D8rvP/lg9OhW/C6WEhaVe5USS/JDCJViwArErQt
	 c68gAMrzfLuMjAIT037wyhMuQ4y/FGiGGa15G/G+HbnXS3YTVHrOEw4F4xSqN52Qw3
	 6Txy34M9iFzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC283C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781964279.22171.7652810354028624821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6a8fb54dd7ec8abb845b014bebb6bccfd1611fc4d742b5630f3d52044145c2
Date: Sat, 08 Jun 2024 04:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717819642
