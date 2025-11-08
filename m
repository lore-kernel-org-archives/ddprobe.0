Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A751E32D3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762628994; cv=none; b=LO1HC+XnGTTLh7CM7fhUs/yzJIZqVpRnJRzmaBJKeBLxRGrq4rVkzwg3D/nW0Hc3sXPe+xhIKcS1qmZ8ltERBwfrbjY77cAtURKy/u9a/SUFFsgoFrytU7IEE5uAq+NExDXOt98Dygsi8fBfKlHCKKJSN3mdBJosILMl6ZaFYxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762628994; c=relaxed/simple;
	bh=DXJlYxbqZ8ZgePov0xmZ7Ql2xO4w6kePvtdvuS8710Y=;
	h=To:Subject:From:Message-Id:Date; b=AS+9tqkO2K3mpSRIsr3Col5QXLSWzmk+NtV3tnmvgUZvfVlF3m+ZzDZAiLx3qRtpKX8rN87ONKDGhVFzSv0HfGCT2adpc4LHdvq6EHbOLmVv+6notIcFp6KaoZhtUfHHfAZirAgpx+SkhuQBIw8UU1fiHmTFHbRafUMq1oqJZBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElYf+aIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElYf+aIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AABAC19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762628993;
	bh=DXJlYxbqZ8ZgePov0xmZ7Ql2xO4w6kePvtdvuS8710Y=;
	h=To:Subject:From:Date:From;
	b=ElYf+aInYPbPwXZMPkolteIdEPVRT2uLov+jKXNxExQ/76yybD5a5Sh9WKRCaR8oI
	 JuccnbD1ktFadxLiPQo7yK8M8S4n/jml4QnP3APA6xIaWU+Ia/2KD1DPwcOP1RADVi
	 s7oFZsXOtjdkSY1ENF6nh1+dP4+kb/rC6klUZJgx56Gonw103tNbCxGvVvQ0RRdbh1
	 kwZnEGgY5bvVFHJDircWPwUxEqsGyAzKM3rZ3ryaZo/2fJzot9puCQscq94hOAXCPu
	 NV0X7PwhLC7WH5Dg39Axxl5ue/zZLBX9DPGqZBoyViRZDo1l0hhFyQT43UqpnGhSMK
	 3tuizDF7V2A5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B5CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262899357.13220.16879630009571485351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca617493c8689700601625e1fa8849fd4c99dd67f19c94f235aa1ec05207811f
Date: Sat, 08 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762628993
