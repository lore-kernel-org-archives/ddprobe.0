Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663C2576F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719759263; cv=none; b=WFG9eM9TtWi92CokMHXq14kLLSak0tndwp9QajkzPQVuIp7l6oMe6lN5kpVpv4v0sV4P5d83K2yiuw8yi5la+lZxpN/OEtM5ESeG6XB4p0QJTzFIxeeb3Amct4NpMgP93acto3hHfyypgXVI+7pO/FhVe5/m3VriYxUKPi4XsXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719759263; c=relaxed/simple;
	bh=lOX20UbhVo4269sF8f8uKLx3hsUZ2F/Ezqa9SKyvk1k=;
	h=To:Subject:From:Message-Id:Date; b=uKEUXNC9Y+KVNIBEf5LIouav0Fvha2JVJdbXWbsCI3VM6V9zijsftPV98t41CIF8+x3D1aWkynM61y84hN2cTgysxnAfEF8Tp7Bo2JRL8SnoazfO1h2qBGupT0ctNg1pOaQLngHfgfDqO/CUtT5nPQSzVbb/Ps96YtAV4ZEB62w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3sDDBWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3sDDBWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09E1C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719759262;
	bh=lOX20UbhVo4269sF8f8uKLx3hsUZ2F/Ezqa9SKyvk1k=;
	h=To:Subject:From:Date:From;
	b=c3sDDBWzd4GAlViR7gpTXKHM01X3eLU1IbcyrF0IwuCC6vROlyaeTN+AEY6hwe0hi
	 xJ9oBaK2RxBmkNIfdmmU5L+uIX3ysKcAWbHswDxYyziRy7Ax1QU7sTZhLey89iCzxE
	 GGyjNjmdjFncb8jr/9nYydleowV/yTLD+B70urfqHzGIgaLmpU/Tpf4GteQPNKmakE
	 N3p5O70zdQROS3rQEPywz+8oodP58kHpkYuU2gukbuEq+8W/rnxionjCJHSaJBjjqe
	 zCXrTwUHcv5O+/BNEFqcL6nsSn7iICtZ1DdW9TE5+QSBDb2pakjRG7UERnHR9TpvZO
	 Dw3yXLW3M+EoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC295C3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975926276.13531.15835423889282693818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b61284a129549323021162e6167dda586b413f460f32b0992396b23004330c
Date: Sun, 30 Jun 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719759262
