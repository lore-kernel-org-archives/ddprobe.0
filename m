Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490CD356741
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786439434; cv=none; b=MhSy5I6GuscvmJGgiDUW2HYQrilqtNRJZMzSrDSgq8paoYGpoGpVLuPbCwc4P+OBlhNzyScykJ3GI0Ln4zMS86LFlWKosqIestPp/Z4c0LSrmyC3GMdrrdkbB7NoYLjz3Q501m5svAVoU4IBDuQgjXLB4twBK+iCoSvybvgbi28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786439434; c=relaxed/simple;
	bh=ngbkUrVDw3Vy7lXGOWYMxST6Z20LdnoH0Wcar4SdPx0=;
	h=To:Subject:From:Message-Id:Date; b=NtWIcpXAOkPYyKqh2264CJchk1/lHGJPAjJu5+dUJ9wKrKj9jW5XMrW+aFILJR779Uu9AncNKVB0R1l5ICjCWGrhC1/JuwI5un9nSuI4Bf7BWqZAU5rhEvLKITGLndTFc9hYtYUqd6sVjYVijE+rV5C6kjG+8lN8vzqKVNcND30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0IpSKnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0IpSKnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7DEC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786439433;
	bh=ngbkUrVDw3Vy7lXGOWYMxST6Z20LdnoH0Wcar4SdPx0=;
	h=To:Subject:From:Date:From;
	b=Z0IpSKnYBVBD9ewiMmAEf9B3WX8UhcRpZcU7sxOsmNIASWGpb3dSt432SCCKIsGQC
	 6KP+sIUai3KE2ZXWk/jQ+O7Rh/6jPQUyUWfS4J4zCSFdq7smW6EW6q5+p/QC1hYv7M
	 jfjBDznyaPKAkQx6LtAJVsI3mvNVOHNrEhY4FVhCu8TDpLldz9OhBZGA2GFMUbN81U
	 EYk5nIGCE7kp05eE4VyVLKwFmPwZ/7ubjPd6ZGOtWfsVLtf8vRpxjMMKe+4g5Mn/Xj
	 6mGCecbhUlF2cC8Lvjto9XloYA9DpeyWr781w8/kRh53wcBE1HLfKomYGSVVdxom0t
	 8dzb32g4hP2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9FC5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643943368.1115.15560213810243121082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08b1304af32aea26cc6f1e35cce59f2ee0177c3d644f2a12fbf966cec8b35df
Date: Tue, 11 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786439433
