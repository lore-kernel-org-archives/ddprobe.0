Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2942279DA6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769134434; cv=none; b=kn/Xxvl0/cSoh0b8QGvW6lih46BtvRH5gCXj9tcCXg2W9hPxcjamcwrhJwMsIskaORCs4iG9ZQ3KXG+u4efLWN1Rjf786SDmohWBFLVXfzhHW7brK3V3vIWvX384iLugOQNo5pcgo3VIaeAOGrPxLdt3OYPYOONQzkL7jM834sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769134434; c=relaxed/simple;
	bh=d9SZo7aW09XTha+AeV1Tqf/iIMnWPzvn9qQQ/uHsZIU=;
	h=To:Subject:From:Message-Id:Date; b=huMs/78YjbCtrLJKJJjI9APvSBAq2hC3oCwlGxJtwyeyl9LY2Mh2+5zV8CuAl3zRHVvwNr34Hm/N1wIMmJx9IPbvZ+e24jrc744yYojGtfsXvgTPRf/xJJtD9eOaZBcwxwQpIFmW6UvdaE6iEeORQ9p7RfzeO8+1GhiqG1gv2QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ceuf+0nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ceuf+0nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC4DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769134433;
	bh=d9SZo7aW09XTha+AeV1Tqf/iIMnWPzvn9qQQ/uHsZIU=;
	h=To:Subject:From:Date:From;
	b=Ceuf+0nzds9AXBq5bc1XiyXNV+SqHOKBJLYGlH+G26zx44fVVt43sDKLc5Ycdew5r
	 9BPGsbpz1ZgXi3Tn1O/bgn1CMvNMvaO+mxMm80IIrkD3Ps4MvkZNrtsd8yzxRicqNS
	 Wf1sm2ED5vglSJMwaPK6//ZkJ+1IJof5aOzqF3eTQHZQXdv6vQBr6VxRlF9J7uwoUS
	 NnYRPU+S8cYPX/qJctf1csBfJAeSHfMmGz+UFMSrZaYF93hqa43tUfPLxTYe1e4jra
	 xGqzikbk1gOKgDRvnFSusDljmZEt1lgBXPGR27Xd3JWDug42uy8bR86eZ9+EjDuhRy
	 ys97053c72Evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3A1D6CFB0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913443362.16134.11367044229862681666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42ba2b61e0d928988e0f4fee862b165bd82ebf03c8d970e4449e7413899d556
Date: Fri, 23 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769134433
