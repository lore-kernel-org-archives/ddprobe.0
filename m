Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2751B2AD00
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777441654; cv=none; b=Q8XIUGuZUEUO98EPWt1SGDjLDKU8gOgzK0zp4ZCoMvsXNxxez6oBAUAGpyjytkPX6TjfIV7VrPmKuCWDl8iuCCME8ExnrGb4waHAxJN8S28S/GiBaXN8xQlc2cXyT0EItJsJEBB47Vgrd0LldcUY2PSUscgd+4BuWXmWLtZfSU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777441654; c=relaxed/simple;
	bh=2QnM0y614HvDZBQoflkFMx2YOdBdKz9vQgn0y3A/rsQ=;
	h=To:Subject:From:Message-Id:Date; b=j/Chm92cL9p7OawdHDLAj4GeQp/UQ2+7GJCFeDpwfnO4NiyUSyg/1XO0rG3tr35jX38F4S+cbDl2fMksX25OQmQJI5+Ki8g1jUypMFhw7mASFcGV69TUiZNUaswl+mhK6rcbUYhUXBkBV1gxYM2D78lYScMt65XxUpcBZgqN2fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0ILJrQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0ILJrQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0ECC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777441653;
	bh=2QnM0y614HvDZBQoflkFMx2YOdBdKz9vQgn0y3A/rsQ=;
	h=To:Subject:From:Date:From;
	b=g0ILJrQs+Ach2xYJrj2HYmC2BGOwN5l45m0A5iGayhYDup/SHnBw98lyQDdTB4Jab
	 n9Lc88yEzdUiKfoCYTzFm/OzTTs2A+D29Y9rr5fMA8bpLVwonURFi1NRwesBBbenGy
	 10CiLdWieFAgz02qRavM4mQWIu9hBWDOF7KDnAw73ryEZox4y3p31/fN/hE6owXQvw
	 Ndx5Yv0at0+cxV/7IPfNXmhfVL3Y+yN7GdSTWwqGDzTPmM8SSKICedv+q7RcgzxAQl
	 od0z7tn9nAwBBWy85WJV+0X9QDWOtQe6l+kQj7MQ7XreE8n5no7A6smdONTo51/svq
	 GUKElPVDoJQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6C8FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744165368.15998.16035441447449841090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3348ad785b7c783442c7e5f78b097cf61f0aaab37a6e342ea8f5554719b62908
Date: Wed, 29 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777441653
