Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1DE47124F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786717834; cv=none; b=KWfK8uWa5X2BOYX10mbZg8GMiof2+Tp8mdq4j3llfh+086Rk7UNpNfUEhI/33FkpPB4T851Z1/07YTPxR5warJXcxqngjlTMsePxnaQBCEwrmqWa/jkHdjjm0hFfDx+203njZnsGlMYziNEJpnvh9z7okayENvmHkKY7fa1koBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786717834; c=relaxed/simple;
	bh=LJT1gZ+a6fRvt7o2LkQ4KQa8MpcDGaknM9Rv4DKS0K0=;
	h=To:Subject:From:Message-Id:Date; b=cpxK+J22RCvNjxObreaYSoysD5oBRmAyxwc0UNGgdr1nXRWSOmZ2wuRkTEJb38yTAhowJwa+0ZaZ+5bbw2l/K5PhIGRefxu6QoXVd/OZJEoZ9T8xtjnabxYFLA69KaxGGdhq/4QqN3FMb907wmk5s1VYckIdu/gZI3O2Y/UAGGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiRglAAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiRglAAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96DDC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786717833;
	bh=LJT1gZ+a6fRvt7o2LkQ4KQa8MpcDGaknM9Rv4DKS0K0=;
	h=To:Subject:From:Date:From;
	b=fiRglAAHVR0kiFveSEyCquszpgf9RcuiWDAQjN3ghIj+iSLt20QCSUAHIuquKQ5q8
	 bf7UDAzjg2WHWk42JPExiQZxoN8DvGT3h73bPDB18iYtr34Cr/E8uJq1q9OEkLi0nT
	 Z1nTkQ/CooU7ZUZWfME3CUtzcm/1Gfo08HnkGnGNZLWvfmE9d9sl5Mlo8OyV2rbcNs
	 4heeKl86l9GQYg60jPOi+tGr827+QOkAm0eaZap5IznvHaKfKp6y+gUcYTNL7hzxc6
	 Oh5Rfn/HWy72YYQi7AunuXQ7axAST8zp4rz0VQqgCGsNA4W8cnR9gMD/KLkikgM66F
	 xuLlS+nQU0QXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A818EC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671783368.6865.10681118150094889080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f751bd3487d2d4e4eb0a84d3251327a4aa36c91c367226b33b2323bee70eca96
Date: Fri, 14 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786717833
