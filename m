Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5773725B092
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784770174; cv=none; b=imANm42uyWKCPMQssIIJrCj4i4lL9+TCX8aad+iD3SI6n+ozcXYoxFNrMiyWjcE3N6/HyHPOOkji05VVf5yVVFhPHBIyNYUypBCorWcmLR3KaWSUd6aROVsJpcBVIDfoYdMOqHKLNquuXazRyuuDHqUzBiKSTuZR83k8cLNUiW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784770174; c=relaxed/simple;
	bh=jijjEbFqk2ro+IHXTQicxKbdZe3Mo5MjNbFe59Xu10k=;
	h=To:Subject:From:Message-Id:Date; b=EXbLb7neksQRlzhnPyrpSRoCELlu+G3mwHOhkZ7NSuqg9Og2qpeSpvvjwoHpxGVmMxYfL4Sro05lXCQc+5b+9x4DPRZ+WLniaqwTXNLYMkGIA3H8kt2cgyG1S9llL96uPl8dOfhoQRtjmlO6PJyYrEm7SBCYlIoAAhCiWriUp7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdtFY8AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdtFY8AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFF2C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784770173;
	bh=jijjEbFqk2ro+IHXTQicxKbdZe3Mo5MjNbFe59Xu10k=;
	h=To:Subject:From:Date:From;
	b=tdtFY8AHZwxoziLsmZLntb5xqibG2IBxDGagON9h2fZIObGL+QBibT8vDvMEgGFw/
	 rpAHcANdrYPJVkFZrb5EowTVhT+Uns0JsWPhqRBy5ZwyQM7T+wpBOd4ustTSvzOk2k
	 LyWO+z8hwkPbHtfJ9nnG40Ey8CH0wsFPH0A+MGYJNuwqq/JmjyUkQ4C+4ZiHjFKo3+
	 lBeDmAU9r9DZ2TXSxHG7wGa0UYuKrbkStogpx+pMOiO4Gv17+HBdLQMSWDz068lKU8
	 WgtxTvNjdXXOgnfgchu5T1CN84VwQTu0bc9WaLwkj/Api9GYoeQLqFtdb94czek9Vn
	 EB8GKe9pZjZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B315BC44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477017369.6554.17832750154133204790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618cea1f86ce9664da73d90cb1e980b6ac4861e7121b37c40b50f00fc5d77e6f
Date: Thu, 23 Jul 2026 01:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784770173
