Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC76F1F948
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755804593; cv=none; b=A7Mc4eYD2RhT7Q9z8gAfFan/qZdNd/RWAxdz+J9q9FiXwTpPHSmM8wZDbdxxkl7ktPNMnTpFoBXYyqBJFzOw1BcK6eKGwwyyUkYN7TYD2grhodfd+mPMXFH0dGJ5CP5AU+ohZ0q7+S86wCFShp7ybFZbFaGxeYoLPQMrcRlQRL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755804593; c=relaxed/simple;
	bh=J7kzTrNOMtzjKqLgvWKo5fbUfpzpj4jGmbfO8dp4law=;
	h=To:Subject:From:Message-Id:Date; b=FH+E6eOV7wSpDFmXjvp+YcKgsvPxK79AP0RBc9KSD/kLY1bi4Dt4W310o5bmrj2pvwRCSN0C1MspOjHxtiyd16VFo4fMBe2rkzR7Cj8rKDEiIEnXfnDvlYDHmGgTWl7DnG9eqOnfQCVGZjErKF19xQqH61Qv4HzNUFmxFlF2wyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqQPXcRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqQPXcRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755804593;
	bh=J7kzTrNOMtzjKqLgvWKo5fbUfpzpj4jGmbfO8dp4law=;
	h=To:Subject:From:Date:From;
	b=QqQPXcRvv4SytKwYR7Uq7YJllqVOreoWNLln5AKFjaGsHwORgEExVrOa6ApPr/c/V
	 sQqw9UuX3k4cFXJMhlItXWMLYe0yjgMZEifnGtDcjkJ6pHITUv8WRdV13XYNJrCvZu
	 t8IP3Q2PFMQH9gpt7gW5c1JDMA9g0QxAsTZYwq5AJ93vtwaoU35/9N7C1P4QG2KJ59
	 9EIGVzp6KjZZVp/X8Y4Vx8acBq37+bw890sqf97jMYlm6oSym1aF2RA9RB9XPgWw53
	 FE4xkvDoLMiJQNLCPjbHomXrlp0eRT/CZVXw3mtJtJ34xgVSRma+yCUEP2KTNm8ChA
	 9Ocu4gJ2D9mUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC3CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580459357.25975.16281124161429717225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3928b7cfef0f5a859c2c3f21cb18fb259d58298c8ac008330ce859d0215f2fb2
Date: Thu, 21 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755804593
