Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEF3DF5C
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749172194; cv=none; b=BKwfeeJyG6yowLVNVBVoKeBLiDMEwr9A08QsMsFnITi6zfK+y9lp2A5DTfw2zX16FT47vJccY23pQhqyccFmsk2ODqvOfkoeH/2dJWEWnGQ4h+GZqDZaxL5SJNyeG9UW4NKBaHCWp1rtd7xMH8H38s9crUNdciVCBAzAY8xEc0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749172194; c=relaxed/simple;
	bh=M4xCcaZbZsQvQKzmbtDHg3Jvm1SWlnD9PFMX0UXj4ak=;
	h=To:Subject:From:Message-Id:Date; b=B93jm50MMVcOqXvT1YZYdW5hBRdUWDvVehS+OtqhA0n8ZTLeHfRRLk/nPwVBr9ScBLm5xsyLeTIXyqPhQypHD+RA/HzJWRzjl8m4QyPgTjW+nisb4AM1nSRMTjXcwTzPY0egM1InwftSmq7eQ9WWCcMiDQzEn9B8nn7SCnsLkbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/eas6Yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/eas6Yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749172193;
	bh=M4xCcaZbZsQvQKzmbtDHg3Jvm1SWlnD9PFMX0UXj4ak=;
	h=To:Subject:From:Date:From;
	b=R/eas6Yj2ejFzyUpibM8w+9AGb1XMJpXSdzDS9KAI1ZsSqh1knP5jfHT/QkSCSNcZ
	 p4LS32GOsL28CCrP2aRswB1rqKGF/1MNjtyNWX2CXXTb0nqIJXVWxICnu2G5wt7+Cq
	 HHvIn1p6yIU3bVP4IiOvIhk9bFH+B/RXm2YlyAB3OrGz6/yV0dWo9y+V+pxEAcRu6F
	 fJiLZb7EEJMJjTEdldo+aJpfOCVlMMKW/t+j9yCVdmHLXiclgDE4ZBxVfUwjk6nJdL
	 z26b4HokboX4YVIBqW1ghmERqsFxvD8kXwnjK5wMRlRISibOjrdv95CpYKiDwVGwmr
	 wvMbnbGYmlsUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD25C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917219357.20351.1312917413071211652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ca44f92f6217e18e95b0bc23558d3623891929f008c7b8f8119105d38896fe
Date: Fri, 06 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749172193
