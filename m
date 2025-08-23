Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3135E2CCC5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755919194; cv=none; b=hTsBQagaipN7BDsqQgCNweO0KjL7G24zTeHHCs+L2U6Xg/zu/749QXs9jAx2eY6RxsP5Y1lqFKs/4oAb+DL/GLTf1aFHEdp73HlL3mvIgqedYEXvf2aL0LbH55g0foRZWPanCwosb+1yHu/TC58fhv0GD2MJ2FH3f9ZvOam/CQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755919194; c=relaxed/simple;
	bh=GLbkBys1USCKKSIbCm/e7w4CjVob6O9Sqjv7CNw2P3E=;
	h=To:Subject:From:Message-Id:Date; b=jjx+wYCzUob5DLetOOZ8OZgL1+oqGIuMCjnWmoZnsFnMGUdOp0sqmRG+942cr4whcTF5lsez4K8FLAvTjf/Uln9SA1ORp37S1xY9JGqKmRDxYpxKrfLhRZEMqIW4DIz1xmS1wypg22YxQNRak3KNTWsECqpNEwxEwM+L/f2BmZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeieIW72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeieIW72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5562C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755919193;
	bh=GLbkBys1USCKKSIbCm/e7w4CjVob6O9Sqjv7CNw2P3E=;
	h=To:Subject:From:Date:From;
	b=qeieIW72wUD3BVp+gnLO5P5fx5oB4OlvdvYsoSOsusiPNVfgOpFpAzYAO3tx5RQdG
	 YawfnUACsnbryqjgtum/n70GOvHU/VCzKTKWcL1RP32RO6uuv/3bXjiYIRcQzhWkXp
	 xrSJvTmdqFSCtE5ZqtO3KfHJdKWJA1YOE6RbbVONyyRo2iUScJhO9fnslYzbEpzGyb
	 PaTw/bT7FGq+EZwssJb7M1/PhexbTdvzt2ntNlWZGyYchZXoJskREmQouXBODvkmmb
	 WgvFA5p/jn9OPrWATpbU2yaZUNCik6sRKXBrnBws6u0nQfWYBMDYWpnqEJ4dbUCErn
	 AwxUZzQvUOeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FACA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591919357.11041.17995312180612858942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4382bff36a9e6f5b1fe5d77b608cc8461f3c0861dc38200f0122a48d119407d
Date: Sat, 23 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755919193
