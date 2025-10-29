Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CDB37A3C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761764994; cv=none; b=BeOpYWQEwOHJX1gfijtuJiOfk+3G8r3L3CCKKCXm9Jzy/yJDCllFISz3ntQw/PgwWNSvWJnD9nlEcQ9fb2WNXcS9nq2vb0+rISvXT+i+Fhz+SvmePQR3gENk7FiNee82/OLYinF742hR6yLVOHuiCVuMaPgqqUQfinTTLil6AJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761764994; c=relaxed/simple;
	bh=lvX3joHLw5IihEEJWYUmT7ZmrATwwS6rZnrIpxgAr2g=;
	h=To:Subject:From:Message-Id:Date; b=So34VpaHpITlPWaT4EVRXxEyTOBFUbI3P28Bbs9U4oy2kLUqldxCHB8rW4p1k2eYh6VYQGujTOsZzfqv3z1I9sXYO9T4dnsGlZX44Emzw/ByIP4rD9aA57aT9Ay47T7EOZBaU00JVr8FTcHjViHDgKAN9CXerKzeWAztVVd58bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7oIJ1g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7oIJ1g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761764993;
	bh=lvX3joHLw5IihEEJWYUmT7ZmrATwwS6rZnrIpxgAr2g=;
	h=To:Subject:From:Date:From;
	b=Q7oIJ1g/+Ohf09dYsM+cfueq+9tjeO5V/3jCQILKVLjtBsbD/ctd2wHjpzKflP6oP
	 5YrH7EnOW1vQ7aO+UhIczcVEpIJJwxzKARxu8Ixkr3/eymRvcaYKSco9QGDEbMpth4
	 73Uyjme1/LSq6sEQvK18UlqJd8WWy84i9LHWTv1oVsDEazJxlyVt1L+L28x3gDEy6P
	 sv4T9t4JsFL9iN7LQQKHyye2F0wUqFacrbAUDd7usK/+RTGGAt5cqMILcOEfZKnGBV
	 7Qq+YhcXRdbPEf+0UOrLfHf08++482JMq6Nzli20a48nnVFDSGES/W3bPIdi3xVuWw
	 FDILzSnlVlTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC5CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176499361.9530.13522675860631966443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97042aa880e5a8f0b314a12bb4c31e250269a43c524cdbd71b40f52b2d249d17
Date: Wed, 29 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761764993
