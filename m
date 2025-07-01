Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8D4A0C
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751358594; cv=none; b=PZUhJrDwaGKhCKdQwH91su46aaNywHIt9zapYD2X16nDEfvpkEc04H5kI6LhrXnBRK8Wj4qSDpUIaqMMvQG3IK1uISHsLO/NJ9+Ow8GX15o/m2CxLoHwmCJHXoKBWN3KHivds4Jo7Ol2V9RqCh+tq2TrAhbewCymVE4yr6vh/FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751358594; c=relaxed/simple;
	bh=rTtYHItty6AK2+PNp+OwtGjjLAlQqO7pRcH2JSXiB0A=;
	h=To:Subject:From:Message-Id:Date; b=BcWMd+PqMj1IcFpFl09DWrrxqtbk130Oj1YuVgCz58pElv0UdS4SSG3/yO1LkzDfWKBaSUZNzIVK++A6a34kG65z5FyaK0EEx2kQvANibAyqMIW5M6b4tUtpn86ZFbKQuuFN8H6DFqTXlLLsXFcUOxwtAhhV0EOuqZjFrLYo6qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUrdebgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUrdebgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751358593;
	bh=rTtYHItty6AK2+PNp+OwtGjjLAlQqO7pRcH2JSXiB0A=;
	h=To:Subject:From:Date:From;
	b=hUrdebgFL8y+VsZKtdouHk8tR//aPTp6cJAHIwQY0OLG2sLP3v2RdE0hViEY7IhaI
	 83xlK+7R2XRRw3VYC0VT6w/y2I0PpqXilTLrwBM4SqRpMn4ErQRPSMgxFUThNZJYII
	 mfWWCrAfqYC2d1G44mdOACle+s7+XaiEZt8BrjberXasv4Ygw9lBCT3AI6IvtKF14A
	 a8DF+/apdwdhNZR6kV5sqr3t1XezkNA3E/qnIMHdplhqym9k3yDxwuxMvHMzKZVk/l
	 tB/ZxmA2fAsH8x6NGx/4ARq4gukc6aTzh9UdtbUWJSC/oY1jnh967Fsls66iaMXXjc
	 KFknAI9vJra/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D0C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135859357.23323.743046668077523098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d354b1f1db290f173e1d8bde680f6f1eab181e638505b48ffc171f991718fc18
Date: Tue, 01 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751358593
