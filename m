Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A8F17BB6
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751933394; cv=none; b=sDsYhbuXlJAadisGHz9HXDGnwITHzL3uePX8sKjeujNQEYa8ZcLJBXI6ua69ishgykt+CpyfjANDzONAMVY7iGHV+qYM+oorEClzL+hgcVHqqD+4PnAHJjXiXFRT1hltKRfkLnGYmASoTVcthW1WUzcp6MRk5XYaRQ8hJ7JX3rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751933394; c=relaxed/simple;
	bh=0T2pfOz7bh5VnBtfkNJOwV8CaXiIuTD0zPAHxs7J6AI=;
	h=To:Subject:From:Message-Id:Date; b=ikGTquF15Qa5HVdHwhEA0Mtt0u0K4+mACx81Xrk/u0Mx1TiLGUJcFvA+yVcu5ucHK8mkSu0VzA/ptZOS81h2w5qg8fBx3gCypRiAMAjXZ5dOqFq4UdyKdH29smDxhzKCq7Dc9VCkYTD10GPS1o9VaQcHXN39rUg33Pp1RmKQpLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+svuoST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+svuoST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2C9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751933393;
	bh=0T2pfOz7bh5VnBtfkNJOwV8CaXiIuTD0zPAHxs7J6AI=;
	h=To:Subject:From:Date:From;
	b=K+svuoSTHXU1uTWHYjaK48WQvOhwMP4YJd+B3oHRs/QlQoNVBZ10OkzZknOHuN+F2
	 VqsF9M8GIKSm2xijpZXqIoEvgwkbw+J1OJ2oMV5Fw38yhEiR9zqgq8h05RPEx/3Y9f
	 9XqmcFZeWXyqGQweAjsxa+Ig5j+FUAZbSJVhtjbaEM/2c1OCcFKes6GAzmA0RcadrQ
	 2vEQqTqe88JOs6+dRyk7L462ASozLt43oTMT9dOSRjIyeUPAqRkEawumOvAxuvDpX/
	 /FP/COMrsNviOyr33GnyUBhP2kba7Qxof+duh2kWImR8C4gwleG/hQU4L07orJ03EG
	 thE/kSQAIqcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF7C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193339357.9844.7780016567885282597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757ae9d1f525cb71cae7effc7829d3352f03c78f4229e193e28113a54e7f79c1
Date: Tue, 08 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751933393
