Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8015D8F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769993034; cv=none; b=E+bFk/Yf7LpzVNrUWQgOyoNmwO9uaTOUCz0voEjiwlBS6B92DR+IuNbYjeq4aMAywam+lLC7XgE3mvtMM4DngFKSLJ65oQWEUPEKpFmww0l9XFccLP5CUDcVEstKO8zOX+l9oMeIPeknNcuUpahkw0lB6KLCroJ0ZIj2/vzXqCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769993034; c=relaxed/simple;
	bh=59/t90msEB2LP0iWtjBr8lpxZZx3PkCbgOW/zXPSVdc=;
	h=To:Subject:From:Message-Id:Date; b=Hqy8UVxcIi91a/FFwVGOsztOG1tiUMVF8JEmZdTyteyn3fRDlpjrWFTbobUYyjJ16fHMHNC3h55tOyachlKb8GmnNTP7mxNV/vKaPJbYJrmoWYma4IcuTCIe6Vz68ke7dAKFXNLeTGE09CXgDNri0tU/WoYCoYTi979SJMWEwWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fENRGPkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fENRGPkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC44AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769993033;
	bh=59/t90msEB2LP0iWtjBr8lpxZZx3PkCbgOW/zXPSVdc=;
	h=To:Subject:From:Date:From;
	b=fENRGPkqB5Ogb7ELKYBJnquDC+2j6dQ1VPDkTQv4muyGUuQvSk8FDvPgUAiT+Qi6+
	 kPsNXzG7NKhvLjdjZ9puW0X6isDLYEzfvZsksnHclrjZokL1LFD3lm89Kn4i2d8kT2
	 p6e0U9qq5yn0ETVpvjjJ6NaBFFZHxHFJh4UxTkC2BdP5yavokJmTQ38ItPL0xiEHJE
	 /20YFp/YLoRB/iHFOIFae+nYQUnHce9gqFil+PmZeYOdpQeBBkfxZ7lq/ijX0fVkN3
	 fFax8WBI+YlYaQk/qVFTYLsddYl3jHkK9zFYKvMZ4KDd0bAgAPsPIeZ/nX2joZlfZo
	 lR190n9Z+DphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EFFD172AA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999303360.9890.4698082867278565660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8997194e8cac6867705a09123abab86b7d719c7ffe11b5c5a424e39cf5ed2b3
Date: Mon, 02 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769993033
