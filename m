Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284133093C3
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769617434; cv=none; b=J6eGy+bAfxAbq8tgN0RVOrL5gMOQ/6ZrkKOzaTwecKzVkem4KmBmUQQjI13JPVpAJdfdjE4SK81bTUycyrgG6soe/iFwD3/vTHDeAA1U9SKIkRbHD2XPMoBf2Q7xPMZ+Li2gOf0IYpzQVGfKokcvW4MqtvItcTZ2mt4TBVKvod4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769617434; c=relaxed/simple;
	bh=eyrPiJlT/vhSRfI9hmFTOK/64GOZynxWmlhP7bWXzOQ=;
	h=To:Subject:From:Message-Id:Date; b=eKrFFtHHU2jkZKTJFer9HIcfr/zmRkR9XMgHbu6C0R99RCX/DL6yoysPucxpbv+CSAzDzEMX6j0qGrlCH/JVy1FU/L2w96KngPHWvnT1E88ultJIcXoJGMMVGlvJnamYHLIGbiccbpPB6LgMdifykuzNQNnNGeTnIHvNV+ONPXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dap4ynGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dap4ynGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2924C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769617433;
	bh=eyrPiJlT/vhSRfI9hmFTOK/64GOZynxWmlhP7bWXzOQ=;
	h=To:Subject:From:Date:From;
	b=dap4ynGiDo/6EGG5sd/7uh0fz17MRxYJBaAAQ2N6k7GDhWRyyBlLFl1QmtwYXAkio
	 RdKzaSDnvgPNtde3IEjIHifzcoWF9gcUp1A8wLVm3zpb4VaTYSIUum1o1qj0OkgyHT
	 BlulU5s2E0H1b/EHjXW1dZ0kttXK6WiokpXilknUe9lQpjezOijcRIrKh0mxgwBMIk
	 BAq9BQd19l9MqudU6te0OwHmU4FbC8U6UG5GUV7N7kkLm+7QnhKA0Ln+zYHIC2pGng
	 jisi/Jv1KXnD6gW2bovkt/WKdgONgT50yjiUfnoigpxjnbS+rknIDgmqmkyIhl4AC9
	 AEDquiyQef4XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F183D3F083
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961743364.14552.6372178145757736975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deafd588a8f37651db33e5dfb7d44046d7828d24121bb966194d2871f62507d
Date: Wed, 28 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769617433
