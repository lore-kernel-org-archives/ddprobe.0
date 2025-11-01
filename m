Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D93854723
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761985794; cv=none; b=gBi3+nVhtryMMm3sOSlTx6O+xNyLliL//HUd9nuC5PkO9brTP1XoDaKD44CGis2wXOAyL62SH9UklEBOt4WQnXFKiIB6CHX+WLV/NWoAZLIwlZRTcSuT/zlogeEHg6suoEiW9qkg3Z/w/E5OV42dTvb6ltYWvfWjcq1rm3VHsiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761985794; c=relaxed/simple;
	bh=1xAuzMja584vkaj79t4P95/6exU8gwxc5hr86Jdi8NI=;
	h=To:Subject:From:Message-Id:Date; b=MN00rSpvrcu6WysMdcpPoomT9zPqJ9gMhB5ugsuVxI9TdkK0xvFrbUVswGHPVWBW4wdzGXT1RUFrrXek8olyt+RMHsM8MTapbqeNkcvIxj/DRCAt68JYbO+akcvDE8c/7HLholGrAGY1OgdTBNJBY0km+YuU5ZzhTHqMU/hbyh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVxmijOU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVxmijOU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F74C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761985793;
	bh=1xAuzMja584vkaj79t4P95/6exU8gwxc5hr86Jdi8NI=;
	h=To:Subject:From:Date:From;
	b=NVxmijOU8WBvkdiDpoIC4WJFh38wYjsW6pxh6S/ZrlSJDRWzwrqMWTLdpxUnN26MV
	 LXtB0mTVxO3iKdLqXmQQtYqSwUiftCEONwB7kcWdEPNNM8wxDeV8fOsBLbedQ9ADNY
	 fTbJeYLOJ2BqunrXarjXw7SEL4wJ2vIh9cUu37esxPYGERR/U1xKnoiKRJMUZng7Zz
	 g9WYBpnXCAjJGOYaNkrpRsg2pTa5D3sTVSW5cRoWQAxFyGzKV0mU2wa4j7Y2XJnYsp
	 MGg8enQ2hdHvbcy19CPRfMGtVwsIZzVhHG9/VPazIDt5Ve3L2jBfIKKjVPjWLZht0v
	 y1JLPm3ynRwcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED74CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198579362.16228.2248123900843660560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fb555f029fffa15126400b1d515aeb7e8ca558f9f9d68802d06fe5c8371f87
Date: Sat, 01 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761985793
