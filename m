Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EBA6FBF
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726900553; cv=none; b=DLXxupkAEVXscAJruyiJcgRDIPUozpDhsn8plDB6+YFL9mwyxlWnDIkLA3dfJrRG7YijJKbU1Xd9qErHDlAezr38psv53K1FSgznmdXCivZiO0cEgQjzjT1zjBf9+l83a/djtUSzHeSyzZ0kgRi3lfnE9VYcT92Y91wtuv7g1iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726900553; c=relaxed/simple;
	bh=prHWW4zQuhj0dsy9JIoqCyoRhsTowV0ORXQtA0RdRHw=;
	h=To:Subject:From:Message-Id:Date; b=VQAFjKx86MHSYgSM0eydtIWvd31CKKV9MgS1T4IlF29Mrz0wiVETqVGwaLLNR6l0bOYCA8cwTZ9yL9YoWTsl5P2TCHV4T9HOLbOxCqYbIVAbUSO4BfiL1rE1fbYZq1C20qQ+jtGnX6Kwu3ODIwCJdfLSxynxjthm178OJ760BWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFgntBQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFgntBQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF39EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726900553;
	bh=prHWW4zQuhj0dsy9JIoqCyoRhsTowV0ORXQtA0RdRHw=;
	h=To:Subject:From:Date:From;
	b=dFgntBQUKYDauuhhfJm9nnbQ3fMGcyVMRqMWbjALODvhig04NueWsS9I/Rh9JJifd
	 rQl5XoMDpA9MwlfU7/tEt5LZg2rdhcwfKOhOZ8Y1abF0QUfpGYq/keMycPedjCiJyO
	 7rdZzH2NEhvzzvFgn+bvp0XlD2N4tcwIlgculUpkgwakbLpF74NNv1UXig5t6d2uA6
	 n/wPiBhHrWub6I0ODARInT5wnw1DJIgrMVwKuvIsDpAVhc26ie2j54jWO93VvwHc1u
	 i28UZx74cH5CPtWPv/2w4al0SBbCkn6l7NTLSVrjv4Hr/NgKQWTy9z9QYUeLVopqkr
	 IngAfeJzwxCeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B880CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690055361.25322.17938081240276671171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a679606853b086c384076674fe823869047108c196238a62c1a55c11ce54389
Date: Sat, 21 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726900553
