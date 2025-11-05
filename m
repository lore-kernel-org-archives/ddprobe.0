Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045E82C15A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762379994; cv=none; b=Ek0LbAXu2E+MSnlL8rSRvS9MghO7ACwJUWsh7dikKyfHjDmgbAnNmHWtY6qDKc9wsYc3e41lPYJATpOXFUXFcs27A9owNJMl+ox3o8cTkFADS7cQ5wPRYe6roxKPANuLu/W2A9FD9ajalVht8+xLfkdJFq8Quv+Bqq1AKPqn9lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762379994; c=relaxed/simple;
	bh=FOD0TMKL3qQs27Z0NV4y1FVDhEEmBwcVf50GlHjgPAs=;
	h=To:Subject:From:Message-Id:Date; b=U7X5C54YdzK73c2xHFxL9ytflCFWwQ2Unj8W52+CCjazzUkoIT3PvEhuT5EeHcqp8K6NLClS2I2s4V0RxnHoq4zIRFPI4TZR4iLlKhfS9u+YkDEOxkJjl5+T0gYInJULct9DhdJexVa+MsyT0lBXmd3JTjGsOqWCK+CIj3idNb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q37ztRgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q37ztRgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D729C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762379993;
	bh=FOD0TMKL3qQs27Z0NV4y1FVDhEEmBwcVf50GlHjgPAs=;
	h=To:Subject:From:Date:From;
	b=Q37ztRgZD/4oHBbzE6gMssE6EffQ+0RPXepF8RitBNkcPKul0W364H/0i583l+HLs
	 JwmKUcfu19PplyxVz0Z5fIa3s6Y6soNhQ8CC1BxxmaCUhjsV5HxZ8Xz98UbjguCkAg
	 YAfr98ROeqbmZIIcqB81lI8inV1wImCO6j4BSvaSmxUqatZGCFqmaPuHSuBmXd+O0D
	 XyDjVL61OFHWw6DuevlP+uMGlZ+6UeerOCTlBWOPZ3QCryrQQa7vvTi4sIQ62MLYXz
	 vSCC4ThfUGw5RYalrpxoQ0CgAfldnuBOmKuBlJOnFemGPfZGRiS1sVN3NxlCQmglrl
	 TohR2o/gUhFYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F751CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237999358.23902.3701305895070008161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cda77b6c64abc4fc1cf5363f3267e2793123d3d9a933340f898c10971aae0a
Date: Wed, 05 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762379993
