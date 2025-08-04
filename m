Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3672523FC49
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754295596; cv=none; b=Xq6/DBpWhZB/lw/jH7tEp/yOZA9YlgMCJNy6KbQRQFE/x4dY2f+Id4XpV2c+iu9y/CnVO8gftVdEcTaUoRJq/wd7zb4v43Tgfo+M4u0ckcJ26T4YhPjF0hvZrFEyO6DyZCsgXHCEJV2tMwzawh8p30yRPjpsRxQmBnQB8NTqLEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754295596; c=relaxed/simple;
	bh=e+vls1ikHLIzuxNI+DWFmFFlmixfrGLMx8ahXDm62v8=;
	h=To:Subject:From:Message-Id:Date; b=qBtq2EELR/le4wiIbvcZsesf1gr9ie3BaTlIJOTujpANk5idl4YWm2Kd8M/wDTECGqQ+MdvnnFtpdD0JitN0RhTvjjRkxRIuiWAyW1IcN769A5MMmFcbeC/rhsQjLBY/9oT0MAMH585kisegwNbKSB8uMrShAR3arbcSxqKKnRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd15a8xr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd15a8xr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C41C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754295593;
	bh=e+vls1ikHLIzuxNI+DWFmFFlmixfrGLMx8ahXDm62v8=;
	h=To:Subject:From:Date:From;
	b=Wd15a8xrei9j2sJeKvbGcDq5R+3HDfRh/BC2dY+o7y+ktoR7TFfKSrEPK4UT1hGMn
	 HpRXAT39ten7pg+fYnAjuyUzDaobLdPhUSWt+KMX+aYcdgZKzP6Mn7M8i4GsLEl21b
	 kSUgD5ByJCI0Q8SOvFql32y3OeJ8+XfU3JlsdVZM3kdwKrIU/vjZX8LFlSdclbKOCo
	 /NznmwBCtDjzIIVpAtB5ULv2ZPLQuBw6RukXqrvKTt4xoXu2TOKwfw/uEwrKfaRxMe
	 092aHCf8+xJEzHbXkbOjhDmR3udhAojbziriQvMl4e5plw3LzcWLIudgT/Z58vqT55
	 cfbLBSq6CGPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036BC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429559358.28852.11764732769095811354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261dd3d5fb8ffbeb302b22c569d2a29dcffa47a71bf2e6efe31f77ef361b9ff9
Date: Mon, 04 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754295593
