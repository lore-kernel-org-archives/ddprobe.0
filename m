Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F033A47D952
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772480094; cv=none; b=BPjKb6o8Aty2SSbYU6g5eZUVvHsD0u7I5dcld8Rs9N9qEsydIwAL2jjJLXbfayd84jsARQezzzKAT7DcY6zGMbyP1jv7mCkPO44eLAYyRVgImKR5b6vg0mmkSFIB4AbkRYxZ5uywz2ssoj9F/bI3Q+cL5I5W8mDab+0pxDZwkes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772480094; c=relaxed/simple;
	bh=ux3kCIAK6/QbMKKIEFQf7v29qjviCwxNXqch/Sg/VBY=;
	h=To:Subject:From:Message-Id:Date; b=nBdOOZ9twbiDdyuOvXdybjSJmrlc7STTMglb+QVTe5vJvitohEChbAnHBzRFyUm47YiIYJaLzHMGTiAykJf2nRGefd84wrKKtwHER6Zy4tuLn5oSBe+KMZ0G1Ru0MQsO9RWL0Y5ep9Ej38B8OSb3xl12wd9EWWpK54vigwNzNT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhrLgktV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhrLgktV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA199C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772480093;
	bh=ux3kCIAK6/QbMKKIEFQf7v29qjviCwxNXqch/Sg/VBY=;
	h=To:Subject:From:Date:From;
	b=DhrLgktVai3oGEmXivXUu+VxeCesL0rbE4km69C+1hdTqjndvVmzT/j0a6y5EFbBd
	 s4D5tD1pv2Ui1Cdgo7KWs0dJk8FgXJu7YfOXFCzHTLVN7PGNPEFVl63j64hRTaet3+
	 DeW3INzNeuZzx4/4KpKtidAxFMhwpnan/2Zovdi9SIXr4hXCAyg05VkQJatq9yzxeh
	 SPPTspri/SSPV5dMIiGK9dTCY885UbYip/6BVI9xRgqj8HmRW/UVIojttaCZp6RBju
	 6+4BaTlUt/hs93OeDulkXugoZsQUBIwBeikiJVrKRNeTS28rUGmgbutNHepFCwcy6x
	 npNbM6AjqUDvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C84EEB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248009362.14124.17276522951080261629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e56cec854e2696e8b95ca2da3c80c05eaa8081fccee384c9f34a220943c42c2
Date: Mon, 02 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772480093
