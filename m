Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AB61ABEB0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732278354; cv=none; b=UB5kyvVMidcxi0z3lv3zGgC/HWsQj/jws/POQXzY5gu61/UZWXLEBp6jcTchoZfmo76sA67cnUSh9OGBXm82F9/5xdC1pPda8ENYmbXOpcoE8jJ+0HVOrNpHmJWxauF+ctdJ/3Z4gyFJxU/MWHKJXygLZcX6O8308AdwJDdkNaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732278354; c=relaxed/simple;
	bh=PomtqWjzHDycCca9L0JWzfu9wgsJ6ufAdy7tzdTBTeM=;
	h=To:Subject:From:Message-Id:Date; b=Rd/vTl8sWn6CiP+BMamnLhF7YKsS3K1ssYXO4oAfAbiOYJuOraYUgzCB8DPmwm440qFOGSwcrr/dUR+eOkLjxVNOkyq22hvbZgM97uM4PbHiUBuXFTXHYYoTyPgLhZeXLD4h7fnN6/o7vg+6NB+z5o3jmdM3QFoff/Mj1VlCwVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpADxoCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpADxoCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DFCC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732278353;
	bh=PomtqWjzHDycCca9L0JWzfu9wgsJ6ufAdy7tzdTBTeM=;
	h=To:Subject:From:Date:From;
	b=DpADxoCcNIOv1uu4y7uemuiS4oQSCHgsNPpbhg+JJOkEFG2H40uwP7bggW/27Y/rF
	 h0NLjrzoiGIPe2PLDs6LFLUQx3pXSKFdmOSdr/OzuefMtYsR9Erxty4yWU/CaQeWyy
	 hqhKaqFnhiXrrfytHCzBaxUVsl99LD4Wp6M4MJNx8dtD3EM8UxaCL/xY6vhK6vK6h+
	 3+evcsOC63ha2J6FwIox1BsAuF+TK0zNuMHWD5cVyz6gFc/Dt5zw0ZopCvY7zT+ThZ
	 AWKsa8fc5LFcsoZ/t0fZQ/30mGTsQRXOVfI6c4AGbpw204l8GYgsLzBONQejdWRcH/
	 9OTD8Q/jeds9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF0DD75E30
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227835364.17587.14630617170391906702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee0a0de4c73d6fd44802be048b1466b26fa163b9eac14603b5339d9b41e2c44
Date: Fri, 22 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732278353
