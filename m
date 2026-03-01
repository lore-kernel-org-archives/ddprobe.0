Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47119C553
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352894; cv=none; b=dxcAHduJ3+MbdFiZ2UxPLi5qcqgqIhX1wasSNu/qzrW9c3rYlaTTEVJe8v4/or6IpfFfIcLMnZt/oplCEqAteJfHCPcd3jkj0lyCTiuHw7dPHziEZ9MqcHh8Kh8IEyP19acFFztzxfLn87G4ELWCLww+eRb3NAVdlGgNyNNOsMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352894; c=relaxed/simple;
	bh=C63IpZe3OdYlFsJvBAs7h1p42+DV/d7CLEf40cMqVus=;
	h=To:Subject:From:Message-Id:Date; b=TnewE07liTb05RvIMBhYsUrkt4Y7UkmD71Ixy1WCB5frpuOFGG49wszkDDffJQ6hjpJMkZWzQaqEmePGPzge+uqhyzwioocdx9ZRVXAnOpfEs4KDwASWZGm92oQ02rOm15M1zhFKFZ9NcLGvBwqQjGTVLEt7/7j49ue9ihrGhSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9iUGbUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9iUGbUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4C1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772352893;
	bh=C63IpZe3OdYlFsJvBAs7h1p42+DV/d7CLEf40cMqVus=;
	h=To:Subject:From:Date:From;
	b=W9iUGbUAok7cIThV5bneD/rA4qEuOb2bqkREs58QFOwIr97TXM4Rb/melX3Sjamgp
	 9/v5F+jvpVEzASmH5jw75mlTPr3Xhift6b0S+d8z1JP1OdHzV9U1u6DYwXkYwjlqoH
	 Zcrm615i96zVNY3WFjVS/T7go6RozCRpfDhEZGk3e2XbCd2rVab68U6g94kBlgJPl0
	 z/HRlUDJ8U60jsWFU6e12cIDwOoBiom3dFb3SL55smnWFLTaWIo7J8aOmtqQtNrv0h
	 jZq9ndsqY2k5T3yOwoouuZPlApIzO/0BQhWkqE2RmJQ4y8CdmEjgr9CPbeXMTC2tdX
	 LI/lHfA+a2jqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DA5FD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235289358.15367.17558026745990655480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb5b3de82acef74667ba238b7880f6a77bb0a271bf41ea42215725b051d9a625
Date: Sun, 01 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772352893
