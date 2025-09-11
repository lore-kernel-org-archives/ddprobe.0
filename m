Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298632DC78C
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757621394; cv=none; b=St6VDYmWWw2pO4n4IiNRO+yg8ZTTdSvOJZkr3TUj3i9NjNxdGJLlr7bSrprVKv1W0OjRJK6wFpeoD+YnUlXAskIX6Ww+NiXL68HNlwTFeOjbzXaAMRbdzIjE9tgINVtIbknNzi0T8NEspJTgDd5KGzKm4YAwPsa8Qs0EjN6L0Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757621394; c=relaxed/simple;
	bh=DojjtL4673CpKrrmIjlc5XBBf2GcJWT1Jf8OhBWFmwU=;
	h=To:Subject:From:Message-Id:Date; b=RAdm8HELvqsTYvD8+WHnTjayxaZ+DdVcjT0vTG+668s8mfSTxhvXHwn7fjSkDiyd3GEyIx/eIXCETqiZt08OLTLT2tDlC+nJEn+b5CeLbVJWkYx1J2rQ1yYDpaLpSIk98xNdEmPwA2PxmPCufsuP2RwUL49A66pvVBuQOGeHuaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf+o5t+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf+o5t+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B2C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757621393;
	bh=DojjtL4673CpKrrmIjlc5XBBf2GcJWT1Jf8OhBWFmwU=;
	h=To:Subject:From:Date:From;
	b=Jf+o5t+w60tFvCcCeO9YX5pQiWemzGAdLidi7D4J0FGOIRvZXW7n36H7vMm1RMBip
	 vCJqPx4qWBK9hL2Ft3XthlUbfWJg8l0MJFjpwp5/Nlv6yIWx92W75zo/0beMMxdVM6
	 klXdeqOLGUXJRFmcbzSQbKuVSl1e292NtQ2+FdOeKveHWGrmvFQvez/DN2AQHidTEr
	 e8YZm8YVycL48sgftaChoz2ScjAWqjilEEwQbec2LwHUGXNUb09+KNdbr1xDnaLY61
	 DScR2b2O/jgmgr49YhyjS8d7TX5gpOc7EdUOvdp6AHk+dNEgPFHPaLXYY2T0JHGmBN
	 GayFTzCwKxiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD82CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762139357.20507.6011653047617065864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2dbfcc57e57ddaf8165fa8ff6d86c02f4151b1196d5f5682e90298a99fe46b
Date: Thu, 11 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757621393
