Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA10279919
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745396994; cv=none; b=a0OgGuWqzvx7TJ8MNt/JRM6Pk4p+gqmKepYvvHws/JdfngvcjMuOLK9mSWTlNo5LCsljvoVCUMP1EK2qv6KgGGv5z9CCoXTP2wX1Wt1GAl8EOQvk3jZDoYRjgByYrhMy6d7FTY12P/gOfjW0qUn0MTxD7Y9CXj0J2XW5KKG+gEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745396994; c=relaxed/simple;
	bh=PQd1WfO56e09RoWbwKgyYTBKVMttsEOqWYLn25SfxGQ=;
	h=To:Subject:From:Message-Id:Date; b=JsU7AfAr8t3KRE38gXw0fbAZhJ3sMsnN01dnMapxV7o/yIQB8y+6YuQzTGEtc1X6z5Uk1r/bwrfcDKeIvAgMwC4cu9WR2PVBCUSA7VfqTcK9HqBleA48a2xiw48+7AsF+wRYstEAUX9Exw0dmddaW8rCw4pJIq0xUOoXA/1kTsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njhNjpnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njhNjpnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F7C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745396993;
	bh=PQd1WfO56e09RoWbwKgyYTBKVMttsEOqWYLn25SfxGQ=;
	h=To:Subject:From:Date:From;
	b=njhNjpnq/ZHOd68lJEYcJpBSJFSUb0JR2pWbxs89+UBABGMAjZ+FvN0zyoJsGp1w8
	 ft4u2dCc+BrqIQJZIUDT1S9twfdVAI5DBC+1I+JTCTW6OEo4c7UJMro+/gf6I8MzJN
	 knu/hsejpKQ8oet8NdIzOtrHV0ju79D5XFn6ItMS0yuocs80gb+ecBpSvkQ7VVEz2R
	 nkGaDP5hBuELQ8uPrtFU2fycULzmKQYt7fRo9cst5UZTrtspGO4I810uiCzFBMgCXR
	 H+XE1KJ+AaKTa4SxZIhUl+q9bAMJ4HL4GmqoiOE+p+/Ubyx8pfJnqkMGd4/kSKMbzz
	 dFPRo6Y1foNZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ADC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539699359.7045.7621456752027608136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f59675beb60c59ae043d9cd2ec839e21c561bfc844f17c1e10c9e5b4a5379cf
Date: Wed, 23 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745396993
