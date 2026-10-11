Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688F13368BF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791710434; cv=none; b=ennpderYfngBvE7/eu+NR5yQ3fub3d67GaJvWcyG+o3wnZCQIrYXx8yFoTBAC0dbOqWZ6Yeo6WV7Tm9ZbU3F1QlcThLpVy8worw1gn7KYPtgtbyu8qewRahWoZqi/MvOx79A0lWk/cRhyehBSa6XaYmMpmmr6MZIfNUlaYDkR6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791710434; c=relaxed/simple;
	bh=MEE4M8wmP5ZuwsULixgm3Nqn/c4+ZHMCIDwrmBwn1Ps=;
	h=To:Subject:From:Message-Id:Date; b=WRwUovGpvBCwmLPIPUI1vOtbl92f3POuRL698uhEBVeryLGbuLwPlwoSLOokg/0AFLLSmwfrC1Q0byHJ920mFCtidl1hjS8zSe4GNG7gPkpJpWj7ein+e69TfVKFBPnZ+JlYU51AMHMGT4+vN6jgY/gK9YauJoJcHr0U2aBkKyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUad20rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUad20rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BF8C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791710433;
	bh=MEE4M8wmP5ZuwsULixgm3Nqn/c4+ZHMCIDwrmBwn1Ps=;
	h=To:Subject:From:Date:From;
	b=ZUad20rnCQw3QL14Ae6/xYDi+RNfTa8R1cNlwqR2xkyxta68d6LWl+jtNuOPOucIf
	 WHoqXM+jcJUVdf/juztj3pY+mBnS6jqvXbrkehHFhdrtpvUq048Alz9/9ViS1wa0l7
	 lKbW3fUodARWSSPYt9bAyP6bo+zuu/+lTAjoGYke2d8RgVc1htPz3M9qqO9DF8afLV
	 cR0PmG3r8P+4y7d3ZuCAov3kJk2JI4mBFqdRkTWlB+Y3cm3ME4ML5ux8p3EHES39XQ
	 5Ql0PaKL3n4rdqaUbRJCo9u3RyJ6+jeJcS8AXuh1UogOesv4UP/c96iyQhM5yzGsFo
	 rbc8jkaPTtcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF69CCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171043369.4082.4878759619415902653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0584f3b2c39b2bcdaf66d5744eae1d73086325e2f36d79748263875c667b6735
Date: Sun, 11 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791710433
