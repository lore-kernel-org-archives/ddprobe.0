Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC0A2046A3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743520194; cv=none; b=oynPamdLrnYdIOiCDWKrC4uJiwa2zx1boXOJEnCPfwlHJO/gQyMTidPsAUdbCHzScpJ5qUuM7X3yFHuGMJR7ysFyOFuEi3TbSfjDRBzzg5g5Ze63HCBuS5Uae6AzVWwJrqnyth7JoUTFlDvr61nbYrs7s4PuV3zyLSQGO21j5EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743520194; c=relaxed/simple;
	bh=P16i8msJv9h+CTLVFHkjkTABr5B3U76WtrA4VYfBXNs=;
	h=To:Subject:From:Message-Id:Date; b=C2UruTWbuEfV9yJRmfvco22cuyvRUOPG0ASrGQRwgJKXJlbvEnOFx+nOUVrvmHxaG5QTF7ItiwSS6Suiy5Pwlo0JKt+anofmDtn6UnieqE8dlSR2kzFg3AjN7JnpGc/OY526c/yxQ0s8+Nn+fnc5izMj2afBJdXLtywd0GTby7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPHhSj/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPHhSj/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE771C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743520193;
	bh=P16i8msJv9h+CTLVFHkjkTABr5B3U76WtrA4VYfBXNs=;
	h=To:Subject:From:Date:From;
	b=IPHhSj/QZwAbzOIMazsxJWV20GP+upIe8hlKUYGPwASGxQBBj4ww9hYk25yrhxV2z
	 8efoWJ34xrwZHsBE4fcZDpH7sonPAPqEDjHYaZvM0qIzo4WWvOu1TfdAmpOGHva9Ha
	 gsbkeR5GPx234mk2B3Qsxe0RhyQ4vdDPDqoaQakE1dFYzXzy97B7DHPY3/lRl337EW
	 bynvw574qA34gMc5q/mwxEmoxUAk3xU1noNTa0utgMAeM0hRFIXMfv7Afm+vrgIa1c
	 RT76H0c/vz5v8NRKxVqSuhpjlS9GeLJ2dAZ0J8CwNnh1IjcxeKArrHTlnFkcLm+jH0
	 JXZzmss9eE+uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B172FC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352019367.14505.15032791799300823588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3a97a0c0599fa8750838a0405cd26ed89906e27ae3208a47916d20b35a5963
Date: Tue, 01 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743520193
