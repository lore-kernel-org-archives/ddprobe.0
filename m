Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513F126F2BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642594; cv=none; b=uZbmmZMIkl0bBfB7DqPSk5mG4WksXjgXjzVFtGwdDbzFJBbSkJHUHG+byOMMGoQHBxhYKd8NNcwKOVJyP4N0n6p+UFc7QVGhqw4M0XQTD2i9kriSYAS5Ha5UpaqjPfliaNnPLEhqqVv6pZ42BHhE7jb2Kuwnm+hBgLzJlngYvbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642594; c=relaxed/simple;
	bh=RyXBp5JL2t7fdJ6VpxURDAYUjgTjNk45Zq9zMoEPOhM=;
	h=To:Subject:From:Message-Id:Date; b=lMi1R72g7wC4bgu8BQrrpR4EPm0wocMo2q876ytbmC3jbqiibfeiBNKBXoYUcT+hBQMNb4d29oC33nZH95LVW7odKbIHHZZ3wuBVP3btDOk+y2u8iyj18/gPSZB/YMq+zAkTrq0fsMmN0nNXc7r1IIWULa5chsntUd4rnIBmI1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlpnUR1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlpnUR1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64D9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761642593;
	bh=RyXBp5JL2t7fdJ6VpxURDAYUjgTjNk45Zq9zMoEPOhM=;
	h=To:Subject:From:Date:From;
	b=QlpnUR1JoDIDf1UXbxXuk5/W/MotJDztRqSpAKSV7VtMgq0t7GU3jidKbI0ly6wFS
	 VNs5SGZGN6AeXrV7kuyLN25m2TvrwMOpWIsXcvMN06T28CtOZMIwSmw4LBa57fdrNU
	 pbpUm6t5YAJnXfcTjvtwS1HfE+rd4k2Ay+A3/0KX2yylkmv8SvYp8QW4EWDdGHTTRf
	 iSBHeVjzwxWpxISLu+AokqZr7MXcDyQkTxQKHoN6hVTdErg1jiSpzjxz+kdUhe1Eha
	 Sh+m7Cp9ADl8kxU0XEI+pEuWbs1UBssMV88zf7tvdd3D015LxKiDMxz/W5YPDHdhh8
	 yYD+vHxcoMTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9989ECCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164259361.19964.18073530938933324438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477c8d838d5f2bdcb64759304f5e918004f3bdcd4355fcb83966f78db179205a
Date: Tue, 28 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761642593
